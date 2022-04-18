// new module header

enum eJoyBtns {
  eJoyInteract, 
  eJoyShoot,
  eJoyJump, 
  eJoyInv, 
  eJoyPause, 
  eJoyLastkey
};

import int mapJoyBtn[eJoyLastkey];
import Joystick *joy;

struct MapJoy {
  import static function Init_joystick();
  import static function Get_joysticks();
  import static function Get_joy_menu(int selectedItem);
  import static function Get_free_joystick();
  import static String   GetJoyDesc(eJoyBtns theButton);
  import static String   GetJoyName();
  import static function Refresh();
  import static function Set_button(GUIControl *control);
  import static bool     Save();
  import static bool     Load(bool default_value=false);
};