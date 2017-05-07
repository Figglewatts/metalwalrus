#include "GameScene.h"

#include "../../Framework/Util/JSONUtil.h"
#include "../../Framework/Input/InputHandler.h"
#include "../Entities/World/WorldObjectFactory.h"

#include "../Entities/Enemy/FloaterEnemy.h"
#include "../../Framework/Util/Debug.h"
#include "../../Framework/Graphics/FontSheet.h"

#include <sstream>
#include <iomanip>

namespace metalwalrus
{
	TileMap *GameScene::loadedMap = nullptr;
	int GameScene::playerID = -1;
	vector<GameObject*> *GameScene::enemies;
	vector<Ladder*> GameScene::ladders;

	Player *player = nullptr;

	FloaterEnemy *e;
	Texture2D *eTex;
	SpriteSheet *eSheet;
	AnimatedSprite *eSprite;

	Texture2D *healthBarTex;
	Texture2D *healthBarEmptyTex;
	Vector2 healthBarPos = Vector2(24, 159);

	Texture2D *fontTexture;
	FontSheet *font;
	Vector2 scorePos = Vector2(102, 216);

	std::string zeroPadNumber(int num, int width)
	{
		std::stringstream ss;
		ss << std::setw(width) << std::setfill('0') << num;
		return ss.str();
	}
	
	void GameScene::loadMapObjects()
	{
		TileLayer *objectLayer = loadedMap->get_layer("Entities");
		PropertyContainer *sheetProperties = nullptr;
		WorldObjectFactory woFactory;
		for (int y = 0; y < loadedMap->get_height(); y++)
		{
			for (int x = 0; x < loadedMap->get_width(); x++)
			{
				Tile *t = &objectLayer->get(x, y);

				if (t->get_tileID() == 0) continue;

				if (sheetProperties == nullptr) 
					sheetProperties = &loadedMap->get_sheetFromTileID(t->get_tileID()).properties;

				picojson::value tileProperties = sheetProperties->getTileProperties(t->get_sheetID() - 1);

				Vector2 tilePos = t->get_position();
				std::string classname = tileProperties.get("classname").get<std::string>();
				this->registerObject(woFactory.createObject(classname, tilePos, tileProperties));
			}
		}
	}

	GameScene::~GameScene()
	{
		delete loadedMap;
		delete camera;
		delete batch;

		delete eTex;
		delete eSheet;
		delete eSprite;

		delete enemies;

		delete healthBarTex;
		delete healthBarEmptyTex;

		delete fontTexture;
		delete font;
	}

	void GameScene::start()
	{
		// create main SpriteBatch
		batch = new SpriteBatch();

		// create camera
		camera = new Camera();

		enemies = new std::vector<GameObject*>();

		loadedMap = utilities::JSONUtil::tiled_tilemap("assets/data/level/level1.json", camera);

		loadMapObjects();

		healthBarTex = Texture2D::create("assets/sprite/healthbar.png");
		healthBarEmptyTex = Texture2D::create("assets/sprite/healthbar-empty.png");

		fontTexture = Texture2D::create("assets/font.png");
		font = new FontSheet(fontTexture, 8, 8, 0, 0);

		player = (Player*)this->getWithID(playerID);

		eTex = Texture2D::create("assets/sprite/smallEnemies.png");
		eSheet = new SpriteSheet(eTex, 16, 16);
		eSprite = new AnimatedSprite(eSheet);
		FrameAnimation eAnim = FrameAnimation(6, 0, 0.2F);
		eSprite->addAnimation("main", eAnim);
		eSprite->play("main");
		e = new FloaterEnemy(Vector2(100, 100), eSprite);
		this->registerObject(e);
		this->registerObject(new FloaterEnemy(Vector2(200, 200), eSprite));
		this->registerObject(new FloaterEnemy(Vector2(300, 300), eSprite));
	}

	void GameScene::update(double delta)
	{
		*enemies = this->getWithTag("enemy");

		for (GameObject* e : *enemies)
			((Enemy*)e)->damagePlayer();

		for (int i = 0; i < objects.size(); i++)
			objects[i]->update(delta);

		Vector2 playerCenter = player->get_center();
		camera->centerOn(Vector2(playerCenter.x, playerCenter.y));
	}

	void GameScene::draw()
	{
		// set to world coords
		batch->setTransformMat(camera->getTransform());

		batch->begin();

		// draw world
		loadedMap->draw(*batch, 16, 17);

		// draw objects
		for (int i = 0; i < objects.size(); i++)
			objects[i]->draw(*batch);

		if (Debug::debugMode)
		{
			for (int i = 0; i < objects.size(); i++)
				objects[i]->drawDebug();
		}

		// set to screen coords
		batch->setTransformMat(Matrix3::IDENTITY);

		batch->drawtex(*healthBarEmptyTex, healthBarPos.x, healthBarPos.y);

		for (int i = 0; i < player->get_health(); i++)
		{
			batch->drawtex(*healthBarTex, healthBarPos.x, 
				healthBarPos.y + (healthBarTex->get_height() * i));
		}

		std::string scoreString = zeroPadNumber(player->get_score(), 7);
		batch->setColor(Color::BLACK);
		font->drawText(*batch, scoreString, scorePos.x + 1, scorePos.y - 1);
		batch->setColor(Color::WHITE);
		font->drawText(*batch, scoreString, scorePos.x, scorePos.y);

		batch->end();

		
	}
}
