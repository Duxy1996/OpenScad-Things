








group(){
    difference(){
        translate([-25,-40,195])
        cube([50,80,300],false);
    
        translate([-40,-40,490])
        rotate([0,45,0])
        cube([100,160,50],false);    
    }
}


translate([0,-10,0])
rotate([0,0,90])
group(){
    rotate([0,90,0])
    translate([-70,0,0])
    difference(){
        cylinder(20,100,100);
        group(){
            translate([0,-100,0])
            cube([100,200,20],false);
            cylinder(20,80,80);
        }
    
    }
}
translate([0,0,60])
cylinder(50,50,40);

translate([0,0,10])
cylinder(50,90,80);

cylinder(10,90,90);

for(k =  [0 : 1 : 3]){
    rotate([0,0,90*k])
    translate([-25,80,0])    
    cube([50,50,10],false);
}
B = 100; //-- Base larga
b = 50; //-- Base corta
h = 60; //-- Altura
translate([0,0,150])
rotate([90, 180, 0]) 
linear_extrude(height = 80, center = true) 
polygon(points = [
                  [-B/2, -h/2],
                  [-b/2, h/2],
                  [b/2, h/2],
                  [B/2, -h/2]
                 ]);

B = 100; //-- Base larga
b = 50; //-- Base corta
h = 30; //-- Altura
translate([0,0,180])
rotate([90, 0, 0]) 
linear_extrude(height = 80, center = true) 
polygon(points = [
                  [-B/2, -h/2],
                  [-b/2, h/2],
                  [b/2, h/2],
                  [B/2, -h/2]
                 ]);