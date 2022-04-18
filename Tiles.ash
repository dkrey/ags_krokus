// new module header

struct ctile
{
  AudioClip *sound[LAYERS];
	short x[LAYERS];
  short y[LAYERS];
  bool mirrored_x[LAYERS];
  bool mirrored_y[LAYERS];
  
  bool is_solid[LAYERS];
  bool is_destructable[LAYERS];
  bool is_bonus[LAYERS];
  bool is_deadly[LAYERS];
  bool is_ramp[LAYERS];
  bool is_fg_ramp[LAYERS];
  bool is_ramp_support[LAYERS];
  bool to_bounce[LAYERS];
  bool is_platform[LAYERS];
  bool is_ladder[LAYERS];
  bool is_ramp_ceiling[LAYERS];
  bool is_50transparent[LAYERS];
  short bounce_counter[LAYERS];
  short emit_particle[LAYERS];
  short emit_particle_cnt[LAYERS];
  
  short loop[LAYERS];
  ViewFrame *vf[LAYERS];
  short frame_counter[LAYERS];  
  short tileno[LAYERS];
  DynamicSprite *spr[LAYERS];
  
  short frm_speed[MAX_FRAME_TILE];
  short frame[MAX_FRAME_TILE];
  short frames_in_use[LAYERS];
  
	short ani_delay[LAYERS];
  short ani_delay_counter[LAYERS];  
	bool ani_sync_enable[LAYERS]; 
  bool highlight[LAYERS];
};

struct ctile_set
{
  
  short marker;
  short raster;
  short hitoverlay;
  short back_para1;
  short back_para2;
  short foreground;
  short blank;
  short box;
  short explode_particle;
  short platform_hori;
  short platform_vert;
  short tile_view;
  int item_view;
  short empty_bonus;
  short bonus_particle;
  short anisync_tile_cnt;
  short anisync_tile_no[NUM_MAX_SPRITES];
};

struct ctile_sprites {
  DynamicSprite *spr;
  int code;
  short frm_speed[MAX_FRAME_TILE];
  short frames_in_use;
  short frame_counter;
	short ani_delay;
  short ani_delay_counter;
};

struct TILES {
  import static int      split_tilecode (int what_mode, int the_code);
  import static function clear_tile_sprites();
  import static void     init_tile_sprites(int sprite);
  import static function update_tile_sprites(int sprite_slot);  
  import static int      get_tileset_number();
  import static function init_tile_sets (int level); 
  import static function clear_tile (int index,  int layer);
  import static function clear_all_tiles(bool only_first_layer = false);  
  import static int      get_tile_at ( int x, int y, int layer=1, int current_tile=0);
  import static int      get_tile_index_above (int tile_index, int rows);
  import static function define_tiles(int index, int layer,  int code);
  import static String   get_tiletype_name(int attrib);
  import static int      get_tiletype_number(int index, int layer);
  import static int      get_tile_sprite(int index, int layer);
  import static int      get_tile_mirroring(int index,  int layer);
  import static function handle_anisync_tiles( ) ;
  import static int      getTileIndexFromTileIndices(int x, int y);
  import static int      getTileIndexXFromIndex(int index);
  import static int      getTileIndexYFromIndex(int index);
  import static int      getTileIndexFromPoint(int x, int y);
  import static int      getTileIndexXFromPoint(int x, int y);
  import static int      getTileIndexYFromPoint(int x, int y);
  import static void     set_highlight(int tile_index, int layer);
  import static void     unset_highlight(int tile_index, int layer);
  import static void     create_tile(int tile_x, int tile_y, int tilecode, int layer, int tilestrip_idx,  bool mirror_x, bool mirror_y);
  import static int      get_tile_offset_x();
  import static int      get_tile_offset_y();
  import static function draw_tiles (bool trans_fg = false, bool withGrid = false);
  import static function draw_map() ;
};


