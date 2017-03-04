#include "IOUtil.h"
#include "Debug.h"

#include <lodepng.h>

namespace metalwalrus
{
	std::vector<unsigned char> *IOUtil::loadTexture(char *filePath, unsigned int &texWidth, unsigned int &texHeight)
	{
		std::vector<unsigned char> *imgBuffer = new std::vector<unsigned char>();
		unsigned error = lodepng::decode(*imgBuffer, texWidth, texHeight, filePath);

		if (error != 0)
		{
			Debug::log(lodepng_error_text(error), Debug::LogType::ERR);
			return nullptr;
		}

		return imgBuffer;
	}
}