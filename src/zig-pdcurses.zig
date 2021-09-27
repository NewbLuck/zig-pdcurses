const std = @import("std");
pub const c = @import("pdpanel.zig");
pub const chars = @import("chars.zig");
pub const mouse = @import("mouse.zig");
pub const keys = @import("keys.zig");

pub const chtype = c.chtype;
pub const char_size = @bitSizeOf(chtype);

pub const CursorVisibility = enum(i32) {
    invisible = 0,
    normal = 1,
    emphasized = 2,
};

// Sets when initScr runs
pub var std_scr:Window = undefined;

var global_alloc:*std.mem.Allocator = undefined;
pub var panel_cache:std.AutoHashMap(usize, *Panel) = undefined;

pub const Border = struct {
    char_l:chtype = chars.vline,
    char_r:chtype = chars.vline,
    char_t:chtype = chars.hline,
    char_b:chtype = chars.hline,
    char_tl:chtype = chars.ulcorner,
    char_tr:chtype = chars.urcorner,
    char_bl:chtype = chars.llcorner,
    char_br:chtype = chars.lrcorner,
};

pub const Position = struct { x:i32 = -1, y:i32 = -1 };

pub const MouseEvent = struct {
    const Self = @This();
    
    id:i8,
    x:i32,
    y:i32,
    z:i32,
    bstate:u32,

    // COULD PROBABLY USE OFFSET MATH HERE, but jic call them as is in case
    // the library changes (one in a million chance)
    pub fn buttPress(self:Self,button:u8) bool {
        return switch(button) {
            1 => return self.bstate & mouse.butt1_press,
            2 => return self.bstate & mouse.butt2_press,
            3 => return self.bstate & mouse.butt3_press,
            4 => return self.bstate & mouse.butt4_press,
            5 => return self.bstate & mouse.butt5_press,
            else => false,
        };
    }
    pub fn buttRelease(self:Self,button:u8) bool {
        return switch(button) {
            1 => return self.bstate & mouse.butt1_release,
            2 => return self.bstate & mouse.butt2_release,
            3 => return self.bstate & mouse.butt3_release,
            4 => return self.bstate & mouse.butt4_release,
            5 => return self.bstate & mouse.butt5_release,
            else => false,
        };
    }
    pub fn buttClick(self:Self,button:u8) bool {
        return switch(button) {
            1 => return self.bstate & mouse.butt1_click,
            2 => return self.bstate & mouse.butt2_click,
            3 => return self.bstate & mouse.butt3_click,
            4 => return self.bstate & mouse.butt4_click,
            5 => return self.bstate & mouse.butt5_click,
            else => false,
        };
    }
    pub fn buttDoubleClick(self:Self,button:u8) bool {
        return switch(button) {
            1 => return self.bstate & mouse.butt1_double_click,
            2 => return self.bstate & mouse.butt2_double_click,
            3 => return self.bstate & mouse.butt3_double_click,
            4 => return self.bstate & mouse.butt4_double_click,
            5 => return self.bstate & mouse.butt5_double_click,
            else => false,
        };
    }
    pub fn buttTripleClick(self:Self,button:u8) bool {
        return switch(button) {
            1 => return self.bstate & mouse.butt1_triple_click,
            2 => return self.bstate & mouse.butt2_triple_click,
            3 => return self.bstate & mouse.butt3_triple_click,
            4 => return self.bstate & mouse.butt4_triple_click,
            5 => return self.bstate & mouse.butt5_triple_click,
            else => false,
        };
    }
    // This probably is incorrect, couldn't find good docs 
    pub fn mouseScroll(self:Self) bool {
        return self.bstate & mouse.mouse_wheel_scroll;
    }
    // butt shift ctrl alt / mod shift ctrl alt?

    pub fn transform(window:?Window) !Position {
        var pos = Position{};
        if(window) |win| {
            if(!c.wmouse_trafo(win.ptr,pos.x,pos.y,true)) return error.InvalidCoordinates;
        } else {
            if(!c.mouse_trafo(pos.x,pos.y,true)) return error.InvalidCoordinates;
        }
        return pos;
    }
};

// Window restructuring, basically just calls the w-type fns
// Some added funtionality with borders, not fully implemented
pub const Window = struct {
    const Self = @This();

    ptr:[*c]c.WINDOW = null,
    
    bord:?Border = null,

    height:i32 = 0,
    width:i32 = 0,
    row:i32 = 0,
    col:i32 = 0,

    //border_chars:[]const u8 = "\u2502\u2502\u2500\u2500\u250c\u2510\u2514\u2518",
    
    pub fn init(height:i32,width:i32,row:i32,col:i32) Self {
        var nwin = Window{
            .height = height,
            .width = width,
            .row = row,
            .col = col,
        };
        nwin.ptr = c.newwin(height,width,row,col);
        return nwin;
    }
    /// Shorthand for creating a border,
    pub fn box(self:Self,vert_ch:chtype,horiz_ch:chtype) void {
        _=c.box(self.ptr,vert_ch,horiz_ch);
    }
    /// Draws a border for the window
    pub fn border(
        self:Self,
        char_l:chtype, char_r:chtype, char_t:chtype, char_b:chtype,
        char_tl:chtype, char_tr:chtype, char_bl:chtype, char_br:chtype
    ) void {
        _=c.wborder(self.ptr,char_l,char_r,char_t,char_b,char_tl,char_tr,char_bl,char_br);
    }
    /// Like border, but takes an 8-character
    /// string instead of 8 params
    pub fn borderString(self:Self,string:[]const u8) void {
        _=c.wborder(self.ptr,string[0],string[1],string[2],string[3],string[4],string[5],string[6],string[7]);
    }
    /// Shorthand to erase the window border
    pub fn borderZap(self:Self) void {
        self.borderString(self.ptr,"        ");
    }

    pub fn setBorder (self:*Self,bord:Border) void {
        self.bord = bord;
        self.border(bord.char_l,bord.char_r,bord.char_t,bord.char_b,
                    bord.char_tl,bord.char_tr,bord.char_bl,bord.char_br);
    }

    // vline, hline, mvvline, mvhline
    pub fn vline(self:Self,char:chtype,len:i32) void {
        _=c.wvline(self.ptr,char,len);
    }
    pub fn hline(self:Self,char:chtype,len:i32) void {
        _=c.whline(self.ptr,char,len);
    }
    pub fn mvVline(self:Self,row:i32,col:i32,char:chtype,len:i32) void {
        _=c.mvwvline(self.ptr,row,col,char,len);
    }
    pub fn mvHline(self:Self,row:i32,col:i32,char:chtype,len:i32) void {
        _=c.mvwhline(self.ptr,row,col,char,len);
    }

    pub fn addCh (self:Self,char:chtype) void { 
        _=c.waddch(self.ptr,char); 
    }
    /// Copy string to cursor pos, do not move cursor, 
    /// Does not overflow line, truncates
    pub fn addChStr(self:Self,string:[]const u8) void {
        _=c.waddchstr(self.ptr,string.ptr);
    }
    /// See addChStr, but only n chars (-1 for whole string)
    pub fn addChStrLen(self:Self,string:[]const u8,len:i32) void {
        _=c.waddchnstr(self.ptr,string.ptr,len);
    }
    /// Copy string to pos, do not move cursor, 
    /// Does not overflow line, truncates
    pub fn mvAddChStr(row:i32,col:i32,string:[]const u8) void {
        _=c.mvwaddchstr(self.ptr,row,col,string.ptr);
    }
    /// See mvAddChStr, but only n chars (-1 for whole string)
    pub fn mvAddChStrLen(row:i32,col:i32,string:[]const u8,len:i32) void {
        _=c.mvwaddchnstr(self.ptr,row,col,string.ptr,len);
    }

    /// Refreshes the window
    pub fn refresh(self:Self) void { 
        _=c.wrefresh(self.ptr);
    }

    pub fn print(self:Self,comptime format:[]const u8,args:anytype) void {
        const str = std.fmt.allocPrintZ(std.testing.allocator,format,args) catch unreachable;
        _=c.wprintw(self.ptr,str);
        std.testing.allocator.free(str);
    }
    pub fn mvPrint(self:Self,row:i32,col:i32,comptime format:[]const u8,args:anytype) void {
        const str = std.fmt.allocPrintZ(std.testing.allocator,format,args) catch unreachable;
        _=c.mvwprintw(self.ptr,row,col,str);
        std.testing.allocator.free(str);
    }
    pub fn cursorPos(self:Self) Position {
        return .{
            .x = c.getcurx(self.ptr),
            .y = c.getcury(self.ptr),
        };
    }
    pub fn windowOffset(self:Self) Position {
        return .{
            .x = c.getparx(self.ptr),
            .y = c.getpary(self.ptr),
        };
    }
    pub fn windowBegin(self:Self) Position {
        return .{
            .x = c.getbegx(self.ptr),
            .y = c.getbegy(self.ptr),
        };
    }
    pub fn windowEnd(self:Self) Position {
        return .{
            .x = c.getmaxx(self.ptr),
            .y = c.getmaxy(self.ptr),
        };
    }

    pub fn dumpToFile(self:Self,file:[]const u8) !void {
        var c_f = c.fopen(file.ptr,"w");
        if(c.putwin(self.ptr,c_f) != c.OK) return error.errorDumpingWindow;
    }
    // TODO: Look into these, do they change window sizes or anything?
    pub fn loadFromFile(self:Self,file:[]const u8) !void {
        var c_f = c.fopen(file.ptr,"r");
        if(c.getwin(self.ptr,c_f) != c.OK) return error.errorLoadingWindow;
    }

    pub fn overlay(self:Self,dest:Window) void {
        _=c.overlay(self.ptr,dest.ptr);
    }
    pub fn overwrite(self:Self,dest:Window) void {
        _=c.overwrite(self.ptr,dest.ptr);
    }

    pub fn copyToWindow(
        self:Self,dest:Window,
        src_row:i32,src_col:i32,
        dest_srow:i32,dest_scol:i32,
        dest_erow:i32,dest_ecol:i32,
        ovrlay:bool
    ) void {
        var ibool:i32 = if(ovrlay) 1 else 0;
        _=c.copywin(self.ptr,dest,src_row,src_col,dest_srow,dest_scol,
                    dest_erow,dest_ecol,ibool);
    }

    pub fn attrOn (self:Self,attr:chtype) void {
        _=c.wattron(self.ptr,attr);
    }
    pub fn attrOff (self:Self,attr:chtype) void {
        _=c.wattroff(self.ptr,attr);
    }
};

pub const Panel = struct {
    const Self = @This();

    ptr:[*c]c.PANEL = null,
    window:*Window = undefined,
    // Static fns

    /// Creates a new panel from a window and puts 
    /// it at the top of the stack
    pub fn init(win:*Window) Self {
        var new = Self{};
        new.ptr = c.new_panel(win.ptr);
        new.window = win;
        return new;
    }
    // Have to manually register for now
    pub fn register (self:*Self) void {
        panel_cache.put(@ptrToInt(self.ptr),self) catch unreachable;
    }
    pub fn update() void {
        _=c.update_panels();
    }

    // Member fns
    pub fn delete(self:*Self) void {
        _=c.del_panel(self.ptr);
        self.ptr = null;
    }
    pub fn hide(self:*Self) void {
        _=c.hide_panel(self.ptr);
    }
    pub fn show(self:*Self) void {
        _=c.show_panel(self.ptr);
    }
    pub fn toTop(self:*Self) void {
        _=c.top_panel(self.ptr);
    }
    pub fn toBottom(self:*Self) void {
        _=c.bottom_panel(self.ptr);
    }
    pub fn move(self:*Self,start_y:i32,start_x:i32) void {
        _=c.move_panel(self.ptr, start_y, start_x);
    }
    pub fn replaceWindow(self:*Self,win:Window) void {
        _=c.replace_panel(self.ptr, win.ptr);
    }
    // How do we return our panel??? Cache the pointers and do a lookup?
    //pub fn panelAbove(self:*Self) [*c]c.PANEL {
    //    return c.panel_above(self.ptr);
    //}
    pub fn panelAbove(self:*Self) ?*Panel {
        if(c.panel_above(self.ptr)) |ptr| {
            return panel_cache.get(@ptrToInt(ptr));
        }
        return null;
    }
    // How do we return our panel??? Cache the pointers and do a lookup?
    //pub fn panelBelow(self:*Self) [*c]c.PANEL {
    //    return c.panel_below(self.ptr);
    //}
    pub fn panelBelow(self:*Self) ?*Panel {
        if(c.panel_below(self.ptr)) |ptr| {
            return panel_cache.get(@ptrToInt(ptr));
        }
        return null;
    }

    pub fn setUserPtr(self:Self,comptime T:type,ptr:*const T) void {
        _=c.set_panel_userptr(self.ptr,ptr);
    }
    pub fn getUserPtr(self:Self,comptime T:type) ?*const T {
        return @ptrCast(*const T,@alignCast(@alignOf(T),c.panel_userptr(self.ptr)));
        //return @intToPtr(*const T,@ptrToInt(c.panel_userptr(self.ptr)));
    }
};

pub const Color = struct { r:i16 = 0, g:i16 = 0, b:i16 = 0 };

pub const ColorPair = struct {
    const Self = @This();
    
    id:i16,
    fg_color:i16,
    bg_color:i16,
    
    ////////////////// Static fns

    pub fn init(id:i16,fg_color:i16,bg_color:i16) Self {
        _=c.init_pair(id,fg_color,bg_color);
        return .{ 
            .id = id,
            .fg_color = fg_color,
            .bg_color = bg_color,
        };
    }
    
    // replaces pair_content
    pub fn getPair (id:i16) Self {
        var new = Self{ .id = id };
        _=c.pair_content(id, [*c]new.fg_color, [*c]new.bg_color);
        return new;
    }

    ////////////////// Member fns

    pub fn colorContent(self:Self) Color {
        var new = Color{};
        _=c.color_content(self.id, [*c]new.r, [*c]new.g, [*c]new.b);
        return new;
    }

};

//pub const term = struct {
    pub fn initScr (allocator:*std.mem.Allocator) void { 
        global_alloc = allocator;
        panel_cache = std.AutoHashMap(usize, *Panel).init(global_alloc);
        _=c.initscr(); 
        std_scr = Window { 
            .ptr = c.stdscr,
            .width = c.getmaxx(c.stdscr),
            .height = c.getmaxy(c.stdscr),
        };
    }
    pub fn refresh() void { _=c.refresh(); }
    pub fn startColor () void { _=c.start_color(); }
    pub fn cBreak () void { _=c.cbreak(); }
    pub fn echo () void { _=c.echo(); }
    pub fn noEcho () void { _=c.noecho(); }
    pub fn endWin () void { _=c.endwin(); }
    
    pub fn napForMs(ms:i32) void { _=c.napms(ms); }
    pub fn defProgMode() void { _=c.def_prog_mode(); }
    pub fn defShellMode() void { _=c.def_shell_mode(); }
    pub fn resetProgMode() void { _=c.reset_prog_mode(); }
    pub fn resetShellMode() void { _=c.reset_shell_mode(); }
    pub fn saveTty() void { _=c.savetty(); }
    pub fn resetTty() void { _=c.resetty(); }

    pub fn doUpdate() void { _=c.doupdate(); }

    pub fn attrOn (attr:chtype) void {
        _=c.attron(attr);
    }
    pub fn attrOff (attr:chtype) void {
        _=c.attroff(attr);
    }

    pub fn getCh() i32 {
        return c.getch();
    }

    pub fn addCh (ch:chtype) void { _=c.addch(ch); }
    /// Copy string to cursor pos, do not move cursor, 
    /// Does not overflow line, truncates
    pub fn addChStr(string:[]const u8) void {
        _=c.addchstr(string.ptr);
    }
    /// See addChStr, but only n chars (-1 for whole string)
    pub fn addChStrLen(string:[]const u8,len:i32) void {
        _=c.addchnstr(string.ptr,len);
    }
    /// Copy string to pos, do not move cursor, 
    /// Does not overflow line, truncates
    pub fn mvAddChStr(row:i32,col:i32,string:[]const u8) void {
        _=c.mvaddchstr(row,col,string.ptr);
    }
    /// See mvAddChStr, but only n chars (-1 for whole string)
    pub fn mvAddChStrLen(row:i32,col:i32,string:[]const u8,len:i32) void {
        _=c.mvaddchnstr(row,col,string.ptr,len);
    }

    pub fn hasColors() bool {
        return c.has_colors();
    }
    pub fn canChangeColor() bool {
        return c.can_change_color();
    }

    pub fn keypad(win:Window,enable:bool) void {
        _=c.keypad(win.ptr,enable);
    }

    /// Modifies a color index (see color.*), color values are 0-1000
    pub fn initColor(id:i16,r:i16,g:i16,b:i16) void {
        _=c.init_color(id,r,g,b);
    }

    pub fn clrToEol () void { _=c.clrtoeol(); }
    pub fn clrToBottom () void { _=c.clrtobot(); }

    /// Returns the mask with valid masks
    /// Returns 0 if none were valid
    pub fn mouseMask(mask:u32,old_mask:*?u32) u32 {
        return c.mousemask(mask,old_mask);
    }

    pub fn hasMouse() bool { return c.has_mouse(); }

    pub fn getMouse() ?MouseEvent {
        var evt:c.MEVENT = undefined;
        if(c.getmouse(&evt) == c.OK) {
            return .{
                .id = evt.id,
                .x = evt.x,
                .y = evt.y,
                .z = evt.z,
                .bstate = evt.bstate,
            };
        } else return null;
    }
    
    /// Basically shorthand for std_scr.cursorPosition()
    pub fn getYX () Position {
        // The macros are broken in translate-c, so whatever
        return std_scr.cursorPos();
    }

    pub fn screenDump(file:[]const u8) !void {
        if(c.scr_dump(file.ptr) != c.OK) return error.UnableToDumpScreen;
    }
    // TODO: Look into these, what does curses fill out behind the scenes?
    // We need to duplicate it with our structures to keep Window in sync
    pub fn screenRestore(file:[]const u8) !void {
        if(c.scr_restore(file.ptr) != c.OK) return error.UnableToRestoreScreen;
    }

    pub fn screenInitFromFile(file:[]const u8) !void {
        if(c.scr_restore(file.ptr) != c.OK) return error.UnableToRestoreScreen;
    }

    pub fn setCursor (vis:CursorVisibility) void {
        _=c.curs_set(@enumToInt(vis));
    }



//}