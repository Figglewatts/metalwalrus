#include "Player.h"

#include "../../../Framework/Graphics/Texture2D.h"
#include "../../../Framework/Input/InputHandler.h"
#include "../../../Framework/Audio/AudioLocator.h"

#include "States.h"
#include "PlayerBullet.h"
#include "../../Scenes/GameScene.h"

namespace metalwalrus
{
	const float Player::walkSpeed = 100;

	const float Player::climbSpeed = 75;

	const float Player::jumpSpeed = 250;
	const int Player::jumpFrames = 14;
	const int Player::jumpAfterPlatformFrames = 7;
	const float Player::jumpInAirTolerance = 2;

	const int Player::framesBetweenShots = 20;
	const int Player::framesBetweenShotAnimation = 40;

	const int Player::maxHealth = 28;
	const int Player::shotDamage = 1;

	const int Player::damageAnimationFrames = 20;
	const float Player::damageVelocity = 100;
	const int Player::damageImmunityFrames = 50;

	const int Player::framesAfterDeath = 60;

	int Player::score = 0;

	Ladder *Player::checkCanClimb()
	{
		for (Ladder *l : GameScene::ladders)
		{
			if (this->boundingBox.intersects(l->get_boundingBox()))
				return l;
		}
		if (!playerInfo.climbing)
		{
			playerInfo.canClimb = true;
		}
		return nullptr;
	}

	void Player::shoot()
	{
		parentScene->registerObject(new PlayerBullet(position + Vector2(playerInfo.facingLeft ? 0 : 26, 11), 
			playerInfo.facingLeft, bulletTex));
		AudioLocator::getAudio().playSound("assets/snd/sfx/shoot.wav");
	}

	void Player::die()
	{
		playerInfo.alive = false;
		walrusSprite->play("dead");
		deathFrameTimer = framesAfterDeath;
		AudioLocator::getAudio().playSound("assets/snd/sfx/player_death.wav");
	}

	void Player::handleInput()
	{
		if (!playerInfo.canMove || !playerInfo.alive) 
			return;

		// climbing
		if (Ladder *l = checkCanClimb())
		{
			if (InputHandler::checkButton("up", ButtonState::DOWN) 
				&& this->boundingBox.get_bottom() < l->get_boundingBox().get_top())
			{
				playerInfo.climbing = true;
				playerInfo.canJump = false;
				playerInfo.canClimb = false;
				this->moveTo(Vector2(l->get_position().x - 8, this->position.y));
				this->velocity.x = 0;
			}

			if (InputHandler::checkButton("down", ButtonState::DOWN)
				&& this->boundingBox.get_bottom() >= l->get_boundingBox().get_top())
			{
				playerInfo.climbing = true;
				playerInfo.canJump = false;
				playerInfo.canClimb = false;
				playerInfo.onGround = false;
				this->moveTo(Vector2(l->get_position().x - 8, this->position.y-2));
				this->velocity.x = 0;
			}
		}
		else
		{
			playerInfo.climbing = false;
			playerInfo.canClimb = false;
		}

		if (playerInfo.climbing)
		{
			if (InputHandler::checkButton("up", ButtonState::HELD))
			{
				velocity.y = climbSpeed;
				playerInfo.moving = true;
			}
			else if (InputHandler::checkButton("down", ButtonState::HELD))
			{
				velocity.y = -climbSpeed;
				playerInfo.moving = true;
			}
			else if (InputHandler::checkButton("up", ButtonState::IDLE)
				&& InputHandler::checkButton("down", ButtonState::IDLE))
			{
				velocity.y = 0;
				playerInfo.moving = false;
			}

			if (InputHandler::checkButton("left", ButtonState::DOWN))
			{
				playerInfo.facingLeft = true;
			}
			else if (InputHandler::checkButton("right", ButtonState::DOWN))
			{
				playerInfo.facingLeft = false;
			}

			if (InputHandler::checkButton("a", ButtonState::DOWN))
			{
				playerInfo.climbing = false;
			}
		}

		// shooting
		if (playerInfo.canShoot)
		{
			if (InputHandler::checkButton("shoot", ButtonState::DOWN))
			{
				playerInfo.shooting = true;
				playerInfo.canShoot = false;

				this->shoot();
			}
		}
		
		if (playerInfo.climbing)
			return;

		if (InputHandler::checkButton("left", ButtonState::HELD))
		{
			velocity.x = -walkSpeed;
			playerInfo.facingLeft = true;
			playerInfo.moving = true;
		}

		// left and right movement
		if (InputHandler::checkButton("right", ButtonState::HELD))
		{
			velocity.x = walkSpeed;
			playerInfo.facingLeft = false;
			playerInfo.moving = true;
		}

		if (InputHandler::checkButton("left", ButtonState::IDLE)
			&& InputHandler::checkButton("right", ButtonState::IDLE))
		{
			velocity.x = 0;
			playerInfo.moving = false;
		}

		// jumping
		if (playerInfo.canJump)
		{
			if (InputHandler::checkButton("up", ButtonState::DOWN))
			{
				velocity.y = jumpSpeed;
				playerInfo.jumping = true;
				playerInfo.canJump = false;
				playerInfo.onGround = false;
				jumpFrameTimer = jumpFrames;
			}
		}
		if (jumpFrameTimer > 0)
		{
			if (InputHandler::checkButton("up", ButtonState::UP))
			{
				jumpFrameTimer = 0;
			}
			if (InputHandler::checkButton("up", ButtonState::HELD))
			{
				velocity.y = jumpSpeed;
				jumpFrameTimer--;
			}
		}
		else
		{
			playerInfo.jumping = false;
		}
	}

	Player::~Player()
	{
		delete walrusTex;
		delete walrusSheet;
		delete walrusSprite;
	}

	void Player::start()
	{
		walrusTex = Texture2D::create("assets/sprite/walrus.png");
		walrusSheet = new SpriteSheet(walrusTex, 32, 32);
		walrusSprite = new AnimatedSprite(walrusSheet);
		idle = FrameAnimation(0, 0, 0);
		run = FrameAnimation(4, 1, 0.2);
		jump = FrameAnimation(0, 5, 0);
		idleShoot = FrameAnimation(0, 8, 0, "idle");
		runShoot = FrameAnimation(4, 9, 0.2, "run");
		jumpShoot = FrameAnimation(0, 13, 0, "jump");
		damaged = FrameAnimation(0, 6, 0);
		climbing = FrameAnimation(2, 16, 0.2);
		climbingShoot = FrameAnimation(0, 18, 0);
		climbingFinish = FrameAnimation(0, 19, 0);
		dead = FrameAnimation(0, 20, 0);
		walrusSprite->addAnimation("idle", idle);
		walrusSprite->addAnimation("run", run);
		walrusSprite->addAnimation("jump", jump);
		walrusSprite->addAnimation("idleShoot", idleShoot);
		walrusSprite->addAnimation("runShoot", runShoot);
		walrusSprite->addAnimation("jumpShoot", jumpShoot);
		walrusSprite->addAnimation("damaged", damaged);
		walrusSprite->addAnimation("climbing", climbing);
		walrusSprite->addAnimation("climbingShoot", climbingShoot);
		walrusSprite->addAnimation("climbingFinish", climbingFinish);
		walrusSprite->addAnimation("dead", dead);
		walrusSprite->play("idle");

		playerInfo.canJump = false;
		playerInfo.canMove = true;
		playerInfo.canShoot = true;
		playerInfo.facingLeft = false;
		playerInfo.jumping = false;
		playerInfo.moving = false;
		playerInfo.onGround = false;
		playerInfo.shooting = false;
		playerInfo.touchedGroundLastFrame = false;
		playerInfo.damaged = false;
		playerInfo.damagedFromLeft = false;
		playerInfo.canTakeDamage = true;
		playerInfo.alive = true;
		playerInfo.climbing = false;
		playerInfo.canClimb = true;
		playerInfo.facingLeftBeforeDamage = false;

		this->health = this->maxHealth;

		playerStateMachine.push(new IdleState("idle", &playerStateMachine), *this);

		bulletTex = Texture2D::create("assets/sprite/bullet.png");
	}

	void Player::update(double delta)
	{
		if (!playerInfo.alive)
		{
			deathFrameTimer--;
			if (deathFrameTimer <= 0)
			{
				GameScene::playerDead = true;
				((GameScene*)this->parentScene)->loadLevel(GameScene::currentLevel);
				return;
			}
		}

		if (playerInfo.alive)
		{
			for (KillBox* k : GameScene::killBoxes)
			{
				if (boundingBox.intersects(k->get_boundingBox()))
					this->die();
			}
		}

		for (LevelFinish* l : GameScene::levelFinish)
		{
			if (boundingBox.intersects(l->get_boundingBox()))
			{
				((GameScene*)this->parentScene)->loadLevel(++GameScene::currentLevel);
				return;
			}
			
		}
		
		if (damageImmunityFrameTimer <= 0)
		{
			playerInfo.canTakeDamage = true;
		}
		else
		{
			damageImmunityFrameTimer--;
		}
		
		handleInput();

		if (!playerInfo.climbing)
			velocity.y -= GameScene::gravity;

		if (velocity.y < GameScene::terminalVelocity) velocity.y = GameScene::terminalVelocity;

		oldPosition = position;
		AABB tbb;
		Tile t;
		moveBy(Vector2((velocity.x * delta), 0));
		if (GameScene::loadedMap->boundingBoxCollides(boundingBox, tbb, t))
		{
			if (!t.is_oneWay())
				moveTo(oldPosition);
		}

		oldPosition = position;
		moveBy(Vector2(0, (velocity.y * delta)));
		if (GameScene::loadedMap->boundingBoxCollides(boundingBox, tbb, t))
		{
			if (t.is_oneWay() && oldPosition.y >= (tbb.get_top()-1))
			{
				moveTo(Vector2(position.x, tbb.get_top()));
				if (!playerInfo.onGround)
					AudioLocator::getAudio().playSound("assets/snd/sfx/player_land.wav");
				playerInfo.onGround = true;
				playerInfo.touchedGroundLastFrame = true;
			}
			else if (!t.is_oneWay() && oldPosition.y >= tbb.get_top())
			{
				moveTo(Vector2(position.x, tbb.get_top()));
				if (!playerInfo.onGround)
					AudioLocator::getAudio().playSound("assets/snd/sfx/player_land.wav");
				playerInfo.onGround = true;
				playerInfo.touchedGroundLastFrame = true;
			}
			else if (!t.is_oneWay() && (oldPosition.y + boundingBox.get_height()) < tbb.get_bottom())
			{
				moveTo(Vector2(position.x, tbb.get_bottom() - boundingBox.get_height()));
			}

			if (!t.is_oneWay())
			{
				velocity.y = 0;
				playerInfo.jumping = false;
				jumpFrameTimer = 0;
			}
		}
		else
		{
			if (!playerInfo.touchedGroundLastFrame)
			{
				playerInfo.onGround = false;
			}
			playerInfo.canJump = false;
			playerInfo.touchedGroundLastFrame = false;
		}

		if (playerInfo.alive)
		{
			walrusSprite->update(delta);

			playerStateMachine.update(delta, *this);
		}
	}

	void Player::draw(SpriteBatch& batch)
	{
		TextureRegion *walrusKeyframe = walrusSprite->get_keyframe();
		walrusKeyframe->set_flipX(playerInfo.facingLeft);
		
		batch.drawreg(*walrusKeyframe, position.x, position.y);
	}

	void Player::takeDamage(int damageAmount, GameObject* damager)
	{
		if (!playerInfo.canTakeDamage || !playerInfo.alive)
			return;

		playerInfo.damaged = true;
		playerInfo.canTakeDamage = false;

		damageImmunityFrameTimer = Player::damageAnimationFrames + Player::damageImmunityFrames;

		Vector2 toPlayer = damager->get_position() - this->position;
		playerInfo.damagedFromLeft = toPlayer.dot(Vector2::RIGHT) < 0;

		playerInfo.facingLeftBeforeDamage = playerInfo.facingLeft;
		
		this->health -= damageAmount;

		AudioLocator::getAudio().playSound("assets/snd/sfx/player_hurt.wav");

		if (this->health <= 0)
		{
			this->die();
		}
	}
}
