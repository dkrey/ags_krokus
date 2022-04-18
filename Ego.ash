// new module header
struct EGO {
  import static function init_player();
  import static function set_player_name(String theName);
  import static void     show_spawn_editor();
  import static void     set_spawn(int tile_index);
  import static function animate_player_topdown();
  import static function animate_player();
  import static function move_player();
  import static function move_player_topdown();
  import static function set_topdown_mode(bool enabled);
  
    // Shooting animation
  import static int      get_shootloop();
  
  import static function handle_player_sprite();
  import static void     face_player_hotspot (int hsp_id);
  import static void     face_player_object (int obj_id);  
  import static void     face_player_people (int ppl_id);
  import static function handle_player_invincibility();
  import static function set_player_invincible(int duration);  
  import static function set_player_invisible(bool state);
};