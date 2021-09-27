//const c = @import("pdcurses.zig");
//usingnamespace @import("zig-pdcurses.zig");

pub const black = @as(c_int, 0);
pub const blue = @as(c_int, 1);
pub const green = @as(c_int, 2);
pub const red = @as(c_int, 4);
pub const cyan = color_blue | color_green;
pub const magenta = color_red | color_blue;
pub const yellow = color_red | color_green;
pub const white = @as(c_int, 7);
