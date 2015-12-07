#include "RoomTextures"   
#include "colors.inc"  
#include "textures.inc"
 include "table.inc" 
 include "bowl.inc"
 include "chair.inc" 
 include "closet.inc" 
 include "Bed.inc" 
 include "Lamp.inc"    
 include "BookShelf" 
 include "flute.inc"


background{
         rgb<1,1,1>
}    

#declare RoomLength = 460;
#declare RoomHeight = 290;  
#declare RoomWidth = 430; 

#declare HalfRoomLength = RoomLength/2; 
#declare HalfRoomHeight = RoomHeight/2; 
#declare HalfRoomWidth = RoomWidth/2;
                                        
                                       
#declare AKHeight = 200;
#declare AKPos = <HalfRoomLength,HalfRoomHeight,30>;
#declare TablePos = <HalfRoomLength,HalfRoomHeight,RoomWidth-10>;     
#declare OutsideCam = <-HalfRoomLength,-HalfRoomHeight,0>;

//.........Cameras............
  

camera{
         location AKPos
         look_at TablePos
} 
 
#declare DoorView =
         camera{
                  location <-10,50,-600> 
                  look_at  <-50,0,0> 
                  angle 60 
} 


#declare WindowView =
         camera{ 
                  location <150,200,600>
                  look_at  <200,0,0>
} 
 
#declare ClosetCamera =        // looking at the Closet
         camera{ 
	         location <100,220,280>
	         look_at <800,-160,190>
}
 
 


#declare FarSightcamera =     //far away from the door
         camera{  
	         location<-100,0,-400>
	         look_at <200,145,420>
}
 
#declare CornerCamera =       //corner view from UpperAKPos     
         camera{            
                  location <HalfRoomLength+200,250,5>
                  look_at <110,135,420>
}   

#declare BedCamera =          //looking at the bed
         camera{                
                  location <HalfRoomLength+40,270,5>
                  look_at <290,135,420>
}    

#declare BeatlesCamera =     //Looking at the Beatles     
         camera{            
                  location <RoomLength,HalfRoomWidth+70,50>
                  look_at <-400,0,420>
}    
                 
                   
#declare MirrorCamera =     //looking at the mirror and the shelf
         camera{   
                  location <150,200,480>
                  look_at  <200,0,0>
}          

#declare HawkEyesCamera =   //long hawk view
         camera{      
                  location <HalfRoomWidth,120,100>
                  look_at <200,145,420>
                  angle 160
} 

//camera{                              
//       DoorView
//} 
 

//camera{
//         WindowView
//}

//camera{
//       ClosetCamera
//}

//camera{
//       FarSightcamera
//}  

//camera{
//      CornerCamera
//}
 
//camera{
//       BedCamera
//} 

camera{
       BeatlesCamera
}

//camera{
//       ClosetCamera
//} 

//camera{
//       MirrorCamera
//} 

//camera{
//       HawkEyesCamera
//}


  

//...........Light Sources.......




light_source{   //from door
         <0,0,-1900>
         rgb<1,1,1>
         area_light <250, 0, 0>, <100, 50, 5>, 5, 5
         adaptive 3
         jitter 
}


light_source{   //from window
         <0,0,1900>                                    
         rgb<1,1,1>                    
}            

light_source{     // spotight pointing towards poster
         AKPos
                  color White
                  spotlight 
                  radius 110
                  falloff 20
                  tightness 10   
         point_at <10, 150, 235>
} 
  
 light_source{      // pointing towards bed
         <40,150,RoomHeight-30>
                  color White
                  spotlight
                  radius 600
                  falloff 15
                  tightness 10
         point_at <390,60,240>  
}    

///.........For the background atmosphere............... 

plane{
         <0,1,0>,0 
      
         texture{ pigment {color rgb<0.1,0.3,0.75>*0.7}
         #if (version = 3.7 )  finish {emission 1 diffuse 0}
         #else finish { ambient 1 diffuse 0}
         #end 
} // texture 1

texture{ 
         pigment{ 
                  bozo turbulence 0.75        // ground fog at the horizon
         color_map {
                  [0.0  color rgb <0.95, 0.95, 0.95> ]
                  [0.05  color rgb <1, 1, 1>*1.25 ]
                  [0.15 color rgb <0.85, 0.85, 0.85> ]
                  [0.55 color rgbt <1, 1, 1, 1>*1 ]
                  [1.0 color rgbt <1, 1, 1, 1>*1 ]
                  } 
               } 
                  #if (version = 3.7 ) 
                  finish {emission 1 diffuse 0}
                  #else                 
                  finish { ambient 1 diffuse 0}
                  #end 
               } //  texture 2
                   scale 10000
}  
 

fog{
          fog_type 2.8               //ground
          distance  1000
          color  rgb<1,1,1>*0.9
          fog_offset 0.1
          fog_alt    20
          turbulence 1.8
} 
 
/*plane{ 
         <0,1,0>, 0 
                  texture{ 
                           pigment{color rgb<0.35,0.65,0.0>*0.8}
                           normal {bumps 0.75 scale 0.015}
                           finish {ambient 0.1 diffuse 0.8}
                         } 
} 
*/

//......................END................
  
#declare Window = 
         box{
                  <HalfRoomLength,HalfRoomHeight,HalfRoomWidth>
                  <RoomLength-50,RoomHeight,RoomWidth>
 
}; 

#declare Door = 
         box{
                  <0,0,0>
                  <80,180,10>
}; 

  
#declare Room = 
         box{
                  <0,0,0>
                  <RoomLength,RoomHeight,RoomWidth>  
};  
 
#declare Floor = 
         box{   //floor
                   <0,0.1,0>
                  <RoomLength,1,RoomWidth>  
                           pigment{
                                    image_map {"carpet.jpeg"}
                                    scale RoomLength
                                    } 
};
 
#declare Poster = 
         box{
                  <0,0,0>
                  <6,10,0>
}; 

#declare BedSheets = 
         box{
                  <1,0,1>
                  <4,0.1,0>
}; 

#declare TrashCan = 
         cone {
	         <0,0, 0>, 2.8  
                  <0, 3,  0>, 1.8
                           texture{
	                  pigment{
		                  color rgb<0.84,0.95 ,1>
		                  }     
		         normal { bumps 0.18 scale 0.2 }
                           finish { phong 1 }
                                    }

};
 

//......Mirror...........  

#declare Poster =
          box{
                  <0,0,0>
                   <6,10,0>
}; 

#declare MirrorSide = 
         union{ 

                  #declare MirrorSideways=box{
                           <0,0,0>
                           <30,4,0> 
                           }
                           
                                    

                           object{
                                    MirrorSideways
                                    rotate <0,180,0>
                                    scale 2
                                    translate<200,50,2> }

                           object{
                                    MirrorSideways
                                    rotate <0,180,0>
                                    scale 2
                                    translate<200,145,2> } 

                           object{
                                    MirrorSideways
                                    rotate <0,0,90>
                                    scale 3.39
                                    translate<210,50,2> } 

                           object{
                                    MirrorSideways
                                    rotate <0,0,90>
                                    scale 3.39
                                    translate<146,50,2> }   
};


object{
         MirrorSide
                  translate <40,0,-0.98> 
                           pigment{
                           image_map {"sidetex.jpg"}
                            }
}

object{       //MirrorGlass
         Poster
                  rotate <0,180,0>
                  scale 10
                  translate<236,50,1>           
                           texture{
                           pigment { Gray }
                           finish {
                           ambient .2
                           diffuse .1
                           specular .75
                           roughness .001
                           reflection {4}
                           metallic
                           }
                           } 
}



//...........END........  


       
       
              
         
difference{  
 
         object{
                  Room  
                           texture{
                           pigment{
                           rgb<1,0.50,0.14>
                           }
                           }
         }

         object{
                  Room 
                           scale 1
                           texture{
                           pigment{
                           rgb<1,0.50,0.14>
                           }
                           }
         } 
 
         object{
                  Window 
                           translate <-210,-70,0>     
         }

 
         object{
                  Window 
                           translate <10,-70,0>
         }
 
 
         object{
                  Door
                           translate <30,1,0> 
         }

         texture{   //room color

                  pigment{
                           rgb <1,1,1>
                           }
         }

}
/////Difference Ends.......

object{   //Floor
         Floor 
} 

object{
         Table
                  rotate<0,0,0> 
                  translate<80,30,300>
                  scale <0,1.8,0>
}    

 
object{
         bowl
                  scale 5 
                  translate <57,70,315>        
}   
 
object{
         WholeChair
                  translate<90,0,260>
} 

  
object{    //BeatlesPoster
         Poster
         scale 10
         rotate <0,90,0>
         translate <1,100,320>
                  pigment{ 
                           image_map {"beatles.jpg"}
                           rotate <0,90,0> 
                           scale 80
                           translate <40,27,6>
                            }
}   
 
object{      //Shelf
         BookShelf  
                  texture{
                           pigment{DMFWood3}
                  }                  
                  rotate <0,90,180>  
                  scale 12
                  translate <140,71,145>
} 

object{
         Bed
                  rotate <0,0,0>
                  scale 5.8
                  scale<0,0,1.4>
                  translate <385,57,230>
}
  

object{   //BedSheets
         BedSheets 
                  rotate<180,90,0> 
                  scale 50  
                  scale <1.65,1,0>
                  translate <429,65,445> 
                  pigment{
                           image_map {"PokemonSheets.jpg"}  
                  rotate <90,90,0> 
                  scale 77.6
                  translate <40,27,6>
                           }
}  

object{
         TrashCan  
                  rotate <0,0,180>
                  scale <0,3,0>
                  scale 4.5
                  translate <345,70,225>
}  

object{
         Closet	
                  rotate <0,90,0>
                  scale <20,40,20>
                  translate <380,60,160>
         finish{    
         roughness 0.75
         specular .35
                  }
}  

object{
         Lamp
                  scale <6,16,0>
                  translate <200,10,335> 
}


object{   //flute
         Flute   
                  scale 9
                  rotate <0,0,90> 
                  translate <137,78,350>   
}



 
  
 


 
/*camera{
         perspective
         location <80,200,500>
         look_at  <200,0,0> 
         angle 60
         focal_point bowl
         aperture .9
         blur_samples 90
}
 */




                                  



 




          























  
  
               
               
               
               
               
               




































