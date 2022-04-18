// new module header


struct ITM {
  import static function clear_item (int index);  
  import static function clear_all_items();
  import static function init_item_types();
  import static int      get_free_item();
  import static function define_items(int index, int xpos, int ypos, int loop, int flag, int attrib, eItem_type type=itm_nothing, int xspeed=0);
  import static function spawn_item(int tile_index, int loop, int attrib, eItem_type type, bool hidden, bool centered, int xspeed = 0, int quantity=1);
  import static function spawn_itemXY(int x, int y, int loop, int attrib, eItem_type type, bool hidden, bool centered, int xspeed, int quantity);
  import static int      spawn_object(int tile_index);
  import static function get_item_at (int x, int y );
  import static function handle_items();
  import static function process_item(int itm_type, int index);
  import static bool     object_is_animating (int obj_id);
  import static function animate_object(int obj_id, int view, int loop, int delay, RepeatStyle ani_repeat = eOnce, Direction ani_direction = eForwards); 
  import static int      get_object_xpos (int obj_id);
  import static int      get_object_ypos (int obj_id);
  import static void     set_object_solid (int obj_id, bool is_solid);
  import static function set_object_sprite(int obj_id, int sprite);
  import static int      get_object_sprite (int obj_id);
  import static String   get_object_name (int obj_id);
  import static String   get_object_shown_name (int obj_id);
  import static int      get_object_idx (int obj_id);
  import static void     set_object_name (int obj_id,  String name);
  import static void     set_object_shown_name (int obj_id,  String name);
  import static void     set_object_img (int obj_id, int sprite);
  import static function set_object_ignoregravity(int obj_id, bool ignoregravity);
  import static function init_object(int obj_id, String name, int obj_sprite, bool is_solid, bool is_usable = true);
  import static function set_object_usable(int obj_id,  bool usable);
  import static function get_item_from_tile(int tile_idx);
  import static function set_item_XY_from_tile(int item_id, int tile_index, bool centered=true);
  import static function show_items_editor(bool objects_only, bool items_only = false);
};