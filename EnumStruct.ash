// new module header
#define NUM_MAX_TILES	60000
#define NUM_MAX_SPRITES 320// sprites per tilesets sans animation


#define MAX_PEOPLE 	50
#define MAX_WAYPOINTS 50
#define MAX_PLATFORMS 50
#define MAX_BULLETS 20
#define MAX_PARALLAX 5
#define MAX_ITEMS 60
#define MAX_OBJECTS 30
#define MAX_HOTSPOTS 100

#define XACCEL 8
#define YACCEL 8

#define X_ACCEL 0.14
#define Y_ACCEL 0.14
#define MAX_XSPEED 1.6
#define MAX_YSPEED 1.6
#define MAX_FALLING_SPEED 4.6
#define MAX_CLIMB_SPEED 1.0

#define SLIDE_DURATION 45
#define TERMINALVEL 10
#define JUMP_HEIGHT 12

#define TILE_TYPES 15
#define LAYERS 2
#define FRAME_TILE_ROW 8 
#define MAX_FRAME_TILE 24 //8 frames * 3 Layer
#define GRAVITY 0.5

#define SHOT_INTERVAL 10
#define BULLET_REMOVAL 4



enum editorAction {
  editorAction_SetTile, 
  editorAction_NewObject, 
  editorAction_EditObject, 
  editorAction_DelObject, 
  editorAction_NewNpc, 
  editorAction_EditNpc, 
  editorAction_DelNpc, 
  editorAction_NewHsp, 
  editorAction_EditHsp, 
  editorAction_DelHsp,   
  editorAction_LoadMap, 
  editorAction_ImportMap, 
  editorAction_SetTilesprite, 
  editorAction_NewMap, 
  editorAction_SaveMap, 
  editorAction_UpdateMap
};

enum eTile_attribs {
  eTA_solid_only      = 1, 
  eTA_solid_destruct  = 2, 
  eTA_solid_bonus     = 3,
  eTA_solid_platform  = 4, 
  eTA_solid_ramp      = 5, 
  eTA_ramp_support    = 6, 
  eTA_ladder          = 7, 
  eTA_solid_ladder    = 8, 
  eTA_foreground_ramp = 9, 
  eTA_solid_deadly    = 10, 
  eTA_deadly          = 11, 
  eTA_water_surf      = 12, 
  eTA_ramp_ceiling    = 13, 
  eTA_50transparent  = 14
};

enum eTile_codepart {
  eCodepartLoop, 
  eCodepartFlag, 
  eCodepartAttrib
};

enum eTENGDir {
  eTengDirDown  = 0,  
  eTengDirLeft  = 1, 
  eTengDirRight = 2, 
  eTengDirUp    = 3,
  eTengDirNull  = 99
};

enum eTENGAction {
  eTAct_NoAction, 
  eTAct_WalkOnHotspot, 
  eTAct_WalkOnObject, 
  eTAct_InteractHotspot, 
  eTAct_InteractObject, 
  eTAct_InteractChar, 
  eTAct_Other
};

enum eTENGWeapon {
  eWNoWeapon, 
  eWCloseCombat, 
  eWPistol, 
  eWMouseGun, 
  eWEnemyGun,
  eWLydiaGun, 
  eWLastWeapon
};


enum eHitParticle {
  eHitPart_Enemy, 
  eHitPart_Water 
};

enum eItem_type { 
  itm_nothing     = 0, 
  itm_grow        = 1, 
  itm_gun         = 2, 
  itm_pistol_ammo10 = 3,
  itm_arcanium    = 4, 
  itm_object      = 5
  
};

enum people_type {
  ppl_null, 
  ppl_en_moron, 
  ppl_en_trooper, 
  ppl_en_pig, 
  ppl_en_pig2, 
  ppl_en_pig3, 
  ppl_custom
};

enum eScroll_dir {
  eScroll_vertical, 
  eScroll_horizontal
};

struct cEgo_stats 
{
  short xaccel,yaccel, yspeed, xspeed,  Jump_Timer,  Jump_Forbidden, Slide_Pressed, InSlide,  
      SlideTimer, SlideStop, Ducks, ShotTimer, current_tile, DeadlyTile;
  bool shot, beam;
  
  float x_speed, x_remain, x_accel, x_delta;
  float y_speed, y_remain, y_accel, y_delta;
  int   scroll_x;
  float scroll_remain_x;
  float scroll_delta_x;

  float climb_speed;
  
  bool is_dying, is_dead;
  bool debug;
  short active_shots;
  short attack_combo_counter,  attack_combo_current;
  short anicounter, anicounter_attack, frame_attack;
  int startx;
  int starty;
  String name;
  short health;
  short max_health;
  short lifes;
  
  short exp;
  short skill; //obsolete
  short rpg_vigor;
  short rpg_armor;
  short rpg_level;
  short arcanium;
  
  short energycells;
  
  short grabscroll_x;
  short grabscroll_y;
  short platform_id;
  
  eTENGWeapon active_weapon;
  InventoryItem *active_inv;
  InventoryItem *old_active_inv;
  
  short grab_tile_id;
  bool GrabFound, GrabPossible, HasGrabbed;
  bool que_up_ani;
  bool midair, was_midair, Jumped, Found_Floor, OnRamp, OnPlatform, Found_Ladder, OnLadder, OnItem,  Ladder_solid, Ladder_NoUp, NoControl, Jump_Pressed, DoubleJump;  
  bool s_destroy_bricks;
  bool s_has_gun;
  bool s_can_grab;
  bool s_can_slide;
  bool s_can_doublejump;
  bool s_mouseaiming;
  
  bool s_invincible;
  bool is_invisible;
  short  flash_timer;
  short  invincible_timer;
  short  invincible_cnt;
  bool shootloop;
  DynamicSprite *spr;
  short footwidth;
  eTENGDir direction;
  eTENGDir direction_old;
  eTENGAction current_action;
  short current_act_id;
  short view;
  short loop;  
  short dist_check, dist_check_y;
};


struct cpeople_types
{
  String name;
  int view;
  int dead_timer;
  float xspeed;
  int wait_timer;
  bool ignore_wp;
  bool ignore_cliffs;
  bool is_hostile;
  int price; // to be arcanium
  int health;
  int touch_damage;
  bool is_jumpable;
  bool is_alarmable;
  eTENGWeapon active_weapon;
  int watch_distance;
  int shoot_chance;
  short exp;
  short arcanium;
  short armor;
};


struct cpeople
{
  people_type type;
  AudioClip *sound;	
  int x;
	int y;
  
  int limit_left, limit_right, limit_up, limit_down;
  int target_x, target_y;
  
  eTENGDir direction;
  eTENGDir direction_old;
	short antishake;
  String name;
  
  float xspeed, x_remain;
  float yspeed, y_remain;
  short wait_timer;
  bool  midair;
  bool  OnRamp;
	short char_id;
	short id;
	bool  active;
	bool  onscreen;
	short health;
  short max_health;
  short healthbar_timer;  
	short timer;
	short hit_timer;
  
  bool can_fly;
  bool ignore_wp;
  bool ignore_cliffs;
  
  bool is_alarmable;
  bool is_hostile;
  bool is_jumpable;
  bool is_interactable;
  bool is_invincible;
  short touch_damage;
  
  short view;
  short loop;
  short frame;
  short talk_view;
  short talk_color;
  short idle_view;
  short idle_delay;
  short lock_loop;
  
  ViewFrame *vf;
  short frame_counter;  
	short ani_delay;
  short ani_delay_counter;     
	
	bool alarmed;
	short alarm_timer;
	short dead_timer;
  short price; //to be exp
  short exp;
  short arcanium;
  short armor;
  
  short ShotTimer;  
  eTENGWeapon active_weapon;
  int current_tile;
  int walkto_x;
  int walkto_y;
  bool walkto_start;
  short watch_distance;
  short shoot_chance;
	short dist_check;
};


struct citem_types
{
  int loop;
  int xspeed;
  AudioClip *sound;
  bool ignore_gravity;
  bool is_solid;
  short quantity;
  String name;
};

struct citems
{
  String name;
  String shown_name;
  bool is_solid;
  
  bool active;
  bool hidden;
  bool ignore_gravity;
  AudioClip *sound;
	eItem_type type;
	int x;
	int y;
  short obj_id;
  short obj_sprite;
  short img;
  short quantity;
  
  bool ani_done;
  bool usable;
  bool in_foreground;
  
  RepeatStyle ani_repeat;
  Direction ani_direction;
  short ani_speed;
  
  ViewFrame *vf;
  short loop;
  short view; // only fixed for powerups
  short frame_counter;
	short ani_delay;
  short ani_delay_counter;
  
  short xspeed;
  short yspeed;
  short distance; //travel distance
  short speed_delay;
  short speed_delay_cnt;
  short facing;  
  bool midair;
  int current_tile;
};

struct cplatforms
{
  int x;
  int y;
  short xspeed;
  short yspeed;
  short speed_delay;
  short speed_delay_cnt;  
  short facing;
  short sprite;
  short timer;
  short wait_timer; 
  bool is_active; 
  int current_tile;
};

struct cwaypoint
{
	int x;
	int y;
  bool active;
  eTENGDir nextDir;
};

struct cWeapons {
  AudioClip *sound;
  short ammo;
  short bullet_sprite;
  short bullet_hitsprite;
  short speed;
  short gravity;
  short damage;
  short distance;
};

struct ct_hotspot
{
  int x;
	int y;
  int id;
  bool active;
  bool hidden; 
  String name;
  String shown_name;
  int img;
};


import cEgo_stats ego_stats;
import String leveledit;