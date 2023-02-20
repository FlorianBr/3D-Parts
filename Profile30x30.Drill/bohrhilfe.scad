$fn=100;

difference() {
    cube([50,30,15],true);

    translate([50/2-15,0,0]) {
        translate([0,0,5]) cylinder(h=6,d=11,center=true);  // Mutter 1
        translate([0,0,-5]) cylinder(h=6,d=11,center=true);  // Mutter 2
        cylinder(h=20,d=7,center=true);  // Mutter 1

    }
}

translate([-12,0,-5])
cube([25,6,10],true);
