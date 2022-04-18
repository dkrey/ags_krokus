// new module header

struct cBullets {
  float x;
  float y;
  bool active;
  bool hit;
  
  short damage;
  
  float vector_x;
  float vector_y;
  short speed; 
  short gravity;
  short sprite;
  short hitsprite;
  short remove_cnt;
  short distance;
  import float Length();
  import void Normalize();
  
};


struct BULLET {
  import static function get_free_bullet (bool from_player = true);
  import static function shoot_player_bullet(float vector_x, float vector_y); 
  import static function handle_player_bullets();
  import static function handle_enemy_bullets();
  import static function shoot_enemy_bullet(int x,  int y, int i);
  import static function draw_bullets();
  import static function clear_all_bullets();
};