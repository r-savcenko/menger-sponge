include <vars.scad>;
use <base.scad>;

module some(ITERATION) {
    KOEF = BASE_SIZE * pow(3, ITERATION - 1);
    union() {
        for(I=[0:len(OBJECT_MATRIX) - 1]) {
            if(OBJECT_MATRIX[I] == 1) {
                Z=floor(I/9);
                X=I%9%3;
                Y=floor(I%9/3);
                translate([
                    X * KOEF,
                    Y * KOEF,
                    Z * KOEF
                ]) {
                    children();
                }
            }
        }
    }
}

some(2) some(1) base();