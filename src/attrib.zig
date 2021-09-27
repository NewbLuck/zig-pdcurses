usingnamespace @import("zig-pdcurses.zig");

pub const normal = c.A_NORMAL;
//pub const char_text = c.A_CHARTEXT;
//pub const alt_charset = c.A_ALTCHARSET;
pub const right = c.A_RIGHT; //?
pub const left = c.A_LEFT; //?
pub const invis = c.A_INVIS;
pub const underline = c.A_UNDERLINE;
pub const reverse = c.A_REVERSE;
pub const blink = c.A_BLINK;
pub const bold = c.A_BOLD;
pub const overline = c.A_OVERLINE;
pub const strikeout = c.A_STRIKEOUT;
pub const dim = c.A_DIM;
pub const italic = c.A_ITALIC;
pub const protect = c.A_PROTECT;
pub const standout = c.A_STANDOUT;

pub inline fn color(col:i16) i32 {
    return c.A_COLOR(col);
}
pub inline fn colorPair(pair:ColorPair) i32 {
    return c.COLOR_PAIR(pair.id);
}