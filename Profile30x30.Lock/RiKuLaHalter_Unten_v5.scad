$fn=100;

difference() {
    union() {
        cylinder(h=4, d=40, center=true);  // Hauptkoerper
        translate([15,0,5-2]) cube([30,10,10],center=true);                       // Anschraubungen
        rotate ([0,0, 70]) translate([15,0,5-2]) cube([30,10,10],center=true);    // Anschraubungen
        rotate ([0,0,-70]) translate([15,0,5-2]) cube([30,10,10],center=true);    // Anschraubungen
    }
    cylinder(h=50,d=19,center=true);      // RiKuLa
    translate([0,0,6]) cylinder(h=8, d=42, center=true);    // Freibereich

    translate([ 25,0,0]) cylinder(h=100,d=3.5,center=true);  // Montage-Bohrung
    rotate ([0,0, 70]) translate([ 25,0,0]) cylinder(h=100,d=3.5,center=true);  // Montage-Bohrung
    rotate ([0,0,-70]) translate([ 25,0,0]) cylinder(h=100,d=3.5,center=true);  // Montage-Bohrung

    // translate([ 25,0,-1]) cylinder(h=5,d1=6, d2=0,center=true);     // Senkung
    
    translate([ 25,0,-1]) cylinder(h=5,d=6.5,center=true, $fn=6);   // 6-Kant
    rotate ([0,0, 70]) translate([25,0,-1]) cylinder(h=5,d=6.5,center=true, $fn=6);   // 6-Kant
    rotate ([0,0,-70]) translate([25,0,-1]) cylinder(h=5,d=6.5,center=true, $fn=6);   // 6-Kant
}


