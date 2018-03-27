include <vars.scad>;

module base() {
    CUTOUT_SIZE = BASE_SIZE / 3;
    CUTOUT_LENGTH = BASE_SIZE + 1;
    translate([BASE_SIZE / 2, BASE_SIZE / 2, BASE_SIZE / 2]) {
        difference() {
            cube(BASE_SIZE, center = true);
            cube([CUTOUT_LENGTH, CUTOUT_SIZE, CUTOUT_SIZE], center = true);
            cube([CUTOUT_SIZE, CUTOUT_LENGTH, CUTOUT_SIZE], center = true);
            cube([CUTOUT_SIZE, CUTOUT_SIZE, CUTOUT_LENGTH], center = true);
        }
    }
}

color("White", 1)
    base();