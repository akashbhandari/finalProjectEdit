                                                          
#declare chairWidth = 50;
#declare chairHeight = 80;
#declare chairDepth = 52;
#declare chairSeatHeight = 44;

#declare WholeChair = 
	union{

		#declare chairBack = 
   			 box {
       			<0,chairSeatHeight,0>
        			<chairWidth, chairHeight+5, 5> 
   			 };

#declare chairSeat = 
   			 box {
       			<0, chairSeatHeight, 0>
        			<chairWidth, chairSeatHeight+5, 						chairDepth> 
        		pigment{
        		image_map {"chairtex.jpg"}
  				}
   			};

	     #declare chairLeg =
    			cylinder {
       			<0,0,0>
        			<0, chairSeatHeight, 0>
        			1
    			};  

		#declare chair =
   			 union {
       			 object { 
					chairBack
        					scale <0,1.2,0> 
						translate <0,-2.6,0>
					}
        			object { 
					chairSeat
					}

     ////// placing the four chair legs			
        			object {
            			chairLeg
            				translate <chairWidth, 0, 0>
            
        				}
        			object {
            			chairLeg
            				translate <chairWidth, 0, 								chairDepth>
        				}
        			object {
           			 chairLeg
            				translate <0, 0, 0>
        				}
        			object {
            			chairLeg
            				translate <0, 0, chairDepth>
        				}
    
texture { //ChairTexture
		pigment{
		rgb<1,1,1>
		}
 	}
 };

object{
	chair}
}

