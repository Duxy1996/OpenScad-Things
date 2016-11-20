infinite = 1000;
high = 300;
for(k =  [0 : 1 : 16]){
    for(j =  [0 : 1 : 7]){        
        translate([100*j, k*100, 0])        
        group(){
            cylinder(high,20,20,$fn=infinite);    
            for(i =  [0 : 10 : 360]){       
                rotate([0,0,i])             
                cube([2,21,high],false);       
            }
        }
    }
}
group(){
    rotate([0,0,-90])
    translate([-1620,-20,300])
    cube([1642,750,35],false); 

    rotate([0,0,-90])
    translate([-1620,-20,335])
    prism(1642, 375, 100);

    rotate([0,0,-270])
    translate([-22,-730,335])
    prism(1642, 375, 100);

    translate([-25,-22,0])
    cube([750,1642,5],false);
}

module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
       }