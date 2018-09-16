--[[
Hyperion LUA Host-API Defines
Changelog:
	+ 2006-04-27: new initial version.: 1.0.0
--]]


HYP_LUA_HOST_API_VERSION = "1.0.0";


-------------------------------------------------------------------------------
-- BOOLEAN 
--
FALSE = 0;
TRUE = 1;

-------------------------------------------------------------------------------
-- Math
--
HYP_PI = 3.1415926535897932384626433832795;
HYP_HALF_PI = 1.5707963267948966192313216916398;
HYP_PI_OVER_180	= 1.74532925199432957692369076848e-2;
HYP_PI_OVER_360	= 0.0087266462599716478846184538424431;
HYP_180_OVER_PI	= 57.295779513082320876798154814105;


-------------------------------------------------------------------------------
-- Keyboard 
--
HYP_KEY_LBUTTON = 1;
HYP_KEY_RBUTTON = 2;
HYP_KEY_MBUTTON = 4;

HYP_KEY_TAB = 9;
HYP_KEY_ENTER = 13;
HYP_KEY_SHIFT = 16;
HYP_KEY_CTRL = 17;
HYP_KEY_SPACE = 32;
HYP_KEY_PAGE_UP = 33;
HYP_KEY_PAGE_DOWN = 34;
HYP_KEY_END = 35;
HYP_KEY_HOME = 36;
HYP_KEY_LEFT = 37;
HYP_KEY_UP = 38;
HYP_KEY_RIGHT = 39;
HYP_KEY_DOWN = 40;
HYP_KEY_INSERT = 45;
HYP_KEY_DELETE = 46;

HYP_KEY_A = 65;
HYP_KEY_B = 66;
HYP_KEY_C = 67;
HYP_KEY_D = 68;
HYP_KEY_E = 69;
HYP_KEY_F = 70;
HYP_KEY_G = 71;
HYP_KEY_H = 72;
HYP_KEY_I = 73;
HYP_KEY_J = 74;
HYP_KEY_K = 75;
HYP_KEY_L = 76;
HYP_KEY_M = 77;
HYP_KEY_N = 78;
HYP_KEY_O = 79;
HYP_KEY_P = 80;
HYP_KEY_Q = 81;
HYP_KEY_R = 82;
HYP_KEY_S = 83;
HYP_KEY_T = 84;
HYP_KEY_U = 85;
HYP_KEY_V = 86;
HYP_KEY_W = 87;
HYP_KEY_X = 88;
HYP_KEY_Y = 89;
HYP_KEY_Z = 90;

HYP_KEY_NUMPAD_0 = 96;
HYP_KEY_NUMPAD_1 = 97;
HYP_KEY_NUMPAD_2 = 98;
HYP_KEY_NUMPAD_3 = 99;
HYP_KEY_NUMPAD_4 = 100;
HYP_KEY_NUMPAD_5 = 101;
HYP_KEY_NUMPAD_6 = 102;
HYP_KEY_NUMPAD_7 = 103;
HYP_KEY_NUMPAD_8 = 104;
HYP_KEY_NUMPAD_9 = 105;

HYP_KEY_MULT = 106;
HYP_KEY_ADD = 107;
HYP_KEY_SUBTRACT = 109;
HYP_KEY_DECIMAL = 110;
HYP_KEY_DIVIDE = 111;

HYP_KEY_F1 = 112;
HYP_KEY_F2 = 113;
HYP_KEY_F3 = 114;
HYP_KEY_F4 = 115;
HYP_KEY_F5 = 116;
HYP_KEY_F6 = 117;
HYP_KEY_F7 = 118;
HYP_KEY_F8 = 119;
HYP_KEY_F9 = 120;
HYP_KEY_F10 = 121;
HYP_KEY_F11 = 122;
HYP_KEY_F12 = 123;


-------------------------------------------------------------------------------
-- Mouse
--
MOUSE_BUTTON_LEFT = 1;
MOUSE_BUTTON_RIGHT = 2;
MOUSE_BUTTON_UP = 0;
MOUSE_BUTTON_DOWN = 1;


-------------------------------------------------------------------------------
-- Joystick
--
JOY_1 = 1;
JOY_2 = 2;
JOY_BUTTON_0 = 0;
JOY_BUTTON_1 = 1;
JOY_BUTTON_2 = 2;
JOY_BUTTON_3 = 3;



-------------------------------------------------------------------------------
-- Object transformation
--
OBJECT_TRANSFORM_SPACE_PARENT = 1;
OBJECT_TRANSFORM_SPACE_WORLD = 2;
OBJECT_TRANSFORM_SPACE_LOCAL = 3;


-------------------------------------------------------------------------------
-- Model loading options
--
MODEL_LOADING_OPTION_LOAD_TEXTURE = 1;
MODEL_LOADING_OPTION_TEX_RGB_BYTE = 2;
MODEL_LOADING_OPTION_COMPUTE_VERTEX_NORMALS = 4;
MODEL_LOADING_OPTION_DEFAULT = MODEL_LOADING_OPTION_LOAD_TEXTURE + MODEL_LOADING_OPTION_TEX_RGB_BYTE + MODEL_LOADING_OPTION_COMPUTE_VERTEX_NORMALS;
MODEL_LOADING_OPTION_TEX_RGBA_FLOAT = 8;
MODEL_LOADING_OPTION_TEX_COMPRESSION = 16;
MODEL_LOADING_OPTION_LOAD_BUMP_MAP_DOT3 = 32;
MODEL_LOADING_OPTION_COMPUTE_TANGENT_SPACE_VECTORS = 64;
MODEL_LOADING_OPTION_GEN_MIPMAP = 128;
MODEL_LOADING_OPTION_DESTROY_PIXMAP_BUFFERS_AFTER_UPLOAD = 256;



-------------------------------------------------------------------------------
-- Render Target
--
RENDER_TARGET_NORMAL = 1;
RENDER_TARGET_TEXTURE = 2;


-------------------------------------------------------------------------------
-- Physics Engine
--
ACTOR_STATIC = 1;
ACTOR_DYNAMIC = 2;
ACTOR_KINEMATIC = 4;

-------------------------------------------------------------------------------
-- Mesh / model cloning options
--
MESH_CLONING_NOT_SHARE_MESHDATA = 1;
MESH_CLONING_SHARE_MESHDATA = 2;

-------------------------------------------------------------------------------
-- FBO ( Frame Buffer Object) attachment point.
--
FBO_COLOR_ATTACHMENT0 = 0;
FBO_COLOR_ATTACHMENT1 = 1;
FBO_COLOR_ATTACHMENT2 = 2;
FBO_COLOR_ATTACHMENT3 = 3;
FBO_COLOR_NONE = 4;

-------------------------------------------------------------------------------
-- Texture Addressing Mode
--
TAM_WRAP = 0;
TAM_MIRROR = 1;
TAM_CLAMP = 2;

-------------------------------------------------------------------------------
-- Texture Filtering Mode
--
TFM_NONE = 0;
TFM_LINEAR = 1;
TFM_TRILINEAR = 2;

-------------------------------------------------------------------------------
-- Texture Function 
--
TFUNC_MODULATE = 0;
TFUNC_REPLACE = 1;
TFUNC_ADD = 2;
TFUNC_ADD_SIGNED = 3;
TFUNC_SUB = 4;

-------------------------------------------------------------------------------
-- Texture Type
--
TEXTURE_1D = 1;
TEXTURE_2D = 2;
TEXTURE_RECTANGLE_2D = 4;

-------------------------------------------------------------------------------
-- Texture Pixel Format
--
RGBA_FLOAT_PIXEL_FORMAT = 1; 
RGB_BYTE_PIXEL_FORMAT = 2;
RGBA_32F_PIXEL_FORMAT = 4; 


-------------------------------------------------------------------------------
-- Playlist options
--
PLAYLIST_TRACKS_MANAGEMENT_OFF = 1;
PLAYLIST_TRACKS_MANAGEMENT_ON = 2;
PLAYLIST_LOOP_ON = 3;
PLAYLIST_LOOP_OFF = 4;
PLAYLIST_DISPLAY_CUR_TRACK_NAME_ON = 6;
PLAYLIST_DISPLAY_CUR_TRACK_NAME_OFF = 7;
PLAYLIST_ENABLED = 8;
PLAYLIST_DISABLED = 9;

-------------------------------------------------------------------------------
-- Vertex attribs for push/pop functions
--
VERTEX_ATTRIB_POSITION = 1;
VERTEX_ATTRIB_NORMAL = 2;
VERTEX_ATTRIB_UVMAP = 4;
VERTEX_ATTRIB_COLOR = 8;
VERTEX_ATTRIB_ALL = 15;

-------------------------------------------------------------------------------
-- Blending factors
--
BLENDING_FACTOR_ZERO = 0;
BLENDING_FACTOR_ONE = 1;
BLENDING_FACTOR_SRC_ALPHA = 2;
BLENDING_FACTOR_ONE_MINUS_DST_ALPHA = 3;
BLENDING_FACTOR_ONE_MINUS_DST_COLOR = 4;
BLENDING_FACTOR_ONE_MINUS_SRC_ALPHA = 5;
BLENDING_FACTOR_DST_COLOR = 6;
BLENDING_FACTOR_DST_ALPHA = 7;
BLENDING_FACTOR_SRC_COLOR = 8;
BLENDING_FACTOR_ONE_MINUS_SRC_COLOR = 9;

-------------------------------------------------------------------------------
-- Rendering Lists types for opaque meshes.
--
NORMAL_RENDER_LIST = 1;
BACKGROUND_RENDER_LIST = 2;
FOREGROUND_RENDER_LIST = 3;



















