//TODO:
// Buttons testen

// Tile Engine Module by abstauber
// -------------------------------
//
// Version: 0.5
// - initial release
//
// Version: 0.51
// - raised the particle limit
// - fixed scrolling bug
// - dust is removed if the player dies 
// 
// Version: 0.52
// - fixed repeating enemy death animation
// - changed blocking load/save functions
// - hopefully fixed player getting stuck after enemy collision
// - fixed platforms with a speed > 1 (and updated the demo level)
// - added a FPS counter
// - reduced mouse-aiming refreshrate
// 
// Version: 0.6
// - frame rate optimizations
//
// Version: 0.61
// - updated Mappy export .lua script
// - improved performance on animated tiles
//
// Version: 0.7
// - updated Mappy export .lua script again
// - added joystick support (Thanks Wyz!)
//
// Version: 1.0
// - Tile editor based on "Art of Dying" by dkh
// - own level format
// - lots of fixes
// - top-down mode
//
// Licence:
//
//   Tile ENGine Module
//   Copyright (C) 2010 Dirk Kreyenberg
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to 
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in 
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
// DEALINGS IN THE SOFTWARE.


//*******************************************************************************
//*
//* Tile Codes
//*
//* Layer 1+2: Tiles
//* [1][2][3][4][5]
//*
//* [4]+[5] = Attribute = Tile Type
//* [3]     = sync tile animation for all tiles
//* [1]+[2] = Number of the Loop in the Tile View
//*
//* Possible Attributs:
//* 1       = simply solid
//* 2       = solid and destructible
//* 3       = solid bonus box
//* 4       = semi solid platform (in the background, good for ramps)
//* 5       = ramp
//* 6       = ramp support
//* 7       = ladder
//* 8       = solid ladder
//* 9       = forground ramp 
//* 10       = solid deadly  
//* 11       = deadly
//* 12       = water
//* 13      = ceiling ramp
//*
//* --------------------
//*
//* Layer 3: Items, Objects, Platforms and Waypoints
//* [1][2][3][4][5]
//*
//* Ojects start at 51
//* [4]+[5] = Attribute = Type
//* [3]     = Item invisible/stored in box (1 yes / 0 no) (items < 50)
//* [1]+[2] = Number of the Loop in the Item View (items < 50)
//*
//* Possible Attributs:
//* 1       = Waypoint
//* 2       = horz Platform
//* 3       = vert Platform
//* 11      = Mushroom
//* 51      = object1
//*
//* --------------------
//*
//* Layer 4: People and Enemies
//* [1][2][3][4][5]
//*
//* [4]+[5] = Attribute = Type
//* [3]     = 1 = Friendly 0 = hostile
//* [1]+[2] = Unused
//*
//* Possible Attributs:
//* 1       = Player
//* 2...99  = people 
//*
//* --------------------
//*
//* Layer 5: Hotspots
//* [1][2][3][4][5]
//*
//* [4]+[5] = Attribute = Type
//* [3]     = Unused
//* [1]+[2] = Unused
//* 1...99  = Hotspot ID
//*
//*
//*******************************************************************************

struct TENG {
  import static function start();
  import static function stop();
  import static function updateStatusGui();
  import static void     set_topdown_mode(bool enabled);
  import static bool     is_topdown_mode();
  import static bool     new_map(int tileset_sprite, int _num_tiles_x, int _num_tiles_y, int _size_tile_x, int _size_tile_y);
  import static bool     save_map(String filename,  int _tileset_sprite =0, bool use_savegamedir=true);
  import static bool     load_map (String filename, int _tile_scrolling_edge_h =0, int _tile_scrolling_edge_v=0, int custom_sprite_slot =0,  bool use_savegamedir=true);
  import static bool     update_map_classic(String filename);
  import static bool     load_map_classic ( String filename, int _size_tile_x, int _size_tile_y, int _tile_scrolling_edge_h, int _tile_scrolling_edge_v, int tile_sprite = -1,  bool strict=true);
  import static int      get_tile_strip_slot();
  import static void     set_tile_strip_slot(int slot);
  import static bool     check_for_saved_room (int room_number);
  import static function remove_saved_room(int room_number);
  import static function change_room(int number);
  import static function handle_player_death();
  import static function init_game () ;
  import static bool     clean_up();
};
