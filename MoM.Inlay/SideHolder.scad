
H=100;
W=10;
D=2;

difference() 
{
    union () {
        translate([0,W/2,0]) cube([H,W,D],center=true);
        translate([0,0,W/2]) cube([H,D,W],center=true);
        translate([0,D,D]) rotate([45,0,0]) translate([0,-D/2,0]) cube([H,D,2*D],center=true);    
        difference() 
        {
            translate([H/2-W/2,W/2,W/2]) cube([W,W,W],center=true);
            translate([H/2-1.2*W,W,W])
            rotate([-45,0,0]) 
            rotate([0,-45,0]) 
            cube([2*W,2*W,2*W],center=true);
        }
    }
    rotate([45,0,0]) translate([0,-W/2,0]) cube([2*H,W,W],center=true);
}



