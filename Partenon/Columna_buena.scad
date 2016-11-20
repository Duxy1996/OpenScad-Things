
infinite = 1000;

group(){
    cylinder(300,20,20,$fn=infinite);    
    for(i =  [0 : 10 : 360]){       
        rotate([0,0,i])
        translate([0,19,0])
        cube([2,2,300],false);       
    }
}