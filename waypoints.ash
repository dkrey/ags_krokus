// new module header
struct WPOINT 
{
  import static int  get_free_waypoint();
  import static void create_waypoint(int tile_x, int tile_y, int tile=0, eTENGDir nextDir=eTengDirNull);
  import static void clear_waypoint(int wp_idx);
  import static void clear_all_waypoints();  
  import static int  check_waypoint_at (int tile_index); 
  import static void show_waypoints_editor();
};