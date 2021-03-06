#include "MetalWalrus.h"

#include <GL/glew.h>
#include <GLFW/glfw3.h>

#include <iostream>
#include <string>
using namespace std;

#include <irrKlang/irrKlang.h>

#include "../Framework/Scene/SceneManager.h"
#include "Scenes/TitleScreenScene.h"
#include "../Framework/Util/GLError.h"
#include "../Framework/Audio/Audio.h"

#include "../Framework/Settings.h"
#include "../Framework/Graphics/VertexData.h"
#include "../Framework/Graphics/Texture2D.h"
#include "../Framework/Graphics/FrameBuffer.h"
#include "../Framework/Graphics/SpriteBatch.h"
#include "../Framework/Graphics/Color.h"
#include "../Framework/Graphics/FontSheet.h"
#include "../Framework/Graphics/Camera.h"
#include "../Framework/Graphics/TileMap.h"
#include "../Framework/Input/InputHandler.h"
#include "../Framework/Util/Debug.h"
#include "../Framework/Audio/PCAudio.h"
#include "../Framework/Audio/AudioLocator.h"

#include "Entities/Player/Player.h"

namespace metalwalrus
{
	Texture2D *fontTex;
	FontSheet *fontSheet;

	FrameBuffer *screenBuffer;
	VertData2D screenFboVertices[4];
	GLuint indices[] =
	{
		0, 1, 2, 3
	};
	VertexData *screenVbo;

	SpriteBatch *debugBatch;

	MetalWalrus::~MetalWalrus()
	{
		SceneManager::clearScenes();
		AudioLocator::dispose();
		delete fontTex;
		delete fontSheet;
		delete screenVbo;
		delete screenBuffer;
		delete debugBatch;
	}

	void MetalWalrus::start()
	{
		// create audio device
		AudioLocator::initialize();
		irrklang::ISoundEngine *engine = irrklang::createIrrKlangDevice();
		PCAudio *audioService = nullptr;
		if (engine != nullptr)
		{
			audioService = new PCAudio(engine);
		}
		AudioLocator::provide(audioService);
		
		// initialize inputs
		InputHandler::addInput("left", GLFW_KEY_LEFT);
		InputHandler::addInput("up", GLFW_KEY_UP);
		InputHandler::addInput("down", GLFW_KEY_DOWN);
		InputHandler::addInput("right", GLFW_KEY_RIGHT);
		InputHandler::addInput("shoot", GLFW_KEY_X);
		InputHandler::addInput("a", GLFW_KEY_Z);
		InputHandler::addInput("esc", GLFW_KEY_ESCAPE);
		InputHandler::addInput("f5", GLFW_KEY_F5);

		// load fonts
		fontTex = Texture2D::create("assets/font.png");

		fontSheet = new FontSheet(fontTex, 8, 8, 0, 0);

		// create screen FBO
		screenFboVertices[0].pos = Vector2(0, 0);
		screenFboVertices[1].pos = Vector2(0, Settings::TARGET_HEIGHT);
		screenFboVertices[2].pos = Vector2(Settings::TARGET_WIDTH, Settings::TARGET_HEIGHT);
		screenFboVertices[3].pos = Vector2(Settings::TARGET_WIDTH, 0);

		screenFboVertices[0].texCoord = Vector2(0, 0);
		screenFboVertices[1].texCoord = Vector2(0, 1);
		screenFboVertices[2].texCoord = Vector2(1, 1);
		screenFboVertices[3].texCoord = Vector2(1, 0);

		screenVbo = VertexData::create(screenFboVertices, 4, indices, 4);

		screenBuffer = new FrameBuffer(Settings::VIRTUAL_WIDTH, Settings::VIRTUAL_HEIGHT);

		debugBatch = new SpriteBatch();

		SceneManager::addScene(new TitleScreenScene());
	}

	void MetalWalrus::update(double delta)
	{
		// toggle debug mode
		if (InputHandler::checkButton("f5", ButtonState::DOWN))
			Debug::debugMode = !Debug::debugMode;

		SceneManager::update(delta);
	}

	void MetalWalrus::draw()
	{
		glEnable(GL_BLEND);
		glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
		
		SpriteBatch::totalRenderCalls = 0;
		
		glLoadIdentity();

		screenBuffer->bind();

		context->clear(context->clearColor); // background color of scene
		
		SceneManager::draw();
		
		debugBatch->begin();
			// screen coords
			debugBatch->setTransformMat(Matrix3());

			// draw overlays
			if (Debug::debugMode)
				drawDebug(*debugBatch);
		debugBatch->end();

		screenBuffer->unbind();

		drawFrameBuffer();

		glMatrixMode(GL_MODELVIEW);
		glLoadIdentity();
	}

	void MetalWalrus::drawFrameBuffer()
	{
		// the color of the black bars around the screen
		context->clear(Color::BLACK);

		glBindTexture(GL_TEXTURE_2D, screenBuffer->get_color());

		screenVbo->draw(1);
	}

	void MetalWalrus::drawDebug(SpriteBatch& batch)
	{
		string debugString = "FT:  " + std::to_string(Debug::frameTime) + "\n"
			+ "DC:  " + std::to_string(SpriteBatch::totalRenderCalls) + "\n"
			+ "FPS: " + std::to_string(Debug::fps);
		fontSheet->drawText(batch, debugString, 0, 232);
	}
}