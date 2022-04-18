// new module header
struct CAM {
  import static void center_screen_on_player();
  import static function scroll(int direction,  int amount); 
  import static function beam_to_place(Character *ch, int hsp_id, int tile_idx= 0,  bool instant=false);
  import static function handle_scrolling(bool editor = false ) ;
};