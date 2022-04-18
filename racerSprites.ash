enum eSpriteSlot {
  eSpriteNone       = 0, 
  eSpriteTree       = 2, 
  eSpriteBill       = 8, 
  eSpriteBillBig    = 17, 
  eSpriteCurveLeft  = 103,
  eSpriteCurveRight = 102, 
  eSpritePresent      = 32, 
  eSpriteHouse        = 3, 
  eSpriteSnowmanRight = 4, 
  eSpriteSnowmanLeft  = 5
};


struct cSprites {
  bool active;
  eSpriteSlot sprite_slot;
  float offset;
  int destX, destY;
  int destW, destH;
};

struct SPRITES {
  import static void  clear(int idx);
  import static void  clear_all();
  import static int   get_free();
  import static int   add(eSpriteSlot sprite_slot, float offset);
  import static int   get_sprite_slot(int idx);
  import static float get_offset(int idx);
  import static void  prepare(int idx, int roadWidth, int width, float scale, float sprite_scale, int sprite_slot, int destX, int destY,  float offsetX, float offsetY);
  import static int   get_destX(int idx);
  import static int   get_destY(int idx);
  import static int   get_destW(int idx);
  import static int   get_destH(int idx);
  
};