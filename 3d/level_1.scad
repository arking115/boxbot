$fn=100;

height_diff=300;
 
 
module l_bracket(){
    
    for ( i = [0 : 5] ){    
        translate([30+i*8.4,15.6,0]){ 
            cylinder(h=height_diff, r=1.6, center=true);
        }    
     }
     
     for ( i = [0 : 5] ){    
        translate([30+i*8.4,-15.6,0]){ 
            cylinder(h=height_diff, r=1.6, center=true);
        }    
     }
    
}



difference(){
    
    translate([-200,-200,0]){
          cube(size=[400,400,4]);
    }
        
        
    //sub wheel 1
    translate([-160,0,0]){
        
        cube(size=[40,130,height_diff],center=true);
        
        l_bracket();
        
    }



     
    //sub wheel 2
    translate([170,0,0]){
        cube(size=[26,100,height_diff],center=true);
        
        translate([-16.4,15.6,0]){ 
           cylinder(h=height_diff, r=1.6, center=true, $fn=100);
        }
        translate([-54.8,15.6,0]){ 
           cylinder(h=height_diff, r=1.6, center=true, $fn=100);
        }

        translate([-16.4,-15.6,0]){ 
           cylinder(h=height_diff, r=1.6, center=true, $fn=100);
        }
        translate([-54.8,-15.6,0]){ 
           cylinder(h=height_diff, r=1.6, center=true, $fn=100);
        }
        
    }




    // ball caster 1

    //translate([0,-140,0]){
    // cube(size=[90,90,height_diff],center=true);
    //}


    // ball caster 2

    //translate([0,140,0]){
    // cube(size=[90,90,height_diff],center=true);
    //}
    
    
    // frame
    // 1 1
    translate([-200,200,0]){
        cube(size=[30,30,height_diff],center=true);
    }
    
    
    translate([-190,150,0]){
        cylinder(h=height_diff, r=2.6, center=true, $fn=100);
    }
    
    translate([-190,50,0]){
        cylinder(h=height_diff, r=2.6, center=true, $fn=100);
    }
    
    translate([-50,190,0]){
        cylinder(h=height_diff, r=2.6, center=true, $fn=100);
    }
    
    translate([-150,190,0]){
        cylinder(h=height_diff, r=2.6, center=true, $fn=100);
    }
     
    
    





    // power battery

    translate([0,-33.5,0]){ 
         cylinder(h=20, r=1.3, center=true, $fn=100);
    }

    translate([0,33.5,0]){ 
         cylinder(h=20, r=1.3, center=true, $fn=100);
    }





    //cube(size=[200,200,20],center=true);

    //translate([-120,120,0]){
    // cube(size=[100,100,20],center=true);
    //}

    //translate([35,0,0]){
    // cube(size=[40,100,20],center=true);
    //}

}




