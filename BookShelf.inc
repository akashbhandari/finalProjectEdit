#declare BookShelf =
	union{ 

#declare Shelf = 
	box{
		<0,0,0>
		<5,8,1> 
	}
   

object{         //BackPart
	Shelf    
		scale <0.8,1.8,0>
		translate <-2.7,-10,9>
 	}   

object{         //BottomPart
	Shelf  
		rotate <0,90,90>
		translate <5,4,10.7> 
	}     

object{         //SecondPart
	Shelf  
		rotate <0,90,90>
		translate <5,-5.7,10.7>
	}           

object{         //ThirdPart
	Shelf  
		rotate <0,90,90>
		translate <5,-1,10.7>
	}     

object{         //FirstPart
	Shelf  
		rotate <0,90,90>
		translate <5,-10,10.7>
	}   

object{         //RightSidePart
	Shelf  
		rotate <0,90,0>
		translate <3.9,-5,10> 
		scale <0,1.92,0>
	}          


object{         //LeftSidePart
	Shelf  
		rotate <0,90,0>
		translate <-2.8,-5,10> 
		scale <0,1.9,0>   
	}
}

object{
	BookShelf  
		texture{
		pigment{DMFWood3}}
}   




                 
            

     





                 
            

     

