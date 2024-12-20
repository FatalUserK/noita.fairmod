local mouse = {
	Mouse_left = 1,
	Mouse_right = 2,
	Mouse_middle = 3,
	Mouse_wheel_up = 4,
	Mouse_wheel_down = 5,
	Mouse_x1 = 6,
	Mouse_x2 = 7,
}

local key = {
	Key_a = 4,
	Key_b = 5,
	Key_c = 6,
	Key_d = 7,
	Key_e = 8,
	Key_f = 9,
	Key_g = 10,
	Key_h = 11,
	Key_i = 12,
	Key_j = 13,
	Key_k = 14,
	Key_l = 15,
	Key_m = 16,
	Key_n = 17,
	Key_o = 18,
	Key_p = 19,
	Key_q = 20,
	Key_r = 21,
	Key_s = 22,
	Key_t = 23,
	Key_u = 24,
	Key_v = 25,
	Key_w = 26,
	Key_x = 27,
	Key_y = 28,
	Key_z = 29,
	Key_1 = 30,
	Key_2 = 31,
	Key_3 = 32,
	Key_4 = 33,
	Key_5 = 34,
	Key_6 = 35,
	Key_7 = 36,
	Key_8 = 37,
	Key_9 = 38,
	Key_0 = 39,
	Key_RETURN = 40,
	Key_ESCAPE = 41,
	Key_BACKSPACE = 42,
	Key_TAB = 43,
	Key_SPACE = 44,
	Key_MINUS = 45,
	Key_EQUALS = 46,
	Key_LEFTBRACKET = 47,
	Key_RIGHTBRACKET = 48,
	Key_BACKSLASH = 49,
	Key_NONUSHASH = 50,
	Key_SEMICOLON = 51,
	Key_APOSTROPHE = 52,
	Key_GRAVE = 53,
	Key_COMMA = 54,
	Key_PERIOD = 55,
	Key_SLASH = 56,
	Key_CAPSLOCK = 57,
	Key_F1 = 58,
	Key_F2 = 59,
	Key_F3 = 60,
	Key_F4 = 61,
	Key_F5 = 62,
	Key_F6 = 63,
	Key_F7 = 64,
	Key_F8 = 65,
	Key_F9 = 66,
	Key_F10 = 67,
	Key_F11 = 68,
	Key_F12 = 69,
	Key_PRINTSCREEN = 70,
	Key_SCROLLLOCK = 71,
	Key_PAUSE = 72,
	Key_INSERT = 73,
	Key_HOME = 74,
	Key_PAGEUP = 75,
	Key_DELETE = 76,
	Key_END = 77,
	Key_PAGEDOWN = 78,
	Key_RIGHT = 79,
	Key_LEFT = 80,
	Key_DOWN = 81,
	Key_UP = 82,
	Key_NUMLOCKCLEAR = 83,
	Key_KP_DIVIDE = 84,
	Key_KP_MULTIPLY = 85,
	Key_KP_MINUS = 86,
	Key_KP_PLUS = 87,
	Key_KP_ENTER = 88,
	Key_KP_1 = 89,
	Key_KP_2 = 90,
	Key_KP_3 = 91,
	Key_KP_4 = 92,
	Key_KP_5 = 93,
	Key_KP_6 = 94,
	Key_KP_7 = 95,
	Key_KP_8 = 96,
	Key_KP_9 = 97,
	Key_KP_0 = 98,
	Key_KP_PERIOD = 99,
	Key_NONUSBACKSLASH = 100,
	Key_APPLICATION = 101,
	Key_POWER = 102,
	Key_KP_EQUALS = 103,
	Key_F13 = 104,
	Key_F14 = 105,
	Key_F15 = 106,
	Key_F16 = 107,
	Key_F17 = 108,
	Key_F18 = 109,
	Key_F19 = 110,
	Key_F20 = 111,
	Key_F21 = 112,
	Key_F22 = 113,
	Key_F23 = 114,
	Key_F24 = 115,
	Key_EXECUTE = 116,
	Key_HELP = 117,
	Key_MENU = 118,
	Key_SELECT = 119,
	Key_STOP = 120,
	Key_AGAIN = 121,
	Key_UNDO = 122,
	Key_CUT = 123,
	Key_COPY = 124,
	Key_PASTE = 125,
	Key_FIND = 126,
	Key_MUTE = 127,
	Key_VOLUMEUP = 128,
	Key_VOLUMEDOWN = 129,
	Key_KP_COMMA = 133,
	Key_KP_EQUALSAS400 = 134,
	Key_INTERNATIONAL1 = 135,
	Key_INTERNATIONAL2 = 136,
	Key_INTERNATIONAL3 = 137,
	Key_INTERNATIONAL4 = 138,
	Key_INTERNATIONAL5 = 139,
	Key_INTERNATIONAL6 = 140,
	Key_INTERNATIONAL7 = 141,
	Key_INTERNATIONAL8 = 142,
	Key_INTERNATIONAL9 = 143,
	Key_LANG1 = 144,
	Key_LANG2 = 145,
	Key_LANG3 = 146,
	Key_LANG4 = 147,
	Key_LANG5 = 148,
	Key_LANG6 = 149,
	Key_LANG7 = 150,
	Key_LANG8 = 151,
	Key_LANG9 = 152,
	Key_ALTERASE = 153,
	Key_SYSREQ = 154,
	Key_CANCEL = 155,
	Key_CLEAR = 156,
	Key_PRIOR = 157,
	Key_RETURN2 = 158,
	Key_SEPARATOR = 159,
	Key_OUT = 160,
	Key_OPER = 161,
	Key_CLEARAGAIN = 162,
	Key_CRSEL = 163,
	Key_EXSEL = 164,
	Key_KP_00 = 176,
	Key_KP_000 = 177,
	Key_THOUSANDSSEPARATOR = 178,
	Key_DECIMALSEPARATOR = 179,
	Key_CURRENCYUNIT = 180,
	Key_CURRENCYSUBUNIT = 181,
	Key_KP_LEFTPAREN = 182,
	Key_KP_RIGHTPAREN = 183,
	Key_KP_LEFTBRACE = 184,
	Key_KP_RIGHTBRACE = 185,
	Key_KP_TAB = 186,
	Key_KP_BACKSPACE = 187,
	Key_KP_A = 188,
	Key_KP_B = 189,
	Key_KP_C = 190,
	Key_KP_D = 191,
	Key_KP_E = 192,
	Key_KP_F = 193,
	Key_KP_XOR = 194,
	Key_KP_POWER = 195,
	Key_KP_PERCENT = 196,
	Key_KP_LESS = 197,
	Key_KP_GREATER = 198,
	Key_KP_AMPERSAND = 199,
	Key_KP_DBLAMPERSAND = 200,
	Key_KP_VERTICALBAR = 201,
	Key_KP_DBLVERTICALBAR = 202,
	Key_KP_COLON = 203,
	Key_KP_HASH = 204,
	Key_KP_SPACE = 205,
	Key_KP_AT = 206,
	Key_KP_EXCLAM = 207,
	Key_KP_MEMSTORE = 208,
	Key_KP_MEMRECALL = 209,
	Key_KP_MEMCLEAR = 210,
	Key_KP_MEMADD = 211,
	Key_KP_MEMSUBTRACT = 212,
	Key_KP_MEMMULTIPLY = 213,
	Key_KP_MEMDIVIDE = 214,
	Key_KP_PLUSMINUS = 215,
	Key_KP_CLEAR = 216,
	Key_KP_CLEARENTRY = 217,
	Key_KP_BINARY = 218,
	Key_KP_OCTAL = 219,
	Key_KP_DECIMAL = 220,
	Key_KP_HEXADECIMAL = 221,
	Key_LCTRL = 224,
	Key_LSHIFT = 225,
	Key_LALT = 226,
	Key_LGUI = 227,
	Key_RCTRL = 228,
	Key_RSHIFT = 229,
	Key_RALT = 230,
	Key_RGUI = 231,
	Key_MODE = 257,
	Key_AUDIONEXT = 258,
	Key_AUDIOPREV = 259,
	Key_AUDIOSTOP = 260,
	Key_AUDIOPLAY = 261,
	Key_AUDIOMUTE = 262,
	Key_MEDIASELECT = 263,
	Key_WWW = 264,
	Key_MAIL = 265,
	Key_CALCULATOR = 266,
	Key_COMPUTER = 267,
	Key_AC_SEARCH = 268,
	Key_AC_HOME = 269,
	Key_AC_BACK = 270,
	Key_AC_FORWARD = 271,
	Key_AC_STOP = 272,
	Key_AC_REFRESH = 273,
	Key_AC_BOOKMARKS = 274,
	Key_BRIGHTNESSDOWN = 275,
	Key_BRIGHTNESSUP = 276,
	Key_DISPLAYSWITCH = 277,
	Key_KBDILLUMTOGGLE = 278,
	Key_KBDILLUMDOWN = 279,
	Key_KBDILLUMUP = 280,
	Key_EJECT = 281,
	Key_SLEEP = 282,
	Key_APP1 = 283,
	Key_APP2 = 284,
	Key_SPECIAL_COUNT = 512,
}

local joy = {
	JOY_BUTTON_DPAD_UP = 11,
	JOY_BUTTON_DPAD_DOWN = 12,
	JOY_BUTTON_DPAD_LEFT = 13,
	JOY_BUTTON_DPAD_RIGHT = 14,
	JOY_BUTTON_START = 15,
	JOY_BUTTON_BACK = 16,
	JOY_BUTTON_LEFT_THUMB = 17,
	JOY_BUTTON_RIGHT_THUMB = 18,
	JOY_BUTTON_LEFT_SHOULDER = 19,
	JOY_BUTTON_RIGHT_SHOULDER = 20,
	JOY_BUTTON_0 = 23,
	JOY_BUTTON_1 = 24,
	JOY_BUTTON_2 = 25,
	JOY_BUTTON_3 = 26,
	JOY_BUTTON_4 = 27,
	JOY_BUTTON_5 = 28,
	JOY_BUTTON_6 = 29,
	JOY_BUTTON_7 = 30,
	JOY_BUTTON_8 = 31,
	JOY_BUTTON_9 = 32,
	JOY_BUTTON_10 = 33,
	JOY_BUTTON_11 = 34,
	JOY_BUTTON_12 = 35,
	JOY_BUTTON_13 = 36,
	JOY_BUTTON_14 = 37,
	JOY_BUTTON_15 = 38,
	JOY_BUTTON_LEFT_STICK_LEFT = 39,
	JOY_BUTTON_LEFT_STICK_RIGHT = 40,
	JOY_BUTTON_LEFT_STICK_UP = 41,
	JOY_BUTTON_LEFT_STICK_DOWN = 42,
	JOY_BUTTON_RIGHT_STICK_LEFT = 43,
	JOY_BUTTON_RIGHT_STICK_RIGHT = 44,
	JOY_BUTTON_RIGHT_STICK_UP = 45,
	JOY_BUTTON_RIGHT_STICK_DOWN = 46,
	JOY_BUTTON_A = 23,
	JOY_BUTTON_B = 24,
	JOY_BUTTON_X = 25,
	JOY_BUTTON_Y = 26,
}

local stick = {
	gamepad_left_stick = 0,
	gamepad_right_stick = 1,
}

local trigger = {
	gamepad_left_trigger = 0,
	gamepad_right_trigger = 1,
}

return {
	mouse = mouse,
	key = key,
	joy = joy,
	stick = stick,
	trigger = trigger,
}
