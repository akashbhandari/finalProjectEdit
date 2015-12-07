#declare Lamp = 
union{
	cone {
		<0,0, 0>, 3  
		<0, 3,  0>, 2 
			texture{
				pigment{
				color rgb<1,1,0>*2
					}
 				finish {ambient 1.8 diffuse .6}
				}
		translate <0,3.5,0>
	}

	cylinder{
		<0,0,0>
		<0,5,0>
		0.5
			texture{
				pigment{
					rgb<0.59,0.98,1>
					}
				}	
	}
	
	cylinder{
		<0,-1.9,0>
		<0,-1,0>
		1.5
		translate <0,1,0>
			texture{
				pigment{
					rgb<0.59,0.98,1>
		translate <0,5,0>
					}
				}
	}
};