// new module header


struct PEOPLE {
  import static function clear_people (int index);
  import static function clear_all_people();
  import static int      get_free_people();
  import static function init_people_types();
  import static function init_people(int ppl_id, String name, int view, int talk_view = -1, int talk_color = 15, int idle_view = -1, int idle_delay = 0, bool active = true);  
  import static function define_people(int ppl_index, int tile_index, int xpos, int ypos, bool isNPC, int attrib);
  import static function edit_people(int ppl_id, int view =-1, int talk_view =-1, int talk_color =-1, int idle_view =-1,  int idle_delay =0);
  import static void     lock_loop(int ppl_id, int loop);
  import static void     unlock_loop(int ppl_id);
  import static int      spawn_enemy(int tile_index, int type);
  import static int      spawn_npc(int tile_index, String name, int view, int talk_view = -1, int talk_color = 15, int idle_view = -1, int idle_delay = 0);
  import static int      get_people_at (int x, int y );
  import static int      get_people_idx_from_id(int ppl_id);
  import static function set_people_XY_from_tile(int ppl_idx, int tile_index, bool centered=true);
  import static function add_people ( int id );
  import static function add_weapon(int ppl_id, eTENGWeapon active_weapon, int ammo=100);
  import static function update_people_char(int ppl_id);
  import static function remove_people ( int id );
  import static function remove_all_people ();
  import static void     animate_people(int ppl_id);
  import static function reward(int ppl_index);
  import static function handle_people (bool withinEditor = false);
  import static void     face_people_direction (int ppl_id, eTENGDir direction);
  import static void     face_people_player (int ppl_id);
  import static void     set_people_hostile (int ppl_id,  bool is_hostile);
  import static int      get_people_char_id (int ppl_id);
  import static void     set_people_interactable (int ppl_id,  bool is_interactable);
  import static function walk_ppl_y(int ppl_id, int amount_px, eTENGDir direction,  float yspeed);
  import static function walk_ppl_x(int ppl_id, int amount_px, eTENGDir direction,  float xspeed);
  import static bool     is_moving(int ppl_id);
};

