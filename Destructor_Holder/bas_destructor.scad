infinite = 1000;

translate([0, 0, 0])
cube([1,10,40],false);

translate([0, 5, 0])
cylinder(2,20,20,$fn=infinite);

translate([70, 0, 0])
cube([1,10,40],false);

translate([70, 5, 0])
cylinder(2,20,20,$fn=infinite);

translate([35, 100, 0])
cube([1,10,40],false);

translate([35, 105, 0])
cylinder(2,20,20,$fn=infinite);

rotate([0,0,-15])
translate([0, 0, 0])
cube([10,110,2],false);

rotate([00,0,15])
translate([60, 0, 0])
cube([10,110,2],false);
