// new module header
struct cParallax {
  bool  active;
  short sprite_slot;
  float xspeed;
  bool  xscroll_repeat;
  bool  autoscroll_x;
  float yspeed;
  bool  yscroll_repeat;
  bool  autoscroll_y;
  int   transparency;
  bool  do_fadein;
  bool  do_fadeout;
  bool  foreground;
  int   basetile_y;
  float xpos[4];
  float ypos[4];  
};

struct PARALLAX {
  import static void     clear(int layer);
  import static void     clear_all();
  import static int      get_free();
  import static int      add(int sprite_slot, float xspeed, bool x_repeat, bool autoscroll_x,float yspeed, bool y_repeat, bool autoscroll_y, bool foreground = false,  int transparency= 0);
  import static function default_parallax();
  import static void     set_static(int sprite);
  import static void     pause(bool enable);
  import static function set_sprite(short layer, short sprite_slot);
  import static function set_xspeed(short layer, float speed);
  import static function set_yspeed(short layer, float speed);
  import static function set_basetile_y(short layer, short basetile);
  import static function set_autoscroll(short layer, bool autoscroll_x, bool autoscroll_y);
  import static function set_scroll_repeat(short layer, bool xscroll_repeat, bool yscroll_repeat);
  import static function fade_in(int layer);
  import static function fade_out(int layer);
  import static function handle_parallax();
  import static function draw_parallax(bool do_foreground=false);   
};