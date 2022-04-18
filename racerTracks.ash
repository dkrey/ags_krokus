struct cSegment_point {
  float world_x, world_y, world_z;
  int screen_x,  screen_y, screen_w;
  float screen_scale;
  float camera_x, camera_y, camera_z, camera_scale;
  
  import void add();
  import void clear();
  import void set_world  (float x, float y, float z);
  import void set_screen (int x, int y, int w, float scale );
  import void set_camera (float x, float y, float z, float scale );
  import void project(float cameraX, float cameraY, float cameraZ, float cameraDepth, int width, int height, int roadWidth);
  import void copy(float cameraX, float cameraY, float cameraZ, float screen_scale, int screen_x, int screen_y, int screen_w);
};


struct cSegment {
  float curve;
  int sprite_cnt;
  int sprites_idx[RACR_MAX_OBJ_PER_SEG];
  int car_cnt;
  int cars_idx[RACR_MAX_OBJ_PER_SEG];
  int item_sprite;
  float item_offset;
  int item_destX, item_destY;
  int item_destW, item_destH;
  eColorType color_type;
  int clip;
  import void add(eColorType color_type);
  import void clear();
  import void add_sprite(eSpriteSlot sprite_slot, float offset);
  import void add_item(eSpriteSlot sprite_slot, float offset);
  import void prepare_item(int roadWidth, int width, float scale, float sprite_scale, int destX, int destY,  float offsetX, float offsetY);
};

struct TRACK {
  import static float last_y();
  import static void add_segment(float curve, float y);
  import static void add_road(int enter, int hold, int leave, int curve, int y);
  
  import static void add_straight(int num);
  import static void add_curve(int num, int curve);
  import static void add_scurves();
  import static void add_hill(int num, int height);
  import static void add_downhill_to_end(int num);
  import static void add_smooth_hills(int num, int height);
  
  import static void add_sprite(int n, eSpriteSlot sprite_slot, float offset);
  import static void add_item(int n, eSpriteSlot sprite_slot, float offset);
  import static void add_car(int n, eCarType cartype, float offset, float z, float speed);
  import static void add_random_cars(int amount);
  import static void add_random_mines(int amount, int starting_seg = 0, int ending_seg = 0);
  import static void add_random_waves(int amount, int starting_seg = 0);
  
  import static void add_random_presents(int amount);
  import static void add_random_decoration(int amount);
  
  import static int   find_segment_index(int z);
  import static void  demo_level();
 
  import static void  move_car_to_segment(int n_src, int n_dst, int car_idx);
  import static float update_car_offset(int n, int oldSegment, int playerSegment, float playerW);
  import static void  update_cars(float dt, int playerSegment);
};
