enum eCarType {
  eCarSpriteNone = 0, 
  eCarWave  = 1, 
  eCarMine  = 2
};


struct cCars {
  bool active;
  int sprite_slot;
  int seg_idx;
  float offset;
  float z;
  float speed;
  float percent;
  int destX, destY;
  int destW, destH;
  int view, loop, frame;
  int frame_delay, frame_cnt;
  ViewFrame *vf;
  bool is_destructible;
  bool is_solid;
  bool is_dying;
  bool is_dead;
};

struct CARS {
  import static void  clear(int idx);
  import static void  clear_all();
  import static int   get_free();
  import static int   add(eCarType cartype, float offset, float z, float speed);
  import static int   get_sprite_slot(int idx);
  import static int   get_loop(int idx);
  import static void  set_loop(int idx, int loop);
  import static int   get_view(int idx);
  import static void  set_view(int idx, int view); 
  import static int   get_frame(int idx);
  import static void  set_frame(int idx, int frame);   
  import static float get_offset(int idx);
  import static void  set_offset(int idx, float val);
  import static float get_speed(int idx) ;
  import static void  set_speed(int idx, float val) ;
  import static float get_z(int idx) ;
  import static void  set_z(int idx, float val) ;
  import static float get_percent(int idx);
  import static void  set_percent(int idx, float val);
  import static int   get_segment(int idx);
  import static void  set_segment(int idx, int val);
  import static int   get_car_count();
  import static float update_offset(int n, int oldSegment, int playerSegment, float playerW);
  import static bool  is_active(int n);
  import static void  prepare(int idx, int roadWidth, int width, float scale, float sprite_scale, int sprite_slot, int destX, int destY,  float offsetX, float offsetY);
  import static int   get_destX(int idx);
  import static int   get_destY(int idx);
  import static int   get_destW(int idx);
  import static int   get_destH(int idx);
  import static void  animate(int idx);
  import static void  set_dying(int idx);
  import static bool  is_dying(int idx);
  import static bool  is_dead(int idx);
  import static bool  is_solid(int idx);
  import static bool  is_destructible(int idx);
  
};