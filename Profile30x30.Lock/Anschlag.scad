// Anschlag für Klappen aus 6mm Multiplex
$fn=100;

difference() {
    union() {
        cube([50,18,10],true);
        translate([ 15,0,-5]) cube([10,6,6],true);
        translate([-15,0,-5]) cube([10,6,6],true);
    }
    translate([0,0,5]) cylinder(h=10,d=12,center=true);  // Sachloch
    cylinder(h=50,d=7,center=true);  // Durchgangsbohrung
}
