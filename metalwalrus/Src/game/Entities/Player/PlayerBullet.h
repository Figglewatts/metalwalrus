#ifndef PLAYERBULLET_H
#define PLAYERBULLET_H
#pragma once

#include "../../../Framework/Game/SolidObject.h"

namespace metalwalrus
{
	class PlayerBullet : public SolidObject
	{
		float timer;
		const float lifeTime = 0.6;
		Texture2D *bulletTex;
		bool facingLeft = false;

		const int bulletSpeed = 200;
	public:
		PlayerBullet(Vector2 pos, bool facingLeft, Texture2D *bulletTex);

		void start() override;
		void update(double delta) override;
		void draw(SpriteBatch& batch) override;
	};
}

#endif