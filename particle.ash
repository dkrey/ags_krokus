enum ParticleType
{
	ParticleType_Smoke,
  ParticleType_Debris, 
	ParticleType_ExplosionSmall, 
	ParticleType_Loot, 
	ParticleType_Blood, 
  ParticleType_Water, 
  ParticleType_Damage, 
  ParticleType_Shell, 
  ParticleType_LvlUp
};

struct Particle
{
	float positionX, positionY;
	float velocityX, velocityY;
  int xoffset, yoffset;
	ParticleType type;
  DynamicSprite *sprite;
	int spriteSlot;
	int animationTimer;
	int framesToLive;
	bool alive;
  int do_collision;
  int do_bounce;
	AudioChannel *audioChannel;
	
	import static void reset();
	import static void spawn(float positionX, float positionY, float velocityX, float velocityY, ParticleType type, int damagepoints=0, bool hit_player =false);
  import static void set_offset (int xoffset, int yoffset);
	import static void update();
	import static void render(int scroll_x, int scroll_y);
};

struct PART {
  import static function show_debris(int tile_x, int tile_y);
  import static function show_bonus(int tile_x, int tile_y);
  import static function show_hit(float x,  float y, int type, eTENGDir direction=eTengDirNull);  
  import static function show_damage(float x,  float y, int amount, bool hit_player =false);
  import static function show_bullet_shell(float x,  float y, eTENGDir direction);
  import static function show_explosion(float x,  float y);
  import static function show_lvlup();
};