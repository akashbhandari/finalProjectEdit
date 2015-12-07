#declare Table = 
	union{ 

#declare UpperPart =
	 box{ //upper part of the box
		<-50,0,0>
		<100,10,60> 
			pigment{
			image_map {jpeg "woodtexture.jpg"}
			}
};

object{
	UpperPart
}

#declare Leg = 
	cylinder{  
		<0,-30,0>
		<0,0.5,0>
		2.5   
			pigment{
			image_map {jpeg "leg.jpg"} 
			}
};

object{       //leg1
	Leg
		translate <-40,0,0>
}  

object{
	Leg
		translate <90,0,0>
}       
 
object{
	Leg
		translate <-40,0,50>
}

object{
	Leg
		translate <90,0,50>
	}
}


