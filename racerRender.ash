// new module header
struct Render {
  import static int _rumbleWidth (int projectedRoadWidth, int lanes);
  import static int _laneMarkerWidth (int projectedRoadWidth, int lanes);
  import static void polygon(DynamicSprite *ds, int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, int color);
  import static void segment(DynamicSprite *ds, int width, int lanes, int x1, int y1, int w1, int x2, int y2, int w2, int fog, eColorType color_type, int n);
  import static void fog(DynamicSprite *ds,int x, int y, int width,int height,int amount);
  import static void sprite(DynamicSprite *ds, int width, int height, int resolution, int roadWidth, float sprite_scale, int sprite_slot,  float scale, int destX, int destY, float offsetX, float offsetY, int clipY, String text);
  import static void simple_sprite(DynamicSprite *ds, int sprite_slot, int destX, int destY, int destW, int destH, int clipY );

  import static void draw_horizont_line(DynamicSprite *ds, int width,  int y, eColorType color_type);
};