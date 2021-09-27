// Import this file into your main project build and call "link" on your exe 
// if you prefer to not use a package manager.

const std = @import("std");

fn getRelativePath() []const u8 {
    comptime var src: std.builtin.SourceLocation = @src();
    return std.fs.path.dirname(src.file).? ++ std.fs.path.sep_str;
}

fn getSrcPath() []const u8 {
    comptime var src: std.builtin.SourceLocation = @src();
    return std.fs.path.dirname(src.file).? ++ std.fs.path.sep_str ++ "src" ++ std.fs.path.sep_str;
}

pub fn link(exe: *std.build.LibExeObjStep, target: std.build.Target) void {
    _=target;
    // Link step
    exe.linkLibC();
    exe.linkSystemLibrary("gdi32");
    exe.linkSystemLibrary("comdlg32");
    exe.linkSystemLibrary("winmm");
    exe.addObjectFile(getRelativePath() ++ "lib/pdcurses.a");

    exe.addPackage(getPackage());
}

pub fn getPackage() std.build.Pkg {
    comptime var path = getSrcPath();
    return .{ .name = "zig-pdcurses", .path = std.build.FileSource{ .path = path ++ "zig-pdcurses.zig" } };
}
