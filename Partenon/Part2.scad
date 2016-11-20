infinite = 1000;
high = 300;

for(s =  [0 : 1 : 1]){
    for(k =  [1 : 1 : 15]){    
        translate([s*700,k*100, 0])        
            group(){
                cylinder(high,20,20,$fn=infinite);    
                for(i =  [0 : 10 : 360]){       
                    rotate([0,0,i])             
                    cube([2,21,high],false);       
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

module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
       }