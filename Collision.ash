// new module header
struct COLL {
  import static function get_ramp_ypos (int index, Character *ch);
  import static function check_char_coll(int obj1_x,int obj1_y, int obj1_width, int obj1_height, Character *ch,  bool pperfect=false); 
  import static bool     check_player_coll();  
  import static int      check_walls_topdown(Character *ch, int vspeed,  int hspeed, int ppl_id = 0);
  import static float    check_walls(Character *ch, float vspeed,  float hspeed, int ppl_id = 0);
  import static float    check_slide(Character *ch, float hspeed, int ppl_id = 0);
};
  