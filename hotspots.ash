// new module header

struct HSP {
  import static function clear_t_hotspot(int index);
  import static function clear_all_hotspots();
  import static function get_hotspot_at ( int index );
  import static function get_free_hotspot();
  import static function init_hotspot(int hsp_id, String name, bool active = true);
  import static function remove_hotspots_by_id(int hsp_id);
  import static int      spawn_hotspot(int tile_index, int hsp_id, bool is_hidden, String name, int opt_xpos=-1, int opt_ypos =-1);
  import static int      create_hotspot(int tile_index, bool hidden, String name) ;
  import static String   get_hotspot_shown_name (int hsp_id, bool inGame=true);
  import static String   get_hotspot_name (int hsp_id, bool inGame=true);
  import static void     set_hotspot_shown_name (int hsp_id,  String name);
  import static void     set_hotspot_name (int hsp_id,  String name);
  import static void     set_hotspot_img (int hsp_id,  int sprite);
  import static void     set_hotspot_active (int hsp_id,  bool is_active);
  import static void     set_hotspot_hidden (int hsp_id,  bool is_hidden);
  import static int      get_hotspot_xpos (int hsp_id);
  import static int      get_hotspot_ypos (int hsp_id);
  import static void     show_hotspots_editor();
};