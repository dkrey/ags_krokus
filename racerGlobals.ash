#define RACR_MAX_SEGMENTS 10000
#define RACR_MAX_SPRITES 50000
#define RACR_MAX_COLOR_TYPES 5
#define RACR_MAX_OBJ_PER_SEG 5
#define RACR_MAX_CARS 200

enum eColorType {
  eColorDark      = 0, 
  eColorLight     = 1,
  eColorAllWhite  = 2, 
  eColorAllBlack  = 3, 
  eColorAllDarkBlue = 4
};

#ifnver 3.4
enum CharacterDirection {
  eDirectionUp,
  eDirectionLeft,
  eDirectionRight,
  eDirectionDown, 
  eDirectionUpLeft, 
  eDirectionUpRight
};
#endif


struct cColors {
  int grass, rumble, lane, road;
};

struct cRoad {
  int curve_none, curve_easy, curve_medium, curve_hard;
  int length_none, length_short, length_medium, length_long;
  int hill_none, hill_low, hill_medium, hill_high;
};

struct cSpritePlayer {
  int frame_cnt;
  int frame_delay;
  int current_sprite;
  int dither;
  CharacterDirection dir;
  int view;
  int loop;
  int frame;
  ViewFrame *vf;
  int invincible_cnt;
  int invincible_timer;
  int flash_timer;
  bool s_invincible;
  DynamicSprite *overlay;
};

struct cRacerVars {
  int lifes;
  bool game_paused;
  int fps;
  float step;
  int width;
  int height;
  int segments[RACR_MAX_SEGMENTS];
  int segment_cnt;
  DynamicSprite *ds;
  int resolution;
  int roadWidth;
  int segmentLength;
  int rumbleLength ;
  int trackLength ;
  int lanes;
  int fieldOfView;
  int cameraHeight;
  float cameraDepth;
  int drawDistance;
  
  float playerW;
  float playerX;
  float playerY;
  int playerZ;
  int playerSegment;
  
  int destX, destW;
  
  int laps_max;
  int laps_cnt;
  float fogDensity;
  int position;
  float pos_delta;
  float pos_remain;
  
  int scroll_x;
  float scroll_delta;
  float scroll_remain;
  
  float speed;
  float minSpeed;
  float maxSpeed;
  float accel;
  float breaking ;
  float decel;
  float offRoadDecel;
  float offRoadLimit;
  float sprite_scale;
  float centrifugal;
  
  import void init();
};