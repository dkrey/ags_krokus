// new module header
enum eOrder {
  eOrderAscending,
  eOrderDescending
};
 
import int[] SortInts(int a[],  int length, eOrder order = eOrderAscending);

struct INFO {
  import static int      get_char_width (Character *a);
  import static int      get_char_height (Character *a);
  import static void     draw_debug_dot(int xpos, int ypos, int color);
  import static int      total(int number);
};

struct Util {
  import static float increase(float start,  float increment,  float max);
  import static float accelerate(float v, float accel, float dt);
  import static float clampFloat(float f, float lower, float upper);
  import static int   clampInt(int f, int lower, int upper);
  import static float fMod(float val1,  float val2);
  import static float max_f (float val1, float val2);
  import static int   max_i (int val1, int val2);
  import static float min_f (float val1, float val2);
  import static int   min_i (int val1, int val2);
  import static int   distance (int x1, int y1, int x2,  int y2);
  import static float easeIn(float a, float b, float percent);
  import static float easeOut(float a, float b, float percent);
  import static float easeInOut(float a, float b, float percent);
  import static float percentRemaining(float n, float total);
  import static float interpolate(float a,float b,float percent);
  import static int   colorToRGB(int color, int channel);
  import static float randomFloat(float max) ;
  import static int   randomHighInt(int max) ;
  import static bool  overlap(float x1, float w1, float x2, float w2, float percent);
  import static bool  overlap2(int x1, int w1, int x2, int w2, int tolerance);
};