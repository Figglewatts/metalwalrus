#include "Enemy.h"

#include <cstdlib>
#include <ctime>
#include "../../../Framework/Audio/AudioLocator.h"

namespace metalwalrus
{
	Enemy::Enemy(Vector2 position, unsigned width, unsigned height, Vector2 offset, bool isHard, bool facingLeft, int health, int damage, int score)
		: SolidObject(position, width, height, offset, "enemy"), health(health), damage(damage), facingLeft(facingLeft)
		, p(nullptr), score(score), hardEnemy(isHard)
	{
		srand(time(nullptr));
		this->healthSpawnChance = 10;
		this->healthBigChance = 10;
	}

	void Enemy::die()
	{
		if (p == nullptr)
			p = ((Player*)this->parentScene->getWithID(GameScene::playerID));

		p->add_score(this->score);

		if ((rand() % 100) + 1 < healthSpawnChance)
		{
			this->parentScene->registerObject(new HealthPowerup(this->position, 
				(rand() % 100) + 1 >= healthBigChance, 
				picojson::value()));
		}
		
		this->parentScene->destroyObject(this);
	}

	void Enemy::takeDamage(int damageAmount)
	{
		health -= damageAmount;
		AudioLocator::getAudio().playSound("assets/snd/sfx/enemy_hurt.wav");
		if (health <= 0) this->die();
	}

	void Enemy::damagePlayer()
	{
		if (p == nullptr)
			p = ((Player*)this->parentScene->getWithID(GameScene::playerID));

		if (this->boundingBox.intersects(p->get_boundingBox()))
			p->takeDamage(this->damage, this);
	}

}
