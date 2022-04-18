// new module header
struct cControls {
  int Up, Down, Left, Right, Interact, Shoot, Pause, Inv, Jump;
  int jUp, jDown, jLeft, jRight, jInteract, jShoot, jPause, jInv, jJump;
};

struct CTRL {
  import static function handle_controls_topdown();
  import static function handle_controls();
  import static function init_controls();
  import static bool     isControlUp();
  import static bool     isControlDown();
  import static bool     isControlLeft();
  import static bool     isControlRight();
  import static bool     isControlInteract();
  import static bool     isControlShoot();
  import static bool     isControlPause();
  import static bool     isControlInv();
  import static bool     isControlJump();  
};
//import cControls controls;