#ifndef INPUTHANDLER_H
#define INPUTHANDLER_H
#pragma once

#include <GLFW/glfw3.h>

#include <map>
#include <vector>

namespace metalwalrus
{
	enum class ButtonState
	{
		UP = GLFW_RELEASE,
		DOWN = GLFW_PRESS,
		HELD = GLFW_REPEAT,
		IDLE = 3
	};

	struct InputButton
	{
		int code;
		int stateIndex;
	};
	
	class InputHandler
	{
		static std::map<std::string, InputButton> inputs;
		static std::vector<ButtonState> states;
		static bool keys[348];

		InputHandler(); // you can't instantiate InputHandler

		static void updateButtonState(ButtonState *state, bool button);
	public:
		static void addInput(std::string name, int code);
		static bool checkButton(std::string name, ButtonState state);
		static void handleInput();
		static void updateKeys(int key, int action);
	};
}

#endif // INPUTHANDLER_H