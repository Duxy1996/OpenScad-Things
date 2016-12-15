infinite = 25;
high = 300;
group(){
group(){
for(s =  [0 : 1 : 1]){
    for(k =  [1 : 1 : 15]){    
        translate([s*700,k*100, 0])        
            group(){
                cylinder(high,20,20,$fn=infinite);    
                for(i =  [0 : 10 : 360]){       
                    rotate([0,0,i])
                    translate([0,19,0])
                    cube([2,2,high],false);       
                }
            }
    }
    for(j =  [0 : 1 : 7]){        
            translate([100*j,s*1600, 0])        
            group(){
                cylinder(high,20,20,$fn=infinite);    
                for(i =  [0 : 10 : 360]){       
                    rotate([0,0,i])             
                    cube([2,21,high],false);       
                }
            }
        }
}
}

translate([-25,-22,-5])
cube([750,1642,5],false);

translate([800,0,-300
])
group(){
    rotate([0,0,-90])
    translate([-1620,-20,300])
    cube([1642,750,60],false); 

    rotate([0,0,-90])
    translate([-1620,-20,360])
    prism(1642, 375, 100);

    rotate([0,0,-270])
    translate([-22,-730,360])
    prism(1642, 375, 100);    
    
    translate([-20,-32,350])
    cube([750,10,10],false);
    
    translate([-17,-32,350])
    rotate([0,-15,0])
    cube([388,10,10],false);
    
    translate([730,-32,360
    ])
    rotate([0,-165,0])
    cube([388,10,10],false);
    
}

}

module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
       }