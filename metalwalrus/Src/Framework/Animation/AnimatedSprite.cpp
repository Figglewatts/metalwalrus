#include "AnimatedSprite.h"

namespace metalwalrus
{
	AnimatedSprite::AnimatedSprite(SpriteSheet *animationSheet)
	{
		this->animationSheet = animationSheet;
		this->isAnimating = false;
		this->loop = false;
	}

	AnimatedSprite::AnimatedSprite(const AnimatedSprite& other)
	{
		this->animationSheet = other.animationSheet;
		this->isAnimating = other.isAnimating;
		this->animations = other.animations;
		this->currentAnimation = other.currentAnimation;
		this->loop = other.loop;
		this->animationQueue = other.animationQueue;
	}

	AnimatedSprite& AnimatedSprite::operator=(const AnimatedSprite& other)
	{
		if (this != &other)
		{
			this->animationSheet = other.animationSheet;
			this->isAnimating = other.isAnimating;
			this->animations = other.animations;
			this->currentAnimation = other.currentAnimation;
			this->loop = other.loop;
			this->animationQueue = other.animationQueue;
		}
		return *this;
	}

	std::vector<std::string> AnimatedSprite::get_animations()
	{
		std::vector<std::string> returnVal;
		for (auto anim : animations)
			returnVal.push_back(anim.first);
		return returnVal;
	}

	void AnimatedSprite::addAnimation(std::string name, FrameAnimation anim)
	{
		animations.insert(std::make_pair(name, anim));
	}

	void AnimatedSprite::playOneShot(std::string name)
	{
		this->animations[currentAnimation].resetToFirstFrame();
		this->currentFrameCounter = 0;
		this->currentAnimation = name;
		this->isAnimating = true;
		this->loop = false;
		this->reverse = false;
	}

	void AnimatedSprite::playOneShot(std::string name, std::function<void()> onFinish)
	{
		this->animations[name].registerOnFinish(onFinish);
		this->playOneShot(name);
	}

	void AnimatedSprite::playOneShotReverse(std::string name)
	{
		this->reverse = true;
		this->animations[currentAnimation].resetToLastFrame();
		this->currentFrameCounter = 0;
		this->currentAnimation = name;
		this->isAnimating = true;
		this->loop = false;
	}

	void AnimatedSprite::playOneShotReverse(std::string name, std::function<void()> onFinish)
	{
		this->animations[name].registerOnFinish(onFinish);
		this->playOneShotReverse(name);
	}

	void AnimatedSprite::play(std::string name)
	{
		if (currentAnimation == name) return;
		this->currentFrameCounter = 0;
		this->animations[currentAnimation].resetToFirstFrame();
		this->currentAnimation = name;
		this->isAnimating = true;
		this->loop = true;
		this->reverse = false;
	}

	void AnimatedSprite::play(std::string name, std::function<void()> onLoop)
	{
		if (currentAnimation == name) return;
		this->animations[name].registerOnFinish(onLoop);
		this->play(name);
	}

	void AnimatedSprite::playReverse(std::string name)
	{
		if (currentAnimation == name) return;
		this->currentFrameCounter = 0;
		this->animations[currentAnimation].resetToLastFrame();
		this->currentAnimation = name;
		this->isAnimating = true;
		this->loop = true;
		this->reverse = true;
	}

	void AnimatedSprite::playReverse(std::string name, std::function<void()> onLoop)
	{
		if (currentAnimation == name) return;
		this->animations[name].registerOnFinish(onLoop);
		this->playReverse(name);
	}

	void AnimatedSprite::playAtFrame(std::string name, int frame)
	{
		this->animations[name].set_currentFrameRelative(frame);
		this->play(name);
		this->reverse = false;
	}

	void AnimatedSprite::playAtFrame(std::string name, int frame, std::function<void()> onLoop)
	{
		this->animations[name].set_currentFrameRelative(frame);
		this->play(name, onLoop);
		this->reverse = false;
	}

	void AnimatedSprite::playForFrames(std::string name, int frames)
	{
		this->play(name);
		currentFrameCounter = frames;
		this->reverse = false;
	}

	void AnimatedSprite::playForFrames(std::string name, int frames, std::function<void()> onFinish)
	{
		this->play(name, onFinish);
		currentFrameCounter = frames;
		this->reverse = false;
	}

	void AnimatedSprite::stop()
	{
		this->isAnimating = false;
		this->animations[currentAnimation].resetToFirstFrame();
	}

	void AnimatedSprite::pause()
	{
		this->isAnimating = false;
	}

	void AnimatedSprite::resume()
	{
		this->isAnimating = true;
	}

	void AnimatedSprite::queue(std::string name, std::function<void()> onFinish)
	{
		this->animationQueue.push(name);
		this->animations[name].registerOnFinish(onFinish);
	}

	void AnimatedSprite::queue(std::string name)
	{
		this->animationQueue.push(name);
	}

	void AnimatedSprite::update(double delta)
	{
		if (!isAnimating)
			return;
		if (currentAnimation.empty())
			return;

		auto current = &animations[currentAnimation];

		current->update(delta, this->reverse);

		if (currentFrameCounter > 0)
		{
			currentFrameCounter--;
		}
		else if (current->is_finished())
		{
			if (loop && !current->has_next())
				current->resetToFirstFrame();
			else
			{
				if (current->has_next())
				{
					currentAnimation = current->get_nextAnimation();
				}
				else if (animationQueue.size() > 0)
				{
					currentAnimation = animationQueue.front();
					animationQueue.pop();
				}
				else
				{
					isAnimating = false;
				}
				current->resetToFirstFrame();
				current->callback();
			}
		}
	}

	TextureRegion *AnimatedSprite::get_keyframe()
	{
		return animationSheet->get_sprite(
			animations[currentAnimation].get_currentFrame());
	}
}