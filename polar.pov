// This work is licensed under the Creative Commons Attribution 3.0 Unported License.
// To view a copy of this license, visit http://creativecommons.org/licenses/by/3.0/
// or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View,
// California, 94041, USA.

// Persistence Of Vision raytracer sample file.
// Hexagon pattern example
//
// -w320 -h240
// -w800 -h600 +a0.3

#version 3.7;

global_settings { assumed_gamma 1.0 }

#include "colors.inc"

camera {
  location <0,1,-14>
  right     x*image_width/image_height   
  rotate<15,30,0>
  angle 25  
}

plane {
  y, -1.01
  pigment { checker color rgb<1,1,1>*1.1 , color rgb<1,1,1>*0 }
}

plane {
  z, 3.01
  hollow on
  pigment {White*1.1 }
}

light_source { <300, 200, -700> color rgb<1,1,1>*1.00 }        


intersection {
    cylinder { <0,-1,0>,<0,1,0>,1
  pigment {    
     
      polar 
      
      
      color_map {

        [0.0  color rgb <255,255,255>]
        [0.2  color rgb <255,255,255>]
        [0.2  color rgb <0,255,0>]
        [0.3  color rgb <0,255,0>]
        [0.3  color rgb <255,255,255>]
        [0.5  color rgb <255,255,255>]

        [0.5  color rgb <255,0,0>]
        [0.7  color rgb <255,0,0>]
        [0.7  color rgb <255,255,255>]
        [0.8  color rgb <255,255,255>]
        [0.8  color rgb <0,255,0>]
        [0.9  color rgb <0,255,0>]
        [0.9  color rgb <255,255,255>]
        [1.0  color rgb <255,255,255>]

      } 
      rotate<90,-0,270>
         
   } rotate<0,0,0>}
    box { <0.1,-1,1.1>,<1.1,1.1,-1.1> 
    }   
   pigment {    
     
      polar 
                          
      
      color_map {

        [0.0  color rgb <255,255,255>]
        [0.2  color rgb <255,255,255>]
        [0.2  color rgb <0,255,0>]
        [0.3  color rgb <0,255,0>]
        [0.3  color rgb <255,255,255>]
        [0.5  color rgb <255,255,255>]

        [0.5  color rgb <255,0,0>]
        [0.7  color rgb <255,0,0>]
        [0.7  color rgb <255,255,255>]
        [0.8  color rgb <255,255,255>]
        [0.8  color rgb <0,255,0>]
        [0.9  color rgb <0,255,0>]
        [0.9  color rgb <255,255,255>]
        [1.0  color rgb <255,255,255>]

      }   
      rotate<90,-0,270>
         
   } 
   
     rotate<0,0,0>
}