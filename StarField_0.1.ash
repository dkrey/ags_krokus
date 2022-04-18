// new module header

/*
    function room_Load() {
     
      StarField.SetCenter(180, -20);  // not necessary, default is center of screen
      StarField.Do(3000, 15);  // 3000 stars, speed 15
    }
*/

struct star_str {
  bool used;
  float x, y, z, r;
};

struct StarField {
  import static void Do(int number_of_stars = 500, int speed_of_stars = 10);
  import static void Dont();
  import static void SetCenter(int x, int y);
};