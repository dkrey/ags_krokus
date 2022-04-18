// KeySwap   Module Script Header
// Based on KeySwap2 by Dualnames

enum eMapKeys {
  eMKUp, 
  eMKDown, 
  eMKLeft, 
  eMKRight,
  eMKJump, 
  eMKInteract, 
  eMKShoot,
  eMKInv, 
  eMKPause, 
  eMKLastKey
};


struct cKeyMap {
  int keycode; 
  String desc;
};


struct KeySwap {
  import static function GetKey(GUIControl *control);
  import static String   GetKeyDesc(eMapKeys theKey);
  import static function GetKeyMenu(int selectedItem);
  import static function Refresh();
  import static bool     Save();
  import static bool     Load(bool default_value = false);
};

import cKeyMap keyMap[eMKLastKey];