#declare  Bed =
	union{ 

#declare RestingPart =
	box{                //upper part of the box
		<0,0,2>
		<15,2,20> 
			pigment{
			image_map {jpeg "bedtex.jpg"}
				}
	};

object{
	RestingPart
	translate <-7,-1.6,0>
	} 

#declare BedStand = 
	union{

#declare Leg = 
	box{     
		<0,0,1>
		<.6,8,2>    
			pigment{
			image_map{"BedLegtex.jpg"}
				}  
	}

object{
	Leg          //vertical stand   
		translate <-1.5,0,0>
	}        

object{
	Leg          //vertical stand
		translate <7,0,0>
	}  

object{
	Leg          //horizontal stand
		rotate <0,0,90>
		translate <7,5,0>
	}  

object{
	Leg         //horizontal stand
	rotate <0,0,90>
	translate <7,2,0>
	}  
}

object{
	BedStand
		scale 1.8
		translate <-5,-8.5,0>
	}  
object{
	BedStand          //oppositeSide stand
		scale 1.8
		translate <-5,-8.5,17>
	}   
}  


