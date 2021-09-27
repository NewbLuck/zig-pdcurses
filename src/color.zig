//const c = @import("pdcurses.zig");
//usingnamespace @import("zig-pdcurses.zig");

pub const black = @as(c_int, 0);
pub const blue = @as(c_int, 1);
pub const green = @as(c_int, 2);
pub const red = @as(c_int, 4);
pub const cyan = blue | green;
pub const magenta = red | blue;
pub const yellow = red | green;
pub const white = @as(c_int, 7);
