// new module header
struct PFORM {
  import static function clear_platform (int index);
  import static function clear_all_platforms();
  import static int      get_free_platform();
  import static function create_platfrom(int tile_index, int type);
  import static function handle_platforms (bool withinEditor=false);
  import static int      check_platform_at (int x, int y, bool strict);  
};