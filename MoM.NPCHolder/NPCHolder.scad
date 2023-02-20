$fn=100;
difference() {
    cylinder(5,d1=20,d2=16,center=true);
    translate([0,0,25/2-2]) rotate(90,[1,0,0]) cylinder(2,d=25,center=true);
    translate([0,0,2.5]) cylinder(2,d1=10,d2=20,center=true);
}

