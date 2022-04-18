// Script header for module 'Pixel Perfect Collisions'
// PLOING
// Author: Andrew MacCormack (SSH)
//   Please use the PM function on the AGS forums to contact
//   me about problems with this module
// 
// Abstract: Provides pixel perfect collision detection between
//           objects and characters.
//
// Dependencies:
//
//   AGS 2.71 or later
//
// Functions:
//
//  The module allows you to use pixel-perfect collision detection
//  instead of the default rectangle-based collisions of AGS
//
//  PPColliding.CWithC(Character *a, Character *b);
//  PPColliding.CWithO(Character *a, Object *b);
//  PPColliding.OWithC(Object *a, Character *b);
//  PPColliding.OWithO(Object *a, Object *b);
//    Check if a and b are colliding, for different types
//
//  PPColliding.CWithAnything(Character *a);
//  PPColliding.OWithAnything(Object *a);
//    Check if a is colliding with any object or character. Returns
//    the value of GetLocationType for the first collision found, but there
//    may be more than one collision.
//
// Example:
//
//    if (PPColliding.CWithO(cEgo, oBullet) Display("You're dead!");
//
//    if (PPColliding.OWithAnything(oBall)) Bounce();
//
//    // In AGS 3.0 and later, you can also access the functions like this:
//    player.PPCollidesWithC(cRoger)
//    player.PPCollidesWithO(oLadder)
//    oLadder.PPCollidesWithC(cRoger)
//    // etc.
//
// Caveats:
//    May be very slow if used in repeatedly_execute with large
//    objects. If things never intersect by much, then the XWithX 
//    functions should operate quite quickly, though.
//   
// Revision History:
//
// 28 Apr 06: v1.0  First release of Pixel Perfect Collisions module
//  1 May 06: v1.01 Made it work with AGS 2.71
//  7 May 08: v1.02 Fixed bug for CwithC and OwithO, added extender functions
//
// Licence:
//
//   Pixel Perfect Collisions AGS script module
//   Copyright (C) 2006, 2008 Andrew MacCormack
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


struct PPColliding {
  import static function CWithC(Character *a, Character *b);
  import static function CWithO(Character *a,    Object *b);
  import static function OWithC(   Object *a, Character *b);
  import static function BWithC(   Button *a, Character *b);
  import static function XYWithC(int topleft_x, int topleft_y, int width, int height, Character *b);
  import static function OWithO(   Object *a,    Object *b);
  import static function CWithAnything(Character *a);
  import static function OWithAnything(   Object *a);
};


import function PPCollidesWithC(this Character *, Character *b);
import function PPCollidesWithO(this Character *,    Object *b);
import function PPCollidesWithB(this Character *,    Button *b);
import function PPCollidesWithXY(this Character *, int topleft_x, int topleft_y, int width, int height);
import function PPCollidesWithC(this    Object *, Character *b);
import function PPCollidesWithO(this    Object *,    Object *b);
import function PPCollidesWithAnything(this Character *);
import function PPCollidesWithAnything(this    Object *);

