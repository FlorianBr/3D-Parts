$fn=50;

difference() {
    union() {
        cylinder(d=10,h=6,center=true);
        translate([0,0,-4]) cylinder(d=30,h=2,center=true);
    }
    translate([1,0,0]) cylinder(d=5,h=50,center=true);
}