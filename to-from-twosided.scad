detail = 40;
thick = 5;

to_name = "###";
from_name = "Are";

c_w = 50;
c_h = 30;

difference() {
cube(size = [c_w,c_h,thick], center = true);

translate([-15, -5, 0])
    t(to_name, 14);

// from_name
translate([-20, -3, -2])
    rotate ([180,0,0])
        t("from", 8);

translate([-5, 5, -1])
    rotate ([180,0,0])
        t(from_name);

//hole
translate([-20, 10, 0])
    cylinder(h = 30, r = 2, center = true, $fn = detail);
}

module t(t, s = 10, style = "") {
linear_extrude(height = 20)
  text(t, size = s, font = str("Liberation Sans", style), $fn = detail);
}