$fn=100;

difference() {
    union() {
        cylinder(h=6, d=40, center=true); // Hauptkoerper
        translate([15,0,5-3]) cube([30,10,10],center=true);                       // Anschraubungen
        rotate ([0,0, 70]) translate([15,0,5-3]) cube([30,10,10],center=true);    // Anschraubungen
        rotate ([0,0,-70]) translate([15,0,5-3]) cube([30,10,10],center=true);    // Anschraubungen
    }
    cylinder(h=100,d=7,center=true);                    // Achs-Bohrung
    translate([0,0,1]) cylinder(h=6,d=19,center=true);  // RiKuLa
    translate([0,0,7]) cylinder(h=8, d=42, center=true);    // Freibereich
    
    translate([ 25,0,-0.1]) cylinder(h=6,d1=6.5, d2=0,center=true);     // Senkung
    rotate ([0,0, 70]) translate([ 25,0,-0.1]) cylinder(h=6,d1=6.5, d2=0,center=true);     // Senkung
    rotate ([0,0,-70]) translate([ 25,0,-0.1]) cylinder(h=6,d1=6.5, d2=0,center=true);     // Senkung

    translate([ 25,0,0]) cylinder(h=100,d=3.5,center=true);  // Montage-Bohrung
    rotate ([0,0, 70]) translate([ 25,0,0]) cylinder(h=100,d=3.5,center=true);  // Montage-Bohrung
    rotate ([0,0,-70]) translate([ 25,0,0]) cylinder(h=100,d=3.5,center=true);  // Montage-Bohrung

}


