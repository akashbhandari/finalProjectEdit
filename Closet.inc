#declare Closet = 
	union{
		#declare Box = 
				box{
					<0,0,0>
					<2,3,2>
					texture{
					pigment{
					image_map {"Wood.jpg"}
					}
					}
				}

object{ 
	Box} //original upper box

object { 
	Box  //left side box
		translate <2.1,0,0>}

object{ 
	Box              // first drawers
		translate <0,-3.1,0>
		scale <2.07,0.2,0>
			texture{
			pigment{
		  	image_map {"woodtexture.jpg"}
			}
			}
	}	

object{ 
	Box        //second drawers
		translate <0,-6.4,0>
		scale <2.07,0.2,0>
			texture{
			pigment{
			image_map {"woodtexture.jpg"}
				}
				}
	}
}

/*
#declare Handle = union{
cylinder{
	<0,0,0>
	<0,1,0>
	.1
	translate <0,0,-10>
}

cylinder{
	<0,0,0>
	<0,1,0>
	.1
	rotate <0,0,90>
	translate <0.1,0,-10>
}

cylinder{
	<0,0,0>
	<0,1,0>
	.1
	rotate <0,0,90>
	translate <0.1,1,-10>
}
};
*/
//object{
//	Handle
//	rotate <0,0,180>
//	scale .5
//}

