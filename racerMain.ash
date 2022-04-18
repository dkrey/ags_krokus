// RoadEngine header
/*
Based on javascript-racer
https://github.com/jakesgordon/javascript-racer/
http://codeincomplete.com/posts/2012/6/23/javascript_racer_v1_straight/

Copyright (c) 2012, 2013 Jake Gordon and contributors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

===============================================================================
*/


struct RACR {
  import static void init();
  
  import static void update();
  import static void render();
  import static void render_road(int baseSegment_idx);
  import static void render_sprites(int baseSegment_idx);
  import static void render_sprites_behind(int baseSegment_idx);
  import static void pause();
  import static void add_snow();
  import static void unpause();
  import static bool is_paused();
  import static void start();
  import static void stop();
  import static void clear_all_segments();
  import static void clear_all_seg_points();
  import static void cleanup();
  import static int  get_max_laps();
  import static int  get_lap_cnt();
  import static void set_max_laps(int cnt);
  import static int  get_collected_items();
  import static void turnoff_controls(bool block_enabled);
  import static int get_lifes();
  import static void set_lifes(int amount);
  import static void decrease_life();
  import static void increase_life();  
  import static void handle_GUI();
};