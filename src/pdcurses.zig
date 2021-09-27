pub usingnamespace @import("std").zig.c_builtins;
pub const __builtin_va_list = [*c]u8;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const ptrdiff_t = c_longlong;
pub const wchar_t = c_ushort;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),
    __clang_max_align_nonce2: c_longdouble align(16),
}; // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:584:3: warning: TODO implement translation of stmt class GCCAsmStmtClass
// C:\Zig\lib\libc\include\any-windows-any\_mingw.h:581:36: warning: unable to translate function, demoted to extern
pub extern fn __debugbreak() callconv(.C) void;
pub extern fn __mingw_get_crt_info() [*c]const u8;
pub const rsize_t = usize;
pub const wint_t = c_ushort;
pub const wctype_t = c_ushort;
pub const errno_t = c_int;
pub const __time32_t = c_long;
pub const __time64_t = c_longlong;
pub const time_t = __time64_t;
pub const struct_tagLC_ID = extern struct {
    wLanguage: c_ushort,
    wCountry: c_ushort,
    wCodePage: c_ushort,
};
pub const LC_ID = struct_tagLC_ID;
const struct_unnamed_1 = extern struct {
    locale: [*c]u8,
    wlocale: [*c]wchar_t,
    refcount: [*c]c_int,
    wrefcount: [*c]c_int,
};
pub const struct_lconv = opaque {};
pub const struct___lc_time_data = opaque {};
pub const struct_threadlocaleinfostruct = extern struct {
    refcount: c_int,
    lc_codepage: c_uint,
    lc_collate_cp: c_uint,
    lc_handle: [6]c_ulong,
    lc_id: [6]LC_ID,
    lc_category: [6]struct_unnamed_1,
    lc_clike: c_int,
    mb_cur_max: c_int,
    lconv_intl_refcount: [*c]c_int,
    lconv_num_refcount: [*c]c_int,
    lconv_mon_refcount: [*c]c_int,
    lconv: ?*struct_lconv,
    ctype1_refcount: [*c]c_int,
    ctype1: [*c]c_ushort,
    pctype: [*c]const c_ushort,
    pclmap: [*c]const u8,
    pcumap: [*c]const u8,
    lc_time_curr: ?*struct___lc_time_data,
};
pub const struct_threadmbcinfostruct = opaque {};
pub const pthreadlocinfo = [*c]struct_threadlocaleinfostruct;
pub const pthreadmbcinfo = ?*struct_threadmbcinfostruct;
pub const struct_localeinfo_struct = extern struct {
    locinfo: pthreadlocinfo,
    mbcinfo: pthreadmbcinfo,
};
pub const _locale_tstruct = struct_localeinfo_struct;
pub const _locale_t = [*c]struct_localeinfo_struct;
pub const LPLC_ID = [*c]struct_tagLC_ID;
pub const threadlocinfo = struct_threadlocaleinfostruct;
pub const struct__iobuf = extern struct {
    _ptr: [*c]u8,
    _cnt: c_int,
    _base: [*c]u8,
    _flag: c_int,
    _file: c_int,
    _charbuf: c_int,
    _bufsiz: c_int,
    _tmpfname: [*c]u8,
};
pub const FILE = struct__iobuf;
pub const _off_t = c_long;
pub const off32_t = c_long;
pub const _off64_t = c_longlong;
pub const off64_t = c_longlong;
pub const off_t = off32_t;
pub extern fn __acrt_iob_func(index: c_uint) [*c]FILE;
pub extern fn __iob_func() [*c]FILE;
pub const fpos_t = c_longlong;
pub extern fn __mingw_sscanf(noalias _Src: [*c]const u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __mingw_vsscanf(noalias _Str: [*c]const u8, noalias Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __mingw_scanf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __mingw_vscanf(noalias Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __mingw_fscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __mingw_vfscanf(noalias fp: [*c]FILE, noalias Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __mingw_vsnprintf(noalias _DstBuf: [*c]u8, _MaxCount: usize, noalias _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn __mingw_snprintf(noalias s: [*c]u8, n: usize, noalias format: [*c]const u8, ...) c_int;
pub const __mingw_printf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:184:15
pub const __mingw_vprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:187:15
pub const __mingw_fprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:190:15
pub const __mingw_vfprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:193:15
pub const __mingw_sprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:196:15
pub const __mingw_vsprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:199:15
pub const __mingw_asprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:202:15
pub const __mingw_vasprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:205:15
pub extern fn __ms_sscanf(noalias _Src: [*c]const u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __ms_scanf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __ms_fscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, ...) c_int;
pub const __ms_printf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:219:15
pub const __ms_vprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:222:15
pub const __ms_fprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:225:15
pub const __ms_vfprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:228:15
pub const __ms_sprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:231:15
pub const __ms_vsprintf = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:234:15
// C:\Zig\lib\libc\include\any-windows-any\stdio.h:290:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn sscanf(__source: [*c]const u8, __format: [*c]const u8, ...) c_int; // C:\Zig\lib\libc\include\any-windows-any\stdio.h:301:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn scanf(__format: [*c]const u8, ...) c_int; // C:\Zig\lib\libc\include\any-windows-any\stdio.h:312:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fscanf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub fn vsscanf(arg___source: [*c]const u8, arg___format: [*c]const u8, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __source = arg___source;
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vsscanf(__source, __format, __local_argv);
}
pub fn vscanf(arg___format: [*c]const u8, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vfscanf(__acrt_iob_func(@bitCast(c_uint, @as(c_int, 0))), __format, __local_argv);
}
pub fn vfscanf(arg___stream: [*c]FILE, arg___format: [*c]const u8, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __stream = arg___stream;
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vfscanf(__stream, __format, __local_argv);
} // C:\Zig\lib\libc\include\any-windows-any\stdio.h:357:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int; // C:\Zig\lib\libc\include\any-windows-any\stdio.h:368:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn printf(__format: [*c]const u8, ...) c_int; // C:\Zig\lib\libc\include\any-windows-any\stdio.h:396:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn sprintf(__stream: [*c]u8, __format: [*c]const u8, ...) c_int;
pub fn vfprintf(arg___stream: [*c]FILE, arg___format: [*c]const u8, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __stream = arg___stream;
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vfprintf(__stream, __format, __local_argv);
}
pub fn vprintf(arg___format: [*c]const u8, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vfprintf(__acrt_iob_func(@bitCast(c_uint, @as(c_int, 1))), __format, __local_argv);
}
pub fn vsprintf(arg___stream: [*c]u8, arg___format: [*c]const u8, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __stream = arg___stream;
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vsprintf(__stream, __format, __local_argv);
} // C:\Zig\lib\libc\include\any-windows-any\stdio.h:451:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn snprintf(__stream: [*c]u8, __n: usize, __format: [*c]const u8, ...) c_int;
pub fn vsnprintf(arg___stream: [*c]u8, arg___n: usize, arg___format: [*c]const u8, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __stream = arg___stream;
    var __n = arg___n;
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vsnprintf(__stream, __n, __format, __local_argv);
}
pub extern fn _filbuf(_File: [*c]FILE) c_int;
pub extern fn _flsbuf(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn _fsopen(_Filename: [*c]const u8, _Mode: [*c]const u8, _ShFlag: c_int) [*c]FILE;
pub extern fn clearerr(_File: [*c]FILE) void;
pub extern fn fclose(_File: [*c]FILE) c_int;
pub extern fn _fcloseall() c_int;
pub extern fn _fdopen(_FileHandle: c_int, _Mode: [*c]const u8) [*c]FILE;
pub extern fn feof(_File: [*c]FILE) c_int;
pub extern fn ferror(_File: [*c]FILE) c_int;
pub extern fn fflush(_File: [*c]FILE) c_int;
pub extern fn fgetc(_File: [*c]FILE) c_int;
pub extern fn _fgetchar() c_int;
pub extern fn fgetpos(noalias _File: [*c]FILE, noalias _Pos: [*c]fpos_t) c_int;
pub extern fn fgetpos64(noalias _File: [*c]FILE, noalias _Pos: [*c]fpos_t) c_int;
pub extern fn fgets(noalias _Buf: [*c]u8, _MaxCount: c_int, noalias _File: [*c]FILE) [*c]u8;
pub extern fn _fileno(_File: [*c]FILE) c_int;
pub extern fn _tempnam(_DirName: [*c]const u8, _FilePrefix: [*c]const u8) [*c]u8;
pub extern fn _flushall() c_int;
pub extern fn fopen(_Filename: [*c]const u8, _Mode: [*c]const u8) [*c]FILE;
pub extern fn fopen64(noalias filename: [*c]const u8, noalias mode: [*c]const u8) [*c]FILE;
pub extern fn fputc(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn _fputchar(_Ch: c_int) c_int;
pub extern fn fputs(noalias _Str: [*c]const u8, noalias _File: [*c]FILE) c_int;
pub extern fn fread(_DstBuf: ?*c_void, _ElementSize: c_ulonglong, _Count: c_ulonglong, _File: [*c]FILE) c_ulonglong;
pub extern fn freopen(noalias _Filename: [*c]const u8, noalias _Mode: [*c]const u8, noalias _File: [*c]FILE) [*c]FILE;
pub extern fn fsetpos(_File: [*c]FILE, _Pos: [*c]const fpos_t) c_int;
pub extern fn fsetpos64(_File: [*c]FILE, _Pos: [*c]const fpos_t) c_int;
pub extern fn fseek(_File: [*c]FILE, _Offset: c_long, _Origin: c_int) c_int;
pub extern fn ftell(_File: [*c]FILE) c_long;
pub extern fn _fseeki64(_File: [*c]FILE, _Offset: c_longlong, _Origin: c_int) c_int;
pub extern fn _ftelli64(_File: [*c]FILE) c_longlong;
pub extern fn fseeko64(stream: [*c]FILE, offset: _off64_t, whence: c_int) c_int;
pub extern fn fseeko(stream: [*c]FILE, offset: _off_t, whence: c_int) c_int;
pub extern fn ftello(stream: [*c]FILE) _off_t;
pub extern fn ftello64(stream: [*c]FILE) _off64_t;
pub extern fn fwrite(_Str: ?*const c_void, _Size: c_ulonglong, _Count: c_ulonglong, _File: [*c]FILE) c_ulonglong;
pub extern fn getc(_File: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn _getmaxstdio() c_int;
pub extern fn gets(_Buffer: [*c]u8) [*c]u8;
pub extern fn _getw(_File: [*c]FILE) c_int;
pub extern fn perror(_ErrMsg: [*c]const u8) void;
pub extern fn _pclose(_File: [*c]FILE) c_int;
pub extern fn _popen(_Command: [*c]const u8, _Mode: [*c]const u8) [*c]FILE;
pub extern fn putc(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn putchar(_Ch: c_int) c_int;
pub extern fn puts(_Str: [*c]const u8) c_int;
pub extern fn _putw(_Word: c_int, _File: [*c]FILE) c_int;
pub extern fn remove(_Filename: [*c]const u8) c_int;
pub extern fn rename(_OldFilename: [*c]const u8, _NewFilename: [*c]const u8) c_int;
pub extern fn _unlink(_Filename: [*c]const u8) c_int;
pub extern fn unlink(_Filename: [*c]const u8) c_int;
pub extern fn rewind(_File: [*c]FILE) void;
pub extern fn _rmtmp() c_int;
pub extern fn setbuf(noalias _File: [*c]FILE, noalias _Buffer: [*c]u8) void;
pub extern fn _setmaxstdio(_Max: c_int) c_int;
pub extern fn _set_output_format(_Format: c_uint) c_uint;
pub extern fn _get_output_format() c_uint;
pub extern fn setvbuf(noalias _File: [*c]FILE, noalias _Buf: [*c]u8, _Mode: c_int, _Size: usize) c_int;
pub extern fn _scprintf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn _snscanf(noalias _Src: [*c]const u8, _MaxCount: usize, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam(_Buffer: [*c]u8) [*c]u8;
pub extern fn ungetc(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn _snprintf(noalias _Dest: [*c]u8, _Count: usize, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn _vsnprintf(noalias _Dest: [*c]u8, _Count: usize, noalias _Format: [*c]const u8, _Args: va_list) c_int;
pub extern fn _vscprintf(noalias _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn _set_printf_count_output(_Value: c_int) c_int;
pub extern fn _get_printf_count_output() c_int;
pub extern fn __mingw_swscanf(noalias _Src: [*c]const wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vswscanf(noalias _Str: [*c]const wchar_t, noalias Format: [*c]const wchar_t, argp: va_list) c_int;
pub extern fn __mingw_wscanf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vwscanf(noalias Format: [*c]const wchar_t, argp: va_list) c_int;
pub extern fn __mingw_fwscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vfwscanf(noalias fp: [*c]FILE, noalias Format: [*c]const wchar_t, argp: va_list) c_int;
pub extern fn __mingw_fwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_wprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vfwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __mingw_vwprintf(noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __mingw_snwprintf(noalias s: [*c]wchar_t, n: usize, noalias format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vsnwprintf(noalias [*c]wchar_t, usize, noalias [*c]const wchar_t, va_list) c_int;
pub extern fn __mingw_swprintf(noalias [*c]wchar_t, noalias [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vswprintf(noalias [*c]wchar_t, noalias [*c]const wchar_t, va_list) c_int;
pub extern fn __ms_swscanf(noalias _Src: [*c]const wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_wscanf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_fwscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_fwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_wprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_vfwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __ms_vwprintf(noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __ms_swprintf(noalias [*c]wchar_t, noalias [*c]const wchar_t, ...) c_int;
pub extern fn __ms_vswprintf(noalias [*c]wchar_t, noalias [*c]const wchar_t, va_list) c_int; // C:\Zig\lib\libc\include\any-windows-any\stdio.h:996:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn swscanf(__source: [*c]const wchar_t, __format: [*c]const wchar_t, ...) c_int; // C:\Zig\lib\libc\include\any-windows-any\stdio.h:1007:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn wscanf(__format: [*c]const wchar_t, ...) c_int; // C:\Zig\lib\libc\include\any-windows-any\stdio.h:1018:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fwscanf(__stream: [*c]FILE, __format: [*c]const wchar_t, ...) c_int;
pub fn vswscanf(noalias arg___source: [*c]const wchar_t, noalias arg___format: [*c]const wchar_t, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __source = arg___source;
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vswscanf(__source, __format, __local_argv);
}
pub fn vwscanf(arg___format: [*c]const wchar_t, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vfwscanf(__acrt_iob_func(@bitCast(c_uint, @as(c_int, 0))), __format, __local_argv);
}
pub fn vfwscanf(arg___stream: [*c]FILE, arg___format: [*c]const wchar_t, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __stream = arg___stream;
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vfwscanf(__stream, __format, __local_argv);
} // C:\Zig\lib\libc\include\any-windows-any\stdio.h:1054:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fwprintf(__stream: [*c]FILE, __format: [*c]const wchar_t, ...) c_int; // C:\Zig\lib\libc\include\any-windows-any\stdio.h:1065:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn wprintf(__format: [*c]const wchar_t, ...) c_int;
pub fn vfwprintf(arg___stream: [*c]FILE, arg___format: [*c]const wchar_t, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __stream = arg___stream;
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vfwprintf(__stream, __format, __local_argv);
}
pub fn vwprintf(arg___format: [*c]const wchar_t, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vfwprintf(__acrt_iob_func(@bitCast(c_uint, @as(c_int, 1))), __format, __local_argv);
} // C:\Zig\lib\libc\include\any-windows-any\stdio.h:1104:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn snwprintf(__stream: [*c]wchar_t, __n: usize, __format: [*c]const wchar_t, ...) c_int;
pub fn vsnwprintf(arg___stream: [*c]wchar_t, arg___n: usize, arg___format: [*c]const wchar_t, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __stream = arg___stream;
    var __n = arg___n;
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return __mingw_vsnwprintf(__stream, __n, __format, __local_argv);
}
pub extern fn _wfsopen(_Filename: [*c]const wchar_t, _Mode: [*c]const wchar_t, _ShFlag: c_int) [*c]FILE;
pub extern fn fgetwc(_File: [*c]FILE) wint_t;
pub extern fn _fgetwchar() wint_t;
pub extern fn fputwc(_Ch: wchar_t, _File: [*c]FILE) wint_t;
pub extern fn _fputwchar(_Ch: wchar_t) wint_t;
pub extern fn getwc(_File: [*c]FILE) wint_t;
pub extern fn getwchar() wint_t;
pub extern fn putwc(_Ch: wchar_t, _File: [*c]FILE) wint_t;
pub extern fn putwchar(_Ch: wchar_t) wint_t;
pub extern fn ungetwc(_Ch: wint_t, _File: [*c]FILE) wint_t;
pub extern fn fgetws(noalias _Dst: [*c]wchar_t, _SizeInWords: c_int, noalias _File: [*c]FILE) [*c]wchar_t;
pub extern fn fputws(noalias _Str: [*c]const wchar_t, noalias _File: [*c]FILE) c_int;
pub extern fn _getws(_String: [*c]wchar_t) [*c]wchar_t;
pub extern fn _putws(_Str: [*c]const wchar_t) c_int;
pub extern fn _scwprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _swprintf_c(noalias _DstBuf: [*c]wchar_t, _SizeInWords: usize, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _vswprintf_c(noalias _DstBuf: [*c]wchar_t, _SizeInWords: usize, noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn _snwprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _vsnwprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, _Args: va_list) c_int;
pub extern fn _vscwprintf(noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn _swprintf(noalias _Dest: [*c]wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _vswprintf(noalias _Dest: [*c]wchar_t, noalias _Format: [*c]const wchar_t, _Args: va_list) c_int;
pub fn vswprintf(arg___stream: [*c]wchar_t, arg___count: usize, arg___format: [*c]const wchar_t, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __stream = arg___stream;
    var __count = arg___count;
    var __format = arg___format;
    var __local_argv = arg___local_argv;
    return vsnwprintf(__stream, __count, __format, __local_argv);
} // C:\Zig\lib\libc\include\any-windows-any\swprintf.inl:34:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn swprintf(__stream: [*c]wchar_t, __count: usize, __format: [*c]const wchar_t, ...) c_int;
pub extern fn _wtempnam(_Directory: [*c]const wchar_t, _FilePrefix: [*c]const wchar_t) [*c]wchar_t;
pub extern fn _snwscanf(noalias _Src: [*c]const wchar_t, _MaxCount: usize, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _wfdopen(_FileHandle: c_int, _Mode: [*c]const wchar_t) [*c]FILE;
pub extern fn _wfopen(noalias _Filename: [*c]const wchar_t, noalias _Mode: [*c]const wchar_t) [*c]FILE;
pub extern fn _wfreopen(noalias _Filename: [*c]const wchar_t, noalias _Mode: [*c]const wchar_t, noalias _OldFile: [*c]FILE) [*c]FILE;
pub extern fn _wperror(_ErrMsg: [*c]const wchar_t) void;
pub extern fn _wpopen(_Command: [*c]const wchar_t, _Mode: [*c]const wchar_t) [*c]FILE;
pub extern fn _wremove(_Filename: [*c]const wchar_t) c_int;
pub extern fn _wtmpnam(_Buffer: [*c]wchar_t) [*c]wchar_t;
pub extern fn _lock_file(_File: [*c]FILE) void;
pub extern fn _unlock_file(_File: [*c]FILE) void;
pub extern fn tempnam(_Directory: [*c]const u8, _FilePrefix: [*c]const u8) [*c]u8;
pub extern fn fcloseall() c_int;
pub extern fn fdopen(_FileHandle: c_int, _Format: [*c]const u8) [*c]FILE;
pub extern fn fgetchar() c_int;
pub extern fn fileno(_File: [*c]FILE) c_int;
pub extern fn flushall() c_int;
pub extern fn fputchar(_Ch: c_int) c_int;
pub extern fn getw(_File: [*c]FILE) c_int;
pub extern fn putw(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn rmtmp() c_int;
pub extern fn __mingw_str_wide_utf8(wptr: [*c]const wchar_t, mbptr: [*c][*c]u8, buflen: [*c]usize) c_int;
pub extern fn __mingw_str_utf8_wide(mbptr: [*c]const u8, wptr: [*c][*c]wchar_t, buflen: [*c]usize) c_int;
pub extern fn __mingw_str_free(ptr: ?*c_void) void;
pub extern fn _wspawnl(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnle(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnlp(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnlpe(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnv(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t) isize;
pub extern fn _wspawnve(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t, _Env: [*c]const [*c]const wchar_t) isize;
pub extern fn _wspawnvp(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t) isize;
pub extern fn _wspawnvpe(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t, _Env: [*c]const [*c]const wchar_t) isize;
pub extern fn _spawnv(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8) isize;
pub extern fn _spawnve(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8, _Env: [*c]const [*c]const u8) isize;
pub extern fn _spawnvp(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8) isize;
pub extern fn _spawnvpe(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8, _Env: [*c]const [*c]const u8) isize;
pub extern fn clearerr_s(_File: [*c]FILE) errno_t;
pub extern fn fread_s(_DstBuf: ?*c_void, _DstSize: usize, _ElementSize: usize, _Count: usize, _File: [*c]FILE) usize;
pub extern fn fprintf_s(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int;
pub extern fn _fscanf_s_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn fscanf_s(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int;
pub extern fn printf_s(_Format: [*c]const u8, ...) c_int;
pub extern fn _scanf_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _scanf_s_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn scanf_s(_Format: [*c]const u8, ...) c_int;
pub extern fn _snprintf_c(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
pub extern fn _vsnprintf_c(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn _fscanf_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _sscanf_l(_Src: [*c]const u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _sscanf_s_l(_Src: [*c]const u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn sscanf_s(_Src: [*c]const u8, _Format: [*c]const u8, ...) c_int;
pub extern fn _snscanf_s(_Src: [*c]const u8, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
pub extern fn _snscanf_l(_Src: [*c]const u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _snscanf_s_l(_Src: [*c]const u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn vfprintf_s(_File: [*c]FILE, _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn vprintf_s(_Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn vsnprintf_s(_DstBuf: [*c]u8, _DstSize: usize, _MaxCount: usize, _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn _vsnprintf_s(_DstBuf: [*c]u8, _DstSize: usize, _MaxCount: usize, _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn vsprintf_s(_DstBuf: [*c]u8, _Size: usize, _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn sprintf_s(_DstBuf: [*c]u8, _DstSize: usize, _Format: [*c]const u8, ...) c_int;
pub extern fn _snprintf_s(_DstBuf: [*c]u8, _DstSize: usize, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
pub extern fn _fprintf_p(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int;
pub extern fn _printf_p(_Format: [*c]const u8, ...) c_int;
pub extern fn _sprintf_p(_Dst: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
pub extern fn _vfprintf_p(_File: [*c]FILE, _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn _vprintf_p(_Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn _vsprintf_p(_Dst: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn _scprintf_p(_Format: [*c]const u8, ...) c_int;
pub extern fn _vscprintf_p(_Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn _printf_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _printf_p_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _vprintf_l(_Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _vprintf_p_l(_Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _fprintf_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _fprintf_p_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _vfprintf_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _vfprintf_p_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _sprintf_l(_DstBuf: [*c]u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _sprintf_p_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _vsprintf_l(_DstBuf: [*c]u8, _Format: [*c]const u8, _locale_t, _ArgList: va_list) c_int;
pub extern fn _vsprintf_p_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _scprintf_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _scprintf_p_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _vscprintf_l(_Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _vscprintf_p_l(_Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _printf_s_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _vprintf_s_l(_Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _fprintf_s_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _vfprintf_s_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _sprintf_s_l(_DstBuf: [*c]u8, _DstSize: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _vsprintf_s_l(_DstBuf: [*c]u8, _DstSize: usize, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _snprintf_s_l(_DstBuf: [*c]u8, _DstSize: usize, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _vsnprintf_s_l(_DstBuf: [*c]u8, _DstSize: usize, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _snprintf_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _snprintf_c_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn _vsnprintf_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _vsnprintf_c_l(_DstBuf: [*c]u8, _MaxCount: usize, [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn fopen_s(_File: [*c][*c]FILE, _Filename: [*c]const u8, _Mode: [*c]const u8) errno_t;
pub extern fn freopen_s(_File: [*c][*c]FILE, _Filename: [*c]const u8, _Mode: [*c]const u8, _Stream: [*c]FILE) errno_t;
pub extern fn gets_s([*c]u8, rsize_t) [*c]u8;
pub extern fn tmpnam_s([*c]u8, rsize_t) errno_t;
pub extern fn _getws_s(_Str: [*c]wchar_t, _SizeInWords: usize) [*c]wchar_t;
pub extern fn fwprintf_s(_File: [*c]FILE, _Format: [*c]const wchar_t, ...) c_int;
pub extern fn wprintf_s(_Format: [*c]const wchar_t, ...) c_int;
pub extern fn vfwprintf_s(_File: [*c]FILE, _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn vwprintf_s(_Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn vswprintf_s(_Dst: [*c]wchar_t, _SizeInWords: usize, _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn swprintf_s(_Dst: [*c]wchar_t, _SizeInWords: usize, _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _vsnwprintf_s(_DstBuf: [*c]wchar_t, _DstSizeInWords: usize, _MaxCount: usize, _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn _snwprintf_s(_DstBuf: [*c]wchar_t, _DstSizeInWords: usize, _MaxCount: usize, _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _wprintf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vwprintf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _fwprintf_s_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vfwprintf_s_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _swprintf_s_l(_DstBuf: [*c]wchar_t, _DstSize: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vswprintf_s_l(_DstBuf: [*c]wchar_t, _DstSize: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _snwprintf_s_l(_DstBuf: [*c]wchar_t, _DstSize: usize, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vsnwprintf_s_l(_DstBuf: [*c]wchar_t, _DstSize: usize, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _fwscanf_s_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn fwscanf_s(_File: [*c]FILE, _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _swscanf_s_l(_Src: [*c]const wchar_t, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn swscanf_s(_Src: [*c]const wchar_t, _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _snwscanf_s(_Src: [*c]const wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _snwscanf_s_l(_Src: [*c]const wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _wscanf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn wscanf_s(_Format: [*c]const wchar_t, ...) c_int;
pub extern fn _wfopen_s(_File: [*c][*c]FILE, _Filename: [*c]const wchar_t, _Mode: [*c]const wchar_t) errno_t;
pub extern fn _wfreopen_s(_File: [*c][*c]FILE, _Filename: [*c]const wchar_t, _Mode: [*c]const wchar_t, _OldFile: [*c]FILE) errno_t;
pub extern fn _wtmpnam_s(_DstBuf: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _fwprintf_p(_File: [*c]FILE, _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _wprintf_p(_Format: [*c]const wchar_t, ...) c_int;
pub extern fn _vfwprintf_p(_File: [*c]FILE, _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn _vwprintf_p(_Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn _swprintf_p(_DstBuf: [*c]wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _vswprintf_p(_DstBuf: [*c]wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn _scwprintf_p(_Format: [*c]const wchar_t, ...) c_int;
pub extern fn _vscwprintf_p(_Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn _wprintf_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _wprintf_p_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vwprintf_l(_Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _vwprintf_p_l(_Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _fwprintf_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _fwprintf_p_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vfwprintf_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _vfwprintf_p_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _swprintf_c_l(_DstBuf: [*c]wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _swprintf_p_l(_DstBuf: [*c]wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vswprintf_c_l(_DstBuf: [*c]wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _vswprintf_p_l(_DstBuf: [*c]wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _scwprintf_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _scwprintf_p_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vscwprintf_p_l(_Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _snwprintf_l(_DstBuf: [*c]wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _vsnwprintf_l(_DstBuf: [*c]wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __swprintf_l(_Dest: [*c]wchar_t, _Format: [*c]const wchar_t, _Plocinfo: _locale_t, ...) c_int;
pub extern fn __vswprintf_l(_Dest: [*c]wchar_t, _Format: [*c]const wchar_t, _Plocinfo: _locale_t, _Args: va_list) c_int;
pub extern fn _vscwprintf_l(_Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn _fwscanf_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _swscanf_l(_Src: [*c]const wchar_t, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _snwscanf_l(_Src: [*c]const wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub extern fn _wscanf_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
pub const int_least8_t = i8;
pub const uint_least8_t = u8;
pub const int_least16_t = c_short;
pub const uint_least16_t = c_ushort;
pub const int_least32_t = c_int;
pub const uint_least32_t = c_uint;
pub const int_least64_t = c_longlong;
pub const uint_least64_t = c_ulonglong;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const int_fast16_t = c_short;
pub const uint_fast16_t = c_ushort;
pub const int_fast32_t = c_int;
pub const uint_fast32_t = c_uint;
pub const int_fast64_t = c_longlong;
pub const uint_fast64_t = c_ulonglong;
pub const intmax_t = c_longlong;
pub const uintmax_t = c_ulonglong;
pub const chtype = u64;
pub const attr_t = chtype;
pub const PDC_PORT_X11: c_int = 0;
pub const PDC_PORT_WINCON: c_int = 1;
pub const PDC_PORT_WINGUI: c_int = 2;
pub const PDC_PORT_DOS: c_int = 3;
pub const PDC_PORT_OS2: c_int = 4;
pub const PDC_PORT_SDL1: c_int = 5;
pub const PDC_PORT_SDL2: c_int = 6;
pub const PDC_PORT_VT: c_int = 7;
pub const PDC_PORT_DOSVGA: c_int = 8;
pub const PDC_PORT_PLAN9: c_int = 9;
pub const PDC_PORT_LINUX_FB: c_int = 10;
pub const enum_PDC_port = c_uint;
pub const PDC_VERSION = extern struct {
    flags: c_short,
    build: c_short,
    major: u8,
    minor: u8,
    change: u8,
    csize: u8,
    bsize: u8,
    port: enum_PDC_port,
};
pub const PDC_VFLAG_DEBUG: c_int = 1;
pub const PDC_VFLAG_WIDE: c_int = 2;
pub const PDC_VFLAG_UTF8: c_int = 4;
pub const PDC_VFLAG_DLL: c_int = 8;
pub const PDC_VFLAG_RGB: c_int = 16;
const enum_unnamed_2 = c_uint;
pub const mmask_t = c_ulong;
pub const MOUSE_STATUS = extern struct {
    x: c_int,
    y: c_int,
    button: [9]c_short,
    changes: c_int,
};
pub const MEVENT = extern struct {
    id: c_short,
    x: c_int,
    y: c_int,
    z: c_int,
    bstate: mmask_t,
};
pub const struct__win = extern struct {
    _cury: c_int,
    _curx: c_int,
    _maxy: c_int,
    _maxx: c_int,
    _begy: c_int,
    _begx: c_int,
    _flags: c_int,
    _attrs: chtype,
    _bkgd: chtype,
    _clear: bool,
    _leaveit: bool,
    _scroll: bool,
    _nodelay: bool,
    _immed: bool,
    _sync: bool,
    _use_keypad: bool,
    _y: [*c][*c]chtype,
    _firstch: [*c]c_int,
    _lastch: [*c]c_int,
    _tmarg: c_int,
    _bmarg: c_int,
    _delayms: c_int,
    _parx: c_int,
    _pary: c_int,
    _parent: [*c]struct__win,
};
pub const WINDOW = struct__win;
pub const PDC_PAIR = extern struct {
    f: c_int,
    b: c_int,
    count: c_int,
};
pub const SCREEN = extern struct {
    alive: bool,
    autocr: bool,
    cbreak: bool,
    echo: bool,
    raw_inp: bool,
    raw_out: bool,
    audible: bool,
    mono: bool,
    resized: bool,
    orig_attr: bool,
    orig_fore: c_short,
    orig_back: c_short,
    cursrow: c_int,
    curscol: c_int,
    visibility: c_int,
    orig_cursor: c_int,
    lines: c_int,
    cols: c_int,
    _trap_mbe: mmask_t,
    mouse_wait: c_int,
    slklines: c_int,
    slk_winptr: [*c]WINDOW,
    linesrippedoff: c_int,
    linesrippedoffontop: c_int,
    delaytenths: c_int,
    _preserve: bool,
    _restore: c_int,
    key_modifiers: c_ulong,
    return_key_modifiers: bool,
    unused_key_code: bool,
    mouse_status: MOUSE_STATUS,
    line_color: c_short,
    termattrs: attr_t,
    lastscr: [*c]WINDOW,
    dbfp: [*c]FILE,
    color_started: bool,
    dirty: bool,
    sel_start: c_int,
    sel_end: c_int,
    c_buffer: [*c]c_int,
    c_pindex: c_int,
    c_gindex: c_int,
    c_ungch: [*c]c_int,
    c_ungind: c_int,
    c_ungmax: c_int,
    atrtab: [*c]PDC_PAIR,
};
pub extern var LINES: c_int;
pub extern var COLS: c_int;
pub extern var stdscr: [*c]WINDOW;
pub extern var curscr: [*c]WINDOW;
pub extern var SP: [*c]SCREEN;
pub extern var Mouse_status: MOUSE_STATUS;
pub extern var COLORS: c_int;
pub extern var COLOR_PAIRS: c_int;
pub extern var TABSIZE: c_int;
pub extern var acs_map: [*c]chtype;
pub extern var ttytype: [*c]u8;
pub extern fn addch(chtype) c_int;
pub extern fn addchnstr([*c]const chtype, c_int) c_int;
pub extern fn addchstr([*c]const chtype) c_int;
pub extern fn addnstr([*c]const u8, c_int) c_int;
pub extern fn addstr([*c]const u8) c_int;
pub extern fn attroff(chtype) c_int;
pub extern fn attron(chtype) c_int;
pub extern fn attrset(chtype) c_int;
pub extern fn attr_get([*c]attr_t, [*c]c_short, ?*c_void) c_int;
pub extern fn attr_off(attr_t, ?*c_void) c_int;
pub extern fn attr_on(attr_t, ?*c_void) c_int;
pub extern fn attr_set(attr_t, c_short, ?*c_void) c_int;
pub extern fn baudrate() c_int;
pub extern fn beep() c_int;
pub extern fn bkgd(chtype) c_int;
pub extern fn bkgdset(chtype) void;
pub extern fn border(chtype, chtype, chtype, chtype, chtype, chtype, chtype, chtype) c_int;
pub extern fn box([*c]WINDOW, chtype, chtype) c_int;
pub extern fn can_change_color() bool;
pub extern fn cbreak() c_int;
pub extern fn chgat(c_int, attr_t, c_short, ?*const c_void) c_int;
pub extern fn clearok([*c]WINDOW, bool) c_int;
pub extern fn clear() c_int;
pub extern fn clrtobot() c_int;
pub extern fn clrtoeol() c_int;
pub extern fn color_content(c_short, [*c]c_short, [*c]c_short, [*c]c_short) c_int;
pub extern fn color_set(c_short, ?*c_void) c_int;
pub extern fn copywin([*c]const WINDOW, [*c]WINDOW, c_int, c_int, c_int, c_int, c_int, c_int, c_int) c_int;
pub extern fn curs_set(c_int) c_int;
pub extern fn def_prog_mode() c_int;
pub extern fn def_shell_mode() c_int;
pub extern fn delay_output(c_int) c_int;
pub extern fn delch() c_int;
pub extern fn deleteln() c_int;
pub extern fn delscreen([*c]SCREEN) void;
pub extern fn delwin([*c]WINDOW) c_int;
pub extern fn derwin([*c]WINDOW, c_int, c_int, c_int, c_int) [*c]WINDOW;
pub extern fn doupdate() c_int;
pub extern fn dupwin([*c]WINDOW) [*c]WINDOW;
pub extern fn echochar(chtype) c_int;
pub extern fn echo() c_int;
pub extern fn endwin() c_int;
pub extern fn erasechar() u8;
pub extern fn erase() c_int;
pub extern fn extended_color_content(c_int, [*c]c_int, [*c]c_int, [*c]c_int) c_int;
pub extern fn extended_pair_content(c_int, [*c]c_int, [*c]c_int) c_int;
pub extern fn filter() void;
pub extern fn flash() c_int;
pub extern fn flushinp() c_int;
pub extern fn getbkgd([*c]WINDOW) chtype;
pub extern fn getnstr([*c]u8, c_int) c_int;
pub extern fn getstr([*c]u8) c_int;
pub extern fn getwin([*c]FILE) [*c]WINDOW;
pub extern fn halfdelay(c_int) c_int;
pub extern fn has_colors() bool;
pub extern fn has_ic() bool;
pub extern fn has_il() bool;
pub extern fn hline(chtype, c_int) c_int;
pub extern fn idcok([*c]WINDOW, bool) void;
pub extern fn idlok([*c]WINDOW, bool) c_int;
pub extern fn immedok([*c]WINDOW, bool) void;
pub extern fn inchnstr([*c]chtype, c_int) c_int;
pub extern fn inchstr([*c]chtype) c_int;
pub extern fn inch() chtype;
pub extern fn init_color(c_short, c_short, c_short, c_short) c_int;
pub extern fn init_extended_color(c_int, c_int, c_int, c_int) c_int;
pub extern fn init_extended_pair(c_int, c_int, c_int) c_int;
pub extern fn init_pair(c_short, c_short, c_short) c_int;
pub extern fn initscr_x64() [*c]WINDOW;
pub extern fn innstr([*c]u8, c_int) c_int;
pub extern fn insch(chtype) c_int;
pub extern fn insdelln(c_int) c_int;
pub extern fn insertln() c_int;
pub extern fn insnstr([*c]const u8, c_int) c_int;
pub extern fn insstr([*c]const u8) c_int;
pub extern fn instr([*c]u8) c_int;
pub extern fn intrflush([*c]WINDOW, bool) c_int;
pub extern fn isendwin() bool;
pub extern fn is_linetouched([*c]WINDOW, c_int) bool;
pub extern fn is_wintouched([*c]WINDOW) bool;
pub extern fn keyname(c_int) [*c]u8;
pub extern fn keypad([*c]WINDOW, bool) c_int;
pub extern fn killchar() u8;
pub extern fn leaveok([*c]WINDOW, bool) c_int;
pub extern fn longname() [*c]u8;
pub extern fn meta([*c]WINDOW, bool) c_int;
pub extern fn move(c_int, c_int) c_int;
pub extern fn mvaddch(c_int, c_int, chtype) c_int;
pub extern fn mvaddchnstr(c_int, c_int, [*c]const chtype, c_int) c_int;
pub extern fn mvaddchstr(c_int, c_int, [*c]const chtype) c_int;
pub extern fn mvaddnstr(c_int, c_int, [*c]const u8, c_int) c_int;
pub extern fn mvaddstr(c_int, c_int, [*c]const u8) c_int;
pub extern fn mvchgat(c_int, c_int, c_int, attr_t, c_short, ?*const c_void) c_int;
pub extern fn mvcur(c_int, c_int, c_int, c_int) c_int;
pub extern fn mvdelch(c_int, c_int) c_int;
pub extern fn mvderwin([*c]WINDOW, c_int, c_int) c_int;
pub extern fn mvgetch(c_int, c_int) c_int;
pub extern fn mvgetnstr(c_int, c_int, [*c]u8, c_int) c_int;
pub extern fn mvgetstr(c_int, c_int, [*c]u8) c_int;
pub extern fn mvhline(c_int, c_int, chtype, c_int) c_int;
pub extern fn mvinch(c_int, c_int) chtype;
pub extern fn mvinchnstr(c_int, c_int, [*c]chtype, c_int) c_int;
pub extern fn mvinchstr(c_int, c_int, [*c]chtype) c_int;
pub extern fn mvinnstr(c_int, c_int, [*c]u8, c_int) c_int;
pub extern fn mvinsch(c_int, c_int, chtype) c_int;
pub extern fn mvinsnstr(c_int, c_int, [*c]const u8, c_int) c_int;
pub extern fn mvinsstr(c_int, c_int, [*c]const u8) c_int;
pub extern fn mvinstr(c_int, c_int, [*c]u8) c_int;
pub extern fn mvprintw(c_int, c_int, [*c]const u8, ...) c_int;
pub extern fn mvscanw(c_int, c_int, [*c]const u8, ...) c_int;
pub extern fn mvvline(c_int, c_int, chtype, c_int) c_int;
pub extern fn mvwaddchnstr([*c]WINDOW, c_int, c_int, [*c]const chtype, c_int) c_int;
pub extern fn mvwaddchstr([*c]WINDOW, c_int, c_int, [*c]const chtype) c_int;
pub extern fn mvwaddch([*c]WINDOW, c_int, c_int, chtype) c_int;
pub extern fn mvwaddnstr([*c]WINDOW, c_int, c_int, [*c]const u8, c_int) c_int;
pub extern fn mvwaddstr([*c]WINDOW, c_int, c_int, [*c]const u8) c_int;
pub extern fn mvwchgat([*c]WINDOW, c_int, c_int, c_int, attr_t, c_short, ?*const c_void) c_int;
pub extern fn mvwdelch([*c]WINDOW, c_int, c_int) c_int;
pub extern fn mvwgetch([*c]WINDOW, c_int, c_int) c_int;
pub extern fn mvwgetnstr([*c]WINDOW, c_int, c_int, [*c]u8, c_int) c_int;
pub extern fn mvwgetstr([*c]WINDOW, c_int, c_int, [*c]u8) c_int;
pub extern fn mvwhline([*c]WINDOW, c_int, c_int, chtype, c_int) c_int;
pub extern fn mvwinchnstr([*c]WINDOW, c_int, c_int, [*c]chtype, c_int) c_int;
pub extern fn mvwinchstr([*c]WINDOW, c_int, c_int, [*c]chtype) c_int;
pub extern fn mvwinch([*c]WINDOW, c_int, c_int) chtype;
pub extern fn mvwinnstr([*c]WINDOW, c_int, c_int, [*c]u8, c_int) c_int;
pub extern fn mvwinsch([*c]WINDOW, c_int, c_int, chtype) c_int;
pub extern fn mvwinsnstr([*c]WINDOW, c_int, c_int, [*c]const u8, c_int) c_int;
pub extern fn mvwinsstr([*c]WINDOW, c_int, c_int, [*c]const u8) c_int;
pub extern fn mvwinstr([*c]WINDOW, c_int, c_int, [*c]u8) c_int;
pub extern fn mvwin([*c]WINDOW, c_int, c_int) c_int;
pub extern fn mvwprintw([*c]WINDOW, c_int, c_int, [*c]const u8, ...) c_int;
pub extern fn mvwscanw([*c]WINDOW, c_int, c_int, [*c]const u8, ...) c_int;
pub extern fn mvwvline([*c]WINDOW, c_int, c_int, chtype, c_int) c_int;
pub extern fn napms(c_int) c_int;
pub extern fn newpad(c_int, c_int) [*c]WINDOW;
pub extern fn newterm([*c]const u8, [*c]FILE, [*c]FILE) [*c]SCREEN;
pub extern fn newwin(c_int, c_int, c_int, c_int) [*c]WINDOW;
pub extern fn nl() c_int;
pub extern fn nocbreak() c_int;
pub extern fn nodelay([*c]WINDOW, bool) c_int;
pub extern fn noecho() c_int;
pub extern fn nonl() c_int;
pub extern fn noqiflush() void;
pub extern fn noraw() c_int;
pub extern fn notimeout([*c]WINDOW, bool) c_int;
pub extern fn overlay([*c]const WINDOW, [*c]WINDOW) c_int;
pub extern fn overwrite([*c]const WINDOW, [*c]WINDOW) c_int;
pub extern fn pair_content(c_short, [*c]c_short, [*c]c_short) c_int;
pub extern fn pechochar([*c]WINDOW, chtype) c_int;
pub extern fn pnoutrefresh([*c]WINDOW, c_int, c_int, c_int, c_int, c_int, c_int) c_int;
pub extern fn prefresh([*c]WINDOW, c_int, c_int, c_int, c_int, c_int, c_int) c_int;
pub extern fn printw([*c]const u8, ...) c_int;
pub extern fn putwin([*c]WINDOW, [*c]FILE) c_int;
pub extern fn qiflush() void;
pub extern fn raw() c_int;
pub extern fn redrawwin([*c]WINDOW) c_int;
pub extern fn refresh() c_int;
pub extern fn reset_prog_mode() c_int;
pub extern fn reset_shell_mode() c_int;
pub extern fn resetty() c_int;
pub extern fn ripoffline(c_int, ?fn ([*c]WINDOW, c_int) callconv(.C) c_int) c_int;
pub extern fn savetty() c_int;
pub extern fn scanw([*c]const u8, ...) c_int;
pub extern fn scr_dump([*c]const u8) c_int;
pub extern fn scr_init([*c]const u8) c_int;
pub extern fn scr_restore([*c]const u8) c_int;
pub extern fn scr_set([*c]const u8) c_int;
pub extern fn scrl(c_int) c_int;
pub extern fn scroll([*c]WINDOW) c_int;
pub extern fn scrollok([*c]WINDOW, bool) c_int;
pub extern fn set_term([*c]SCREEN) [*c]SCREEN;
pub extern fn setscrreg(c_int, c_int) c_int;
pub extern fn slk_attroff(chtype) c_int;
pub extern fn slk_attr_off(attr_t, ?*c_void) c_int;
pub extern fn slk_attron(chtype) c_int;
pub extern fn slk_attr_on(attr_t, ?*c_void) c_int;
pub extern fn slk_attrset(chtype) c_int;
pub extern fn slk_attr_set(attr_t, c_short, ?*c_void) c_int;
pub extern fn slk_clear() c_int;
pub extern fn slk_color(c_short) c_int;
pub extern fn slk_init(c_int) c_int;
pub extern fn slk_label(c_int) [*c]u8;
pub extern fn slk_noutrefresh() c_int;
pub extern fn slk_refresh() c_int;
pub extern fn slk_restore() c_int;
pub extern fn slk_set(c_int, [*c]const u8, c_int) c_int;
pub extern fn slk_touch() c_int;
pub extern fn standend() c_int;
pub extern fn standout() c_int;
pub extern fn start_color() c_int;
pub extern fn subpad([*c]WINDOW, c_int, c_int, c_int, c_int) [*c]WINDOW;
pub extern fn subwin([*c]WINDOW, c_int, c_int, c_int, c_int) [*c]WINDOW;
pub extern fn syncok([*c]WINDOW, bool) c_int;
pub extern fn termattrs() chtype;
pub extern fn term_attrs() attr_t;
pub extern fn termname() [*c]u8;
pub extern fn timeout(c_int) void;
pub extern fn touchline([*c]WINDOW, c_int, c_int) c_int;
pub extern fn touchwin([*c]WINDOW) c_int;
pub extern fn typeahead(c_int) c_int;
pub extern fn untouchwin([*c]WINDOW) c_int;
pub extern fn use_env(bool) void;
pub extern fn vidattr(chtype) c_int;
pub extern fn vid_attr(attr_t, c_short, ?*c_void) c_int;
pub extern fn vidputs(chtype, ?fn (c_int) callconv(.C) c_int) c_int;
pub extern fn vid_puts(attr_t, c_short, ?*c_void, ?fn (c_int) callconv(.C) c_int) c_int;
pub extern fn vline(chtype, c_int) c_int;
pub extern fn vw_printw([*c]WINDOW, [*c]const u8, va_list) c_int;
pub extern fn vwprintw([*c]WINDOW, [*c]const u8, va_list) c_int;
pub extern fn vw_scanw([*c]WINDOW, [*c]const u8, va_list) c_int;
pub extern fn vwscanw([*c]WINDOW, [*c]const u8, va_list) c_int;
pub extern fn waddchnstr([*c]WINDOW, [*c]const chtype, c_int) c_int;
pub extern fn waddchstr([*c]WINDOW, [*c]const chtype) c_int;
pub extern fn waddch([*c]WINDOW, chtype) c_int;
pub extern fn waddnstr([*c]WINDOW, [*c]const u8, c_int) c_int;
pub extern fn waddstr([*c]WINDOW, [*c]const u8) c_int;
pub extern fn wattroff([*c]WINDOW, chtype) c_int;
pub extern fn wattron([*c]WINDOW, chtype) c_int;
pub extern fn wattrset([*c]WINDOW, chtype) c_int;
pub extern fn wattr_get([*c]WINDOW, [*c]attr_t, [*c]c_short, ?*c_void) c_int;
pub extern fn wattr_off([*c]WINDOW, attr_t, ?*c_void) c_int;
pub extern fn wattr_on([*c]WINDOW, attr_t, ?*c_void) c_int;
pub extern fn wattr_set([*c]WINDOW, attr_t, c_short, ?*c_void) c_int;
pub extern fn wbkgdset([*c]WINDOW, chtype) void;
pub extern fn wbkgd([*c]WINDOW, chtype) c_int;
pub extern fn wborder([*c]WINDOW, chtype, chtype, chtype, chtype, chtype, chtype, chtype, chtype) c_int;
pub extern fn wchgat([*c]WINDOW, c_int, attr_t, c_short, ?*const c_void) c_int;
pub extern fn wclear([*c]WINDOW) c_int;
pub extern fn wclrtobot([*c]WINDOW) c_int;
pub extern fn wclrtoeol([*c]WINDOW) c_int;
pub extern fn wcolor_set([*c]WINDOW, c_short, ?*c_void) c_int;
pub extern fn wcursyncup([*c]WINDOW) void;
pub extern fn wdelch([*c]WINDOW) c_int;
pub extern fn wdeleteln([*c]WINDOW) c_int;
pub extern fn wechochar([*c]WINDOW, chtype) c_int;
pub extern fn werase([*c]WINDOW) c_int;
pub extern fn wgetch([*c]WINDOW) c_int;
pub extern fn wgetnstr([*c]WINDOW, [*c]u8, c_int) c_int;
pub extern fn wgetstr([*c]WINDOW, [*c]u8) c_int;
pub extern fn whline([*c]WINDOW, chtype, c_int) c_int;
pub extern fn winchnstr([*c]WINDOW, [*c]chtype, c_int) c_int;
pub extern fn winchstr([*c]WINDOW, [*c]chtype) c_int;
pub extern fn winch([*c]WINDOW) chtype;
pub extern fn winnstr([*c]WINDOW, [*c]u8, c_int) c_int;
pub extern fn winsch([*c]WINDOW, chtype) c_int;
pub extern fn winsdelln([*c]WINDOW, c_int) c_int;
pub extern fn winsertln([*c]WINDOW) c_int;
pub extern fn winsnstr([*c]WINDOW, [*c]const u8, c_int) c_int;
pub extern fn winsstr([*c]WINDOW, [*c]const u8) c_int;
pub extern fn winstr([*c]WINDOW, [*c]u8) c_int;
pub extern fn wmove([*c]WINDOW, c_int, c_int) c_int;
pub extern fn wnoutrefresh([*c]WINDOW) c_int;
pub extern fn wprintw([*c]WINDOW, [*c]const u8, ...) c_int;
pub extern fn wredrawln([*c]WINDOW, c_int, c_int) c_int;
pub extern fn wrefresh([*c]WINDOW) c_int;
pub extern fn wscanw([*c]WINDOW, [*c]const u8, ...) c_int;
pub extern fn wscrl([*c]WINDOW, c_int) c_int;
pub extern fn wsetscrreg([*c]WINDOW, c_int, c_int) c_int;
pub extern fn wstandend([*c]WINDOW) c_int;
pub extern fn wstandout([*c]WINDOW) c_int;
pub extern fn wsyncdown([*c]WINDOW) void;
pub extern fn wsyncup([*c]WINDOW) void;
pub extern fn wtimeout([*c]WINDOW, c_int) void;
pub extern fn wtouchln([*c]WINDOW, c_int, c_int, c_int) c_int;
pub extern fn wvline([*c]WINDOW, chtype, c_int) c_int;
pub extern fn getattrs([*c]WINDOW) chtype;
pub extern fn getbegx([*c]WINDOW) c_int;
pub extern fn getbegy([*c]WINDOW) c_int;
pub extern fn getmaxx([*c]WINDOW) c_int;
pub extern fn getmaxy([*c]WINDOW) c_int;
pub extern fn getparx([*c]WINDOW) c_int;
pub extern fn getpary([*c]WINDOW) c_int;
pub extern fn getcurx([*c]WINDOW) c_int;
pub extern fn getcury([*c]WINDOW) c_int;
pub extern fn traceoff() void;
pub extern fn traceon() void;
pub extern fn trace(c_uint) void;
pub extern fn curses_trace(c_uint) c_uint;
pub extern fn unctrl(chtype) [*c]u8;
pub extern fn crmode() c_int;
pub extern fn nocrmode() c_int;
pub extern fn draino(c_int) c_int;
pub extern fn resetterm() c_int;
pub extern fn fixterm() c_int;
pub extern fn saveterm() c_int;
pub extern fn setsyx(c_int, c_int) void;
pub extern fn mouse_set(mmask_t) c_int;
pub extern fn mouse_on(mmask_t) c_int;
pub extern fn mouse_off(mmask_t) c_int;
pub extern fn request_mouse_pos() c_int;
pub extern fn wmouse_position([*c]WINDOW, [*c]c_int, [*c]c_int) void;
pub extern fn getmouse() mmask_t;
pub extern fn alloc_pair(c_int, c_int) c_int;
pub extern fn assume_default_colors(c_int, c_int) c_int;
pub extern fn curses_version() [*c]const u8;
pub extern fn find_pair(c_int, c_int) c_int;
pub extern fn free_pair(c_int) c_int;
pub extern fn has_key(c_int) bool;
pub extern fn is_keypad([*c]const WINDOW) bool;
pub extern fn is_leaveok([*c]const WINDOW) bool;
pub extern fn is_pad([*c]const WINDOW) bool;
pub extern fn reset_color_pairs() void;
pub extern fn set_tabsize(c_int) c_int;
pub extern fn use_default_colors() c_int;
pub extern fn wresize([*c]WINDOW, c_int, c_int) c_int;
pub extern fn has_mouse() bool;
pub extern fn mouseinterval(c_int) c_int;
pub extern fn mousemask(mmask_t, [*c]mmask_t) mmask_t;
pub extern fn mouse_trafo([*c]c_int, [*c]c_int, bool) bool;
pub extern fn nc_getmouse([*c]MEVENT) c_int;
pub extern fn ungetmouse([*c]MEVENT) c_int;
pub extern fn wenclose([*c]const WINDOW, c_int, c_int) bool;
pub extern fn wmouse_trafo([*c]const WINDOW, [*c]c_int, [*c]c_int, bool) bool;
pub extern fn addrawch(chtype) c_int;
pub extern fn insrawch(chtype) c_int;
pub extern fn is_termresized() bool;
pub extern fn mvaddrawch(c_int, c_int, chtype) c_int;
pub extern fn mvdeleteln(c_int, c_int) c_int;
pub extern fn mvinsertln(c_int, c_int) c_int;
pub extern fn mvinsrawch(c_int, c_int, chtype) c_int;
pub extern fn mvwaddrawch([*c]WINDOW, c_int, c_int, chtype) c_int;
pub extern fn mvwdeleteln([*c]WINDOW, c_int, c_int) c_int;
pub extern fn mvwinsertln([*c]WINDOW, c_int, c_int) c_int;
pub extern fn mvwinsrawch([*c]WINDOW, c_int, c_int, chtype) c_int;
pub extern fn raw_output(bool) c_int;
pub extern fn resize_term(c_int, c_int) c_int;
pub extern fn resize_window([*c]WINDOW, c_int, c_int) [*c]WINDOW;
pub extern fn waddrawch([*c]WINDOW, chtype) c_int;
pub extern fn winsrawch([*c]WINDOW, chtype) c_int;
pub extern fn wordchar() u8;
pub extern fn PDC_debug([*c]const u8, ...) void;
pub extern fn _tracef([*c]const u8, ...) void;
pub extern fn PDC_get_version([*c]PDC_VERSION) void;
pub extern fn PDC_ungetch(c_int) c_int;
pub extern fn PDC_set_blink(bool) c_int;
pub extern fn PDC_set_bold(bool) c_int;
pub extern fn PDC_set_line_color(c_short) c_int;
pub extern fn PDC_set_title([*c]const u8) void;
pub extern fn PDC_set_box_type(box_type: c_int) c_int;
pub extern fn PDC_clearclipboard() c_int;
pub extern fn PDC_freeclipboard([*c]u8) c_int;
pub extern fn PDC_getclipboard([*c][*c]u8, [*c]c_long) c_int;
pub extern fn PDC_setclipboard([*c]const u8, c_long) c_int;
pub extern fn PDC_get_key_modifiers() c_ulong;
pub extern fn PDC_return_key_modifiers(bool) c_int;
pub extern fn PDC_set_resize_limits(new_min_lines: c_int, new_max_lines: c_int, new_min_cols: c_int, new_max_cols: c_int) void;
pub extern fn PDC_set_function_key(function: c_uint, new_key: c_int) c_int;
pub extern fn Xinitscr(c_int, [*c][*c]u8) [*c]WINDOW;
pub extern fn touchoverlap([*c]const WINDOW, [*c]WINDOW) c_int;
pub extern fn underend() c_int;
pub extern fn underscore() c_int;
pub extern fn wunderend([*c]WINDOW) c_int;
pub extern fn wunderscore([*c]WINDOW) c_int;
pub const PDC_STRINGIZE = @compileError("unable to translate C expr: unexpected token .Hash"); // ..\git\PDCursesMod\curses.h:45:9
pub const PDC_VERDOT = @compileError("unable to translate C expr: unexpected token .StringLiteral"); // ..\git\PDCursesMod\curses.h:48:9
pub const PDC_VER_YMD = @compileError("unable to translate C expr: unexpected token .StringLiteral"); // ..\git\PDCursesMod\curses.h:52:9
pub const va_start = @compileError("TODO implement function '__builtin_va_start' in std.zig.c_builtins"); // C:\Zig\lib\include\stdarg.h:17:9
pub const va_end = @compileError("TODO implement function '__builtin_va_end' in std.zig.c_builtins"); // C:\Zig\lib\include\stdarg.h:18:9
pub const va_arg = @compileError("TODO implement function '__builtin_va_arg' in std.zig.c_builtins"); // C:\Zig\lib\include\stdarg.h:19:9
pub const __va_copy = @compileError("TODO implement function '__builtin_va_copy' in std.zig.c_builtins"); // C:\Zig\lib\include\stdarg.h:24:9
pub const va_copy = @compileError("TODO implement function '__builtin_va_copy' in std.zig.c_builtins"); // C:\Zig\lib\include\stdarg.h:27:9
pub const offsetof = @compileError("TODO implement function '__builtin_offsetof' in std.zig.c_builtins"); // C:\Zig\lib\include\stddef.h:104:9
pub const __STRINGIFY = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Zig\lib\libc\include\any-windows-any/_mingw_mac.h:10:9
pub const __MINGW64_VERSION_STR = @compileError("unable to translate C expr: unexpected token .StringLiteral"); // C:\Zig\lib\libc\include\any-windows-any/_mingw_mac.h:26:9
pub const __MINGW_IMP_SYMBOL = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Zig\lib\libc\include\any-windows-any/_mingw_mac.h:119:11
pub const __MINGW_IMP_LSYMBOL = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Zig\lib\libc\include\any-windows-any/_mingw_mac.h:120:11
pub const __MINGW_LSYMBOL = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Zig\lib\libc\include\any-windows-any/_mingw_mac.h:122:11
pub const __MINGW_POISON_NAME = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Zig\lib\libc\include\any-windows-any/_mingw_mac.h:203:11
pub const __MSABI_LONG = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Zig\lib\libc\include\any-windows-any/_mingw_mac.h:209:13
pub const __MINGW_ATTRIB_DEPRECATED_STR = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any/_mingw_mac.h:247:11
pub const __mingw_ovr = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // C:\Zig\lib\libc\include\any-windows-any/_mingw_mac.h:289:11
pub const __MINGW_CRT_NAME_CONCAT2 = @compileError("unable to translate C expr: unexpected token .Colon"); // C:\Zig\lib\libc\include\any-windows-any/_mingw_secapi.h:41:9
pub const __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_ = @compileError("unable to translate C expr: unexpected token .Identifier"); // C:\Zig\lib\libc\include\any-windows-any/_mingw_secapi.h:69:9
pub const __MINGW_IMPORT = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:51:12
pub const __CRT_INLINE = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:90:11
pub const __MINGW_INTRIN_INLINE = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:97:9
pub const __MINGW_PRAGMA_PARAM = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:215:9
pub const __MINGW_BROKEN_INTERFACE = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:218:9
pub const __forceinline = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:267:9
pub const _crt_va_start = @compileError("TODO implement function '__builtin_va_start' in std.zig.c_builtins"); // C:\Zig\lib\libc\include\any-windows-any\vadefs.h:48:9
pub const _crt_va_arg = @compileError("TODO implement function '__builtin_va_arg' in std.zig.c_builtins"); // C:\Zig\lib\libc\include\any-windows-any\vadefs.h:49:9
pub const _crt_va_end = @compileError("TODO implement function '__builtin_va_end' in std.zig.c_builtins"); // C:\Zig\lib\libc\include\any-windows-any\vadefs.h:50:9
pub const _crt_va_copy = @compileError("TODO implement function '__builtin_va_copy' in std.zig.c_builtins"); // C:\Zig\lib\libc\include\any-windows-any\vadefs.h:51:9
pub const __CRT_STRINGIZE = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:286:9
pub const __CRT_WIDE = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:291:9
pub const _CRT_INSECURE_DEPRECATE_MEMORY = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:353:9
pub const _CRT_INSECURE_DEPRECATE_GLOBALS = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:357:9
pub const _CRT_OBSOLETE = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:365:9
pub const _UNION_NAME = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:476:9
pub const _STRUCT_NAME = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:477:9
pub const __CRT_UUID_DECL = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\_mingw.h:564:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:267:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:268:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:269:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:270:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:271:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:272:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:273:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:274:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:275:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:276:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:277:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:278:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:282:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:284:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:286:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:288:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:290:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:427:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:428:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:429:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:430:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:431:9
pub const __crt_typefix = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Zig\lib\libc\include\any-windows-any\corecrt.h:491:9
pub const _fgetc_nolock = @compileError("TODO unary inc/dec expr"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:1432:9
pub const _fputc_nolock = @compileError("TODO unary inc/dec expr"); // C:\Zig\lib\libc\include\any-windows-any\stdio.h:1433:9
pub const INT64_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Zig\lib\libc\include\any-windows-any\stdint.h:198:9
pub const UINT64_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Zig\lib\libc\include\any-windows-any\stdint.h:203:9
pub const INTMAX_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Zig\lib\libc\include\any-windows-any\stdint.h:206:9
pub const UINTMAX_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Zig\lib\libc\include\any-windows-any\stdint.h:207:9
pub const PDCEX = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // ..\git\PDCursesMod\curses.h:445:10
pub const getbegyx = @compileError("unable to translate C expr: expected ')' instead got: Equal"); // ..\git\PDCursesMod\curses.h:1747:9
pub const getmaxyx = @compileError("unable to translate C expr: expected ')' instead got: Equal"); // ..\git\PDCursesMod\curses.h:1748:9
pub const getparyx = @compileError("unable to translate C expr: expected ')' instead got: Equal"); // ..\git\PDCursesMod\curses.h:1749:9
pub const getyx = @compileError("unable to translate C expr: expected ')' instead got: Equal"); // ..\git\PDCursesMod\curses.h:1750:9
pub const getsyx = @compileError("unable to translate C expr: unexpected token .LBrace"); // ..\git\PDCursesMod\curses.h:1752:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 12);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 1);
pub const __clang_version__ = "12.0.1 (https://github.com/llvm/llvm-project 328a6ec955327c6d56b6bc3478c723dd3cd468ef)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 12.0.1 (https://github.com/llvm/llvm-project 328a6ec955327c6d56b6bc3478c723dd3cd468ef)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __SEH__ = @as(c_int, 1);
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __SIZE_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __PTRDIFF_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTPTR_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __UINTPTR_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 2);
pub const __SIZEOF_WINT_T__ = @as(c_int, 2);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_FMTd__ = "lld";
pub const __INTMAX_FMTi__ = "lli";
pub const __INTMAX_C_SUFFIX__ = LL;
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_FMTo__ = "llo";
pub const __UINTMAX_FMTu__ = "llu";
pub const __UINTMAX_FMTx__ = "llx";
pub const __UINTMAX_FMTX__ = "llX";
pub const __UINTMAX_C_SUFFIX__ = ULL;
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_TYPE__ = c_longlong;
pub const __PTRDIFF_FMTd__ = "lld";
pub const __PTRDIFF_FMTi__ = "lli";
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_TYPE__ = c_longlong;
pub const __INTPTR_FMTd__ = "lld";
pub const __INTPTR_FMTi__ = "lli";
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZE_TYPE__ = c_ulonglong;
pub const __SIZE_FMTo__ = "llo";
pub const __SIZE_FMTu__ = "llu";
pub const __SIZE_FMTx__ = "llx";
pub const __SIZE_FMTX__ = "llX";
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_TYPE__ = c_ushort;
pub const __WCHAR_WIDTH__ = @as(c_int, 16);
pub const __WINT_TYPE__ = c_ushort;
pub const __WINT_WIDTH__ = @as(c_int, 16);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_TYPE__ = c_ulonglong;
pub const __UINTPTR_FMTo__ = "llo";
pub const __UINTPTR_FMTu__ = "llu";
pub const __UINTPTR_FMTx__ = "llx";
pub const __UINTPTR_FMTX__ = "llX";
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WCHAR_UNSIGNED__ = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = LL;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = U;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = ULL;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = __attribute__(address_space(@as(c_int, 256)));
pub const __seg_fs = __attribute__(address_space(@as(c_int, 257)));
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __RTM__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __SGX__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const _WIN32 = @as(c_int, 1);
pub const _WIN64 = @as(c_int, 1);
pub const WIN32 = @as(c_int, 1);
pub const __WIN32 = @as(c_int, 1);
pub const __WIN32__ = @as(c_int, 1);
pub const WINNT = @as(c_int, 1);
pub const __WINNT = @as(c_int, 1);
pub const __WINNT__ = @as(c_int, 1);
pub const WIN64 = @as(c_int, 1);
pub const __WIN64 = @as(c_int, 1);
pub const __WIN64__ = @as(c_int, 1);
pub const __MINGW64__ = @as(c_int, 1);
pub const __MSVCRT__ = @as(c_int, 1);
pub const __MINGW32__ = @as(c_int, 1);
pub inline fn __declspec(a: anytype) @TypeOf(__attribute__(a)) {
    return __attribute__(a);
}
pub const _cdecl = __attribute__(__cdecl__);
pub const __cdecl = __attribute__(__cdecl__);
pub const _stdcall = __attribute__(__stdcall__);
pub const __stdcall = __attribute__(__stdcall__);
pub const _fastcall = __attribute__(__fastcall__);
pub const __fastcall = __attribute__(__fastcall__);
pub const _thiscall = __attribute__(__thiscall__);
pub const __thiscall = __attribute__(__thiscall__);
pub const _pascal = __attribute__(__pascal__);
pub const __pascal = __attribute__(__pascal__);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __PDCURSES__ = @as(c_int, 1);
pub const __PDCURSESMOD__ = @as(c_int, 1);
pub const PDCURSES = @as(c_int, 1);
pub const PDC_BUILD = ((PDC_VER_MAJOR * @as(c_int, 1000)) + (PDC_VER_MINOR * @as(c_int, 100))) + PDC_VER_CHANGE;
pub const PDC_VER_MAJOR = @as(c_int, 4);
pub const PDC_VER_MINOR = @as(c_int, 3);
pub const PDC_VER_CHANGE = @as(c_int, 0);
pub const PDC_VER_YEAR = @as(c_int, 2021);
pub const PDC_VER_MONTH = @as(c_int, 9);
pub const PDC_VER_DAY = @as(c_int, 19);
pub inline fn PDC_stringize(x: anytype) @TypeOf(PDC_STRINGIZE(x)) {
    return PDC_STRINGIZE(x);
}
pub const PDC_99 = @as(c_int, 1);
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const NULL = @import("std").zig.c_translation.cast(?*c_void, @as(c_int, 0));
pub inline fn __MINGW64_STRINGIFY(x: anytype) @TypeOf(__STRINGIFY(x)) {
    return __STRINGIFY(x);
}
pub const __MINGW64_VERSION_MAJOR = @as(c_int, 9);
pub const __MINGW64_VERSION_MINOR = @as(c_int, 0);
pub const __MINGW64_VERSION_BUGFIX = @as(c_int, 0);
pub const __MINGW64_VERSION_RC = @as(c_int, 0);
pub const __MINGW64_VERSION_STATE = "alpha";
pub const __MINGW32_MAJOR_VERSION = @as(c_int, 3);
pub const __MINGW32_MINOR_VERSION = @as(c_int, 11);
pub const _M_AMD64 = @as(c_int, 100);
pub const _M_X64 = @as(c_int, 100);
pub const @"_" = @as(c_int, 1);
pub const __MINGW_USE_UNDERSCORE_PREFIX = @as(c_int, 0);
pub inline fn __MINGW_USYMBOL(sym: anytype) @TypeOf(sym) {
    return sym;
}
pub inline fn __MINGW_ASM_CALL(func: anytype) @TypeOf(__asm__(__MINGW64_STRINGIFY(__MINGW_USYMBOL(func)))) {
    return __asm__(__MINGW64_STRINGIFY(__MINGW_USYMBOL(func)));
}
pub inline fn __MINGW_ASM_CRT_CALL(func: anytype) @TypeOf(__asm__(__STRINGIFY(func))) {
    return __asm__(__STRINGIFY(func));
}
pub const __MINGW_EXTENSION = __extension__;
pub const __C89_NAMELESS = __MINGW_EXTENSION;
pub const __GNU_EXTENSION = __MINGW_EXTENSION;
pub const __MINGW_HAVE_ANSI_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_ANSI_C99_SCANF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_SCANF = @as(c_int, 1);
pub const __MINGW_GCC_VERSION = ((__GNUC__ * @as(c_int, 10000)) + (__GNUC_MINOR__ * @as(c_int, 100))) + __GNUC_PATCHLEVEL__;
pub inline fn __MINGW_GNUC_PREREQ(major: anytype, minor: anytype) @TypeOf((__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor))) {
    return (__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor));
}
pub inline fn __MINGW_MSC_PREREQ(major: anytype, minor: anytype) @TypeOf(@as(c_int, 0)) {
    _ = major;
    _ = minor;
    return @as(c_int, 0);
}
pub const __MINGW_SEC_WARN_STR = "This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation";
pub const __MINGW_MSVC2005_DEPREC_STR = "This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation";
pub const __MINGW_ATTRIB_DEPRECATED_MSVC2005 = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR);
pub const __MINGW_ATTRIB_DEPRECATED_SEC_WARN = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR);
pub inline fn __MINGW_MS_PRINTF(__format: anytype, __args: anytype) @TypeOf(__attribute__(__format__(ms_printf, __format, __args))) {
    return __attribute__(__format__(ms_printf, __format, __args));
}
pub inline fn __MINGW_MS_SCANF(__format: anytype, __args: anytype) @TypeOf(__attribute__(__format__(ms_scanf, __format, __args))) {
    return __attribute__(__format__(ms_scanf, __format, __args));
}
pub inline fn __MINGW_GNU_PRINTF(__format: anytype, __args: anytype) @TypeOf(__attribute__(__format__(gnu_printf, __format, __args))) {
    return __attribute__(__format__(gnu_printf, __format, __args));
}
pub inline fn __MINGW_GNU_SCANF(__format: anytype, __args: anytype) @TypeOf(__attribute__(__format__(gnu_scanf, __format, __args))) {
    return __attribute__(__format__(gnu_scanf, __format, __args));
}
pub const __mingw_static_ovr = __mingw_ovr;
pub const __MINGW_FORTIFY_LEVEL = @as(c_int, 0);
pub const __mingw_bos_ovr = __mingw_ovr;
pub const __MINGW_FORTIFY_VA_ARG = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = @as(c_int, 0);
pub const __LONG32 = c_long;
pub const __USE_CRTIMP = @as(c_int, 1);
pub const _CRTIMP = __attribute__(__dllimport__);
pub const USE___UUIDOF = @as(c_int, 0);
pub const _inline = __inline;
pub inline fn __UNUSED_PARAM(x: anytype) @TypeOf(x ++ __attribute__(__unused__)) {
    return x ++ __attribute__(__unused__);
}
pub const __restrict_arr = __restrict;
pub const __MINGW_ATTRIB_NORETURN = __attribute__(__noreturn__);
pub const __MINGW_ATTRIB_CONST = __attribute__(__const__);
pub const __MINGW_ATTRIB_MALLOC = __attribute__(__malloc__);
pub const __MINGW_ATTRIB_PURE = __attribute__(__pure__);
pub inline fn __MINGW_ATTRIB_NONNULL(arg: anytype) @TypeOf(__attribute__(__nonnull__(arg))) {
    return __attribute__(__nonnull__(arg));
}
pub const __MINGW_ATTRIB_UNUSED = __attribute__(__unused__);
pub const __MINGW_ATTRIB_USED = __attribute__(__used__);
pub const __MINGW_ATTRIB_DEPRECATED = __attribute__(__deprecated__);
pub inline fn __MINGW_ATTRIB_DEPRECATED_MSG(x: anytype) @TypeOf(__attribute__(__deprecated__(x))) {
    return __attribute__(__deprecated__(x));
}
pub const __MINGW_NOTHROW = __attribute__(__nothrow__);
pub const __MSVCRT_VERSION__ = @as(c_int, 0x700);
pub const _WIN32_WINNT = @as(c_int, 0x0603);
pub const __int8 = u8;
pub const __int16 = c_short;
pub const __int32 = c_int;
pub const __int64 = c_longlong;
pub const MINGW_HAS_SECURE_API = @as(c_int, 1);
pub const __STDC_SECURE_LIB__ = @as(c_long, 200411);
pub const __GOT_SECURE_LIB__ = __STDC_SECURE_LIB__;
pub const MINGW_HAS_DDK_H = @as(c_int, 1);
pub const _CRT_PACKING = @as(c_int, 8);
pub inline fn _ADDRESSOF(v: anytype) @TypeOf(&v) {
    return &v;
}
pub inline fn _CRT_STRINGIZE(_Value: anytype) @TypeOf(__CRT_STRINGIZE(_Value)) {
    return __CRT_STRINGIZE(_Value);
}
pub inline fn _CRT_WIDE(_String: anytype) @TypeOf(__CRT_WIDE(_String)) {
    return __CRT_WIDE(_String);
}
pub const _CRTIMP_NOIA64 = _CRTIMP;
pub const _CRTIMP2 = _CRTIMP;
pub const _CRTIMP_ALTERNATIVE = _CRTIMP;
pub const _MRTIMP2 = _CRTIMP;
pub const _MCRTIMP = _CRTIMP;
pub const _CRTIMP_PURE = _CRTIMP;
pub const _SECURECRT_FILL_BUFFER_PATTERN = @as(c_int, 0xFD);
pub inline fn _CRT_DEPRECATE_TEXT(_Text: anytype) @TypeOf(__declspec(deprecated)) {
    _ = _Text;
    return __declspec(deprecated);
}
pub const UNALIGNED = __unaligned;
pub inline fn _CRT_ALIGN(x: anytype) @TypeOf(__attribute__(__aligned__(x))) {
    return __attribute__(__aligned__(x));
}
pub const __CRTDECL = __cdecl;
pub const _ARGMAX = @as(c_int, 100);
pub const _TRUNCATE = @import("std").zig.c_translation.cast(usize, -@as(c_int, 1));
pub inline fn _CRT_UNUSED(x: anytype) c_void {
    return @import("std").zig.c_translation.cast(c_void, x);
}
pub const __USE_MINGW_ANSI_STDIO = @as(c_int, 1);
pub const _CRT_glob = _dowildcard;
pub const _ANONYMOUS_UNION = __MINGW_EXTENSION;
pub const _ANONYMOUS_STRUCT = __MINGW_EXTENSION;
pub const __MINGW_DEBUGBREAK_IMPL = !(__has_builtin(__debugbreak) != 0);
pub const _CRT_SECURE_CPP_NOTHROW = throw();
pub const _CRT_INTERNAL_PRINTF_LEGACY_VSPRINTF_NULL_TERMINATION = @as(c_ulonglong, 0x0001);
pub const _CRT_INTERNAL_PRINTF_STANDARD_SNPRINTF_BEHAVIOR = @as(c_ulonglong, 0x0002);
pub const _CRT_INTERNAL_PRINTF_LEGACY_WIDE_SPECIFIERS = @as(c_ulonglong, 0x0004);
pub const _CRT_INTERNAL_PRINTF_LEGACY_MSVCRT_COMPATIBILITY = @as(c_ulonglong, 0x0008);
pub const _CRT_INTERNAL_PRINTF_LEGACY_THREE_DIGIT_EXPONENTS = @as(c_ulonglong, 0x0010);
pub const _CRT_INTERNAL_SCANF_SECURECRT = @as(c_ulonglong, 0x0001);
pub const _CRT_INTERNAL_SCANF_LEGACY_WIDE_SPECIFIERS = @as(c_ulonglong, 0x0002);
pub const _CRT_INTERNAL_SCANF_LEGACY_MSVCRT_COMPATIBILITY = @as(c_ulonglong, 0x0004);
pub const _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS = _CRT_INTERNAL_PRINTF_LEGACY_WIDE_SPECIFIERS;
pub const _CRT_INTERNAL_LOCAL_SCANF_OPTIONS = _CRT_INTERNAL_SCANF_LEGACY_WIDE_SPECIFIERS;
pub const BUFSIZ = @as(c_int, 512);
pub const _NFILE = _NSTREAM_;
pub const _NSTREAM_ = @as(c_int, 512);
pub const _IOB_ENTRIES = @as(c_int, 20);
pub const EOF = -@as(c_int, 1);
pub const _P_tmpdir = "\\";
pub const _wP_tmpdir = "\\";
pub const L_tmpnam = @import("std").zig.c_translation.sizeof(_P_tmpdir) + @as(c_int, 12);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const SEEK_SET = @as(c_int, 0);
pub const STDIN_FILENO = @as(c_int, 0);
pub const STDOUT_FILENO = @as(c_int, 1);
pub const STDERR_FILENO = @as(c_int, 2);
pub const FILENAME_MAX = @as(c_int, 260);
pub const FOPEN_MAX = @as(c_int, 20);
pub const _SYS_OPEN = @as(c_int, 20);
pub const TMP_MAX = @as(c_int, 32767);
pub const _iob = __iob_func();
pub inline fn _FPOSOFF(fp: anytype) c_long {
    return @import("std").zig.c_translation.cast(c_long, fp);
}
pub const stdin = __acrt_iob_func(@as(c_int, 0));
pub const stdout = __acrt_iob_func(@as(c_int, 1));
pub const stderr = __acrt_iob_func(@as(c_int, 2));
pub const _IOFBF = @as(c_int, 0x0000);
pub const _IOLBF = @as(c_int, 0x0040);
pub const _IONBF = @as(c_int, 0x0004);
pub const _IOREAD = @as(c_int, 0x0001);
pub const _IOWRT = @as(c_int, 0x0002);
pub const _IOMYBUF = @as(c_int, 0x0008);
pub const _IOEOF = @as(c_int, 0x0010);
pub const _IOERR = @as(c_int, 0x0020);
pub const _IOSTRG = @as(c_int, 0x0040);
pub const _IORW = @as(c_int, 0x0080);
pub const _TWO_DIGIT_EXPONENT = @as(c_int, 0x1);
pub const __MINGW_PRINTF_FORMAT = printf;
pub const __MINGW_SCANF_FORMAT = scanf;
pub const __builtin_vsnprintf = __mingw_vsnprintf;
pub const __builtin_vsprintf = __mingw_vsprintf;
pub const popen = _popen;
pub const pclose = _pclose;
pub const WEOF = @import("std").zig.c_translation.cast(wint_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hexadecimal));
pub const wpopen = _wpopen;
pub inline fn _getc_nolock(_stream: anytype) @TypeOf(_fgetc_nolock(_stream)) {
    return _fgetc_nolock(_stream);
}
pub inline fn _putc_nolock(_c: anytype, _stream: anytype) @TypeOf(_fputc_nolock(_c, _stream)) {
    return _fputc_nolock(_c, _stream);
}
pub inline fn _getchar_nolock() @TypeOf(_getc_nolock(stdin)) {
    return _getc_nolock(stdin);
}
pub inline fn _putchar_nolock(_c: anytype) @TypeOf(_putc_nolock(_c, stdout)) {
    return _putc_nolock(_c, stdout);
}
pub inline fn _getwchar_nolock() @TypeOf(_getwc_nolock(stdin)) {
    return _getwc_nolock(stdin);
}
pub inline fn _putwchar_nolock(_c: anytype) @TypeOf(_putwc_nolock(_c, stdout)) {
    return _putwc_nolock(_c, stdout);
}
pub const P_tmpdir = _P_tmpdir;
pub const SYS_OPEN = _SYS_OPEN;
pub const _P_WAIT = @as(c_int, 0);
pub const _P_NOWAIT = @as(c_int, 1);
pub const _OLD_P_OVERLAY = @as(c_int, 2);
pub const _P_NOWAITO = @as(c_int, 3);
pub const _P_DETACH = @as(c_int, 4);
pub const _P_OVERLAY = @as(c_int, 2);
pub const _WAIT_CHILD = @as(c_int, 0);
pub const _WAIT_GRANDCHILD = @as(c_int, 1);
pub const _SECIMP = __declspec(dllimport);
pub const L_tmpnam_s = L_tmpnam;
pub const TMP_MAX_S = TMP_MAX;
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal);
pub const UINT64_MAX = @as(c_ulonglong, 0xffffffffffffffff);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MIN = INT64_MIN;
pub const INTPTR_MAX = INT64_MAX;
pub const UINTPTR_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const PTRDIFF_MIN = INT64_MIN;
pub const PTRDIFF_MAX = INT64_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const SIZE_MAX = UINT64_MAX;
pub const WCHAR_MIN = @as(c_uint, 0);
pub const WCHAR_MAX = @as(c_uint, 0xffff);
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @as(c_uint, 0xffff);
pub inline fn INT8_C(val: anytype) @TypeOf((INT_LEAST8_MAX - INT_LEAST8_MAX) + val) {
    return (INT_LEAST8_MAX - INT_LEAST8_MAX) + val;
}
pub inline fn INT16_C(val: anytype) @TypeOf((INT_LEAST16_MAX - INT_LEAST16_MAX) + val) {
    return (INT_LEAST16_MAX - INT_LEAST16_MAX) + val;
}
pub inline fn INT32_C(val: anytype) @TypeOf((INT_LEAST32_MAX - INT_LEAST32_MAX) + val) {
    return (INT_LEAST32_MAX - INT_LEAST32_MAX) + val;
}
pub inline fn UINT8_C(val: anytype) @TypeOf(val) {
    return val;
}
pub inline fn UINT16_C(val: anytype) @TypeOf(val) {
    return val;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const FALSE = @as(c_int, 0);
pub const TRUE = @as(c_int, 1);
pub const ERR = -@as(c_int, 1);
pub const OK = @as(c_int, 0);
pub const PDC_MAX_MOUSE_BUTTONS = @as(c_int, 9);
pub const BUTTON_RELEASED = @as(c_int, 0x0000);
pub const BUTTON_PRESSED = @as(c_int, 0x0001);
pub const BUTTON_CLICKED = @as(c_int, 0x0002);
pub const BUTTON_DOUBLE_CLICKED = @as(c_int, 0x0003);
pub const BUTTON_TRIPLE_CLICKED = @as(c_int, 0x0004);
pub const BUTTON_MOVED = @as(c_int, 0x0005);
pub const WHEEL_SCROLLED = @as(c_int, 0x0006);
pub const BUTTON_ACTION_MASK = @as(c_int, 0x0007);
pub const PDC_BUTTON_SHIFT = @as(c_int, 0x0008);
pub const PDC_BUTTON_CONTROL = @as(c_int, 0x0010);
pub const PDC_BUTTON_ALT = @as(c_int, 0x0020);
pub const BUTTON_MODIFIER_MASK = @as(c_int, 0x0038);
pub const MOUSE_X_POS = Mouse_status.x;
pub const MOUSE_Y_POS = Mouse_status.y;
pub const PDC_MOUSE_MOVED = @as(c_int, 0x0008);
pub const PDC_MOUSE_POSITION = @as(c_int, 0x0010);
pub const PDC_MOUSE_WHEEL_UP = @as(c_int, 0x0020);
pub const PDC_MOUSE_WHEEL_DOWN = @as(c_int, 0x0040);
pub const PDC_MOUSE_WHEEL_LEFT = @as(c_int, 0x0080);
pub const PDC_MOUSE_WHEEL_RIGHT = @as(c_int, 0x0100);
pub const A_BUTTON_CHANGED = Mouse_status.changes & @as(c_int, 7);
pub const MOUSE_MOVED = Mouse_status.changes & PDC_MOUSE_MOVED;
pub const MOUSE_POS_REPORT = Mouse_status.changes & PDC_MOUSE_POSITION;
pub inline fn BUTTON_CHANGED(x: anytype) @TypeOf(Mouse_status.changes & (@as(c_int, 1) << (x - (if (x < @as(c_int, 4)) @as(c_int, 1) else -@as(c_int, 5))))) {
    return Mouse_status.changes & (@as(c_int, 1) << (x - (if (x < @as(c_int, 4)) @as(c_int, 1) else -@as(c_int, 5))));
}
pub inline fn BUTTON_STATUS(x: anytype) @TypeOf(Mouse_status.button[x - @as(c_int, 1)]) {
    return Mouse_status.button[x - @as(c_int, 1)];
}
pub const MOUSE_WHEEL_UP = Mouse_status.changes & PDC_MOUSE_WHEEL_UP;
pub const MOUSE_WHEEL_DOWN = Mouse_status.changes & PDC_MOUSE_WHEEL_DOWN;
pub const MOUSE_WHEEL_LEFT = Mouse_status.changes & PDC_MOUSE_WHEEL_LEFT;
pub const MOUSE_WHEEL_RIGHT = Mouse_status.changes & PDC_MOUSE_WHEEL_RIGHT;
pub const BUTTON1_RELEASED = @as(c_long, 0x00000001);
pub const BUTTON1_PRESSED = @as(c_long, 0x00000002);
pub const BUTTON1_CLICKED = @as(c_long, 0x00000004);
pub const BUTTON1_DOUBLE_CLICKED = @as(c_long, 0x00000008);
pub const BUTTON1_TRIPLE_CLICKED = @as(c_long, 0x00000010);
pub const BUTTON1_MOVED = @as(c_long, 0x00000010);
pub const BUTTON2_RELEASED = @as(c_long, 0x00000020);
pub const BUTTON2_PRESSED = @as(c_long, 0x00000040);
pub const BUTTON2_CLICKED = @as(c_long, 0x00000080);
pub const BUTTON2_DOUBLE_CLICKED = @as(c_long, 0x00000100);
pub const BUTTON2_TRIPLE_CLICKED = @as(c_long, 0x00000200);
pub const BUTTON2_MOVED = @as(c_long, 0x00000200);
pub const BUTTON3_RELEASED = @as(c_long, 0x00000400);
pub const BUTTON3_PRESSED = @as(c_long, 0x00000800);
pub const BUTTON3_CLICKED = @as(c_long, 0x00001000);
pub const BUTTON3_DOUBLE_CLICKED = @as(c_long, 0x00002000);
pub const BUTTON3_TRIPLE_CLICKED = @as(c_long, 0x00004000);
pub const BUTTON3_MOVED = @as(c_long, 0x00004000);
pub const BUTTON4_RELEASED = @as(c_long, 0x00008000);
pub const BUTTON4_PRESSED = @as(c_long, 0x00010000);
pub const BUTTON4_CLICKED = @as(c_long, 0x00020000);
pub const BUTTON4_DOUBLE_CLICKED = @as(c_long, 0x00040000);
pub const BUTTON4_TRIPLE_CLICKED = @as(c_long, 0x00080000);
pub const BUTTON5_RELEASED = @as(c_long, 0x00100000);
pub const BUTTON5_PRESSED = @as(c_long, 0x00200000);
pub const BUTTON5_CLICKED = @as(c_long, 0x00400000);
pub const BUTTON5_DOUBLE_CLICKED = @as(c_long, 0x00800000);
pub const BUTTON5_TRIPLE_CLICKED = @as(c_long, 0x01000000);
pub const MOUSE_WHEEL_SCROLL = @as(c_long, 0x02000000);
pub const BUTTON_MODIFIER_SHIFT = @as(c_long, 0x04000000);
pub const BUTTON_MODIFIER_CONTROL = @as(c_long, 0x08000000);
pub const BUTTON_MODIFIER_ALT = @as(c_long, 0x10000000);
pub const ALL_MOUSE_EVENTS = @as(c_long, 0x1fffffff);
pub const REPORT_MOUSE_POSITION = @as(c_long, 0x20000000);
pub const BUTTON_SHIFT = PDC_BUTTON_SHIFT;
pub const BUTTON_CONTROL = PDC_BUTTON_CONTROL;
pub const BUTTON_ALT = PDC_BUTTON_ALT;
pub const A_NORMAL = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0));
pub const PDC_CHARTEXT_BITS = @as(c_int, 21);
pub const A_CHARTEXT = @import("std").zig.c_translation.cast(chtype, (@import("std").zig.c_translation.cast(chtype, @as(c_int, 0x1)) << PDC_CHARTEXT_BITS) - @as(c_int, 1));
pub const A_ALTCHARSET = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0x001)) << PDC_CHARTEXT_BITS;
pub const A_RIGHT = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0x002)) << PDC_CHARTEXT_BITS;
pub const A_LEFT = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0x004)) << PDC_CHARTEXT_BITS;
pub const A_INVIS = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0x008)) << PDC_CHARTEXT_BITS;
pub const A_UNDERLINE = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0x010)) << PDC_CHARTEXT_BITS;
pub const A_REVERSE = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0x020)) << PDC_CHARTEXT_BITS;
pub const A_BLINK = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0x040)) << PDC_CHARTEXT_BITS;
pub const A_BOLD = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0x080)) << PDC_CHARTEXT_BITS;
pub const A_OVERLINE = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0x100)) << PDC_CHARTEXT_BITS;
pub const A_STRIKEOUT = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0x200)) << PDC_CHARTEXT_BITS;
pub const A_DIM = @import("std").zig.c_translation.cast(chtype, @as(c_int, 0x400)) << PDC_CHARTEXT_BITS;
pub const PDC_COLOR_SHIFT = PDC_CHARTEXT_BITS + @as(c_int, 12);
pub const A_COLOR = @import("std").zig.c_translation.cast(chtype, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfffff, .hexadecimal)) << PDC_COLOR_SHIFT;
pub const A_ATTRIBUTES = (@import("std").zig.c_translation.cast(chtype, @as(c_int, 0xfff)) << PDC_CHARTEXT_BITS) | A_COLOR;
pub const A_ITALIC = A_INVIS;
pub const A_PROTECT = (A_UNDERLINE | A_LEFT) | A_RIGHT;
pub const A_STANDOUT = A_REVERSE | A_BOLD;
pub const CHR_MSK = A_CHARTEXT;
pub const ATR_MSK = A_ATTRIBUTES;
pub const ATR_NRM = A_NORMAL;
pub const A_LEFTLINE = A_LEFT;
pub const A_RIGHTLINE = A_RIGHT;
pub const WA_NORMAL = A_NORMAL;
pub const WA_ALTCHARSET = A_ALTCHARSET;
pub const WA_BLINK = A_BLINK;
pub const WA_BOLD = A_BOLD;
pub const WA_DIM = A_DIM;
pub const WA_INVIS = A_INVIS;
pub const WA_ITALIC = A_ITALIC;
pub const WA_LEFT = A_LEFT;
pub const WA_PROTECT = A_PROTECT;
pub const WA_REVERSE = A_REVERSE;
pub const WA_RIGHT = A_RIGHT;
pub const WA_STANDOUT = A_STANDOUT;
pub const WA_UNDERLINE = A_UNDERLINE;
pub const WA_HORIZONTAL = A_HORIZONTAL;
pub const WA_LOW = A_LOW;
pub const WA_TOP = A_TOP;
pub const WA_VERTICAL = A_VERTICAL;
pub const WA_ATTRIBUTES = A_ATTRIBUTES;
pub inline fn PDC_ACS(w: anytype) @TypeOf(@import("std").zig.c_translation.cast(chtype, w) | A_ALTCHARSET) {
    return @import("std").zig.c_translation.cast(chtype, w) | A_ALTCHARSET;
}
pub const ACS_LRCORNER = PDC_ACS('V');
pub const ACS_URCORNER = PDC_ACS('W');
pub const ACS_ULCORNER = PDC_ACS('X');
pub const ACS_LLCORNER = PDC_ACS('Y');
pub const ACS_PLUS = PDC_ACS('Z');
pub const ACS_LTEE = PDC_ACS('[');
pub const ACS_RTEE = PDC_ACS('\\');
pub const ACS_BTEE = PDC_ACS(']');
pub const ACS_TTEE = PDC_ACS('^');
pub const ACS_HLINE = PDC_ACS('_');
pub const ACS_VLINE = PDC_ACS('`');
pub const ACS_CENT = PDC_ACS('{');
pub const ACS_YEN = PDC_ACS('|');
pub const ACS_PESETA = PDC_ACS('}');
pub const ACS_HALF = PDC_ACS('&');
pub const ACS_QUARTER = PDC_ACS('\'');
pub const ACS_LEFT_ANG_QU = PDC_ACS(')');
pub const ACS_RIGHT_ANG_QU = PDC_ACS('*');
pub const ACS_D_HLINE = PDC_ACS('a');
pub const ACS_D_VLINE = PDC_ACS('b');
pub const ACS_CLUB = PDC_ACS(@as(c_int, 11));
pub const ACS_HEART = PDC_ACS(@as(c_int, 12));
pub const ACS_SPADE = PDC_ACS(@as(c_int, 13));
pub const ACS_SMILE = PDC_ACS(@as(c_int, 14));
pub const ACS_REV_SMILE = PDC_ACS(@as(c_int, 15));
pub const ACS_MED_BULLET = PDC_ACS(@as(c_int, 16));
pub const ACS_WHITE_BULLET = PDC_ACS(@as(c_int, 17));
pub const ACS_PILCROW = PDC_ACS(@as(c_int, 18));
pub const ACS_SECTION = PDC_ACS(@as(c_int, 19));
pub const ACS_SUP2 = PDC_ACS(',');
pub const ACS_ALPHA = PDC_ACS('.');
pub const ACS_BETA = PDC_ACS('/');
pub const ACS_GAMMA = PDC_ACS('0');
pub const ACS_UP_SIGMA = PDC_ACS('1');
pub const ACS_LO_SIGMA = PDC_ACS('2');
pub const ACS_MU = PDC_ACS('4');
pub const ACS_TAU = PDC_ACS('5');
pub const ACS_UP_PHI = PDC_ACS('6');
pub const ACS_THETA = PDC_ACS('7');
pub const ACS_OMEGA = PDC_ACS('8');
pub const ACS_DELTA = PDC_ACS('9');
pub const ACS_INFINITY = PDC_ACS('-');
pub const ACS_LO_PHI = PDC_ACS(@as(c_int, 22));
pub const ACS_EPSILON = PDC_ACS(':');
pub const ACS_INTERSECT = PDC_ACS('e');
pub const ACS_TRIPLE_BAR = PDC_ACS('f');
pub const ACS_DIVISION = PDC_ACS('c');
pub const ACS_APPROX_EQ = PDC_ACS('d');
pub const ACS_SM_BULLET = PDC_ACS('g');
pub const ACS_SQUARE_ROOT = PDC_ACS('i');
pub const ACS_UBLOCK = PDC_ACS('p');
pub const ACS_BBLOCK = PDC_ACS('q');
pub const ACS_LBLOCK = PDC_ACS('r');
pub const ACS_RBLOCK = PDC_ACS('s');
pub const ACS_A_ORDINAL = PDC_ACS(@as(c_int, 20));
pub const ACS_O_ORDINAL = PDC_ACS(@as(c_int, 21));
pub const ACS_INV_QUERY = PDC_ACS(@as(c_int, 24));
pub const ACS_REV_NOT = PDC_ACS(@as(c_int, 25));
pub const ACS_NOT = PDC_ACS(@as(c_int, 26));
pub const ACS_INV_BANG = PDC_ACS(@as(c_int, 23));
pub const ACS_UP_INTEGRAL = PDC_ACS(@as(c_int, 27));
pub const ACS_LO_INTEGRAL = PDC_ACS(@as(c_int, 28));
pub const ACS_SUP_N = PDC_ACS(@as(c_int, 29));
pub const ACS_CENTER_SQU = PDC_ACS(@as(c_int, 30));
pub const ACS_F_WITH_HOOK = PDC_ACS(@as(c_int, 31));
pub const ACS_SD_LRCORNER = PDC_ACS(';');
pub const ACS_SD_URCORNER = PDC_ACS('<');
pub const ACS_SD_ULCORNER = PDC_ACS('=');
pub const ACS_SD_LLCORNER = PDC_ACS('>');
pub const ACS_SD_PLUS = PDC_ACS('?');
pub const ACS_SD_LTEE = PDC_ACS('@');
pub const ACS_SD_RTEE = PDC_ACS('A');
pub const ACS_SD_BTEE = PDC_ACS('B');
pub const ACS_SD_TTEE = PDC_ACS('C');
pub const ACS_D_LRCORNER = PDC_ACS('D');
pub const ACS_D_URCORNER = PDC_ACS('E');
pub const ACS_D_ULCORNER = PDC_ACS('F');
pub const ACS_D_LLCORNER = PDC_ACS('G');
pub const ACS_D_PLUS = PDC_ACS('H');
pub const ACS_D_LTEE = PDC_ACS('I');
pub const ACS_D_RTEE = PDC_ACS('J');
pub const ACS_D_BTEE = PDC_ACS('K');
pub const ACS_D_TTEE = PDC_ACS('L');
pub const ACS_DS_LRCORNER = PDC_ACS('M');
pub const ACS_DS_URCORNER = PDC_ACS('N');
pub const ACS_DS_ULCORNER = PDC_ACS('O');
pub const ACS_DS_LLCORNER = PDC_ACS('P');
pub const ACS_DS_PLUS = PDC_ACS('Q');
pub const ACS_DS_LTEE = PDC_ACS('R');
pub const ACS_DS_RTEE = PDC_ACS('S');
pub const ACS_DS_BTEE = PDC_ACS('T');
pub const ACS_DS_TTEE = PDC_ACS('U');
pub const ACS_S1 = PDC_ACS('l');
pub const ACS_S9 = PDC_ACS('o');
pub const ACS_DIAMOND = PDC_ACS('j');
pub const ACS_CKBOARD = PDC_ACS('k');
pub const ACS_DEGREE = PDC_ACS('w');
pub const ACS_PLMINUS = PDC_ACS('x');
pub const ACS_BULLET = PDC_ACS('h');
pub const ACS_LARROW = PDC_ACS('!');
pub const ACS_RARROW = PDC_ACS(' ');
pub const ACS_DARROW = PDC_ACS('#');
pub const ACS_UARROW = PDC_ACS('"');
pub const ACS_BOARD = PDC_ACS('+');
pub const ACS_LTBOARD = PDC_ACS('y');
pub const ACS_LANTERN = PDC_ACS('z');
pub const ACS_BLOCK = PDC_ACS('t');
pub const ACS_S3 = PDC_ACS('m');
pub const ACS_S7 = PDC_ACS('n');
pub const ACS_LEQUAL = PDC_ACS('u');
pub const ACS_GEQUAL = PDC_ACS('v');
pub const ACS_PI = PDC_ACS('$');
pub const ACS_NEQUAL = PDC_ACS('%');
pub const ACS_STERLING = PDC_ACS('~');
pub const ACS_BSSB = ACS_ULCORNER;
pub const ACS_SSBB = ACS_LLCORNER;
pub const ACS_BBSS = ACS_URCORNER;
pub const ACS_SBBS = ACS_LRCORNER;
pub const ACS_SBSS = ACS_RTEE;
pub const ACS_SSSB = ACS_LTEE;
pub const ACS_SSBS = ACS_BTEE;
pub const ACS_BSSS = ACS_TTEE;
pub const ACS_BSBS = ACS_HLINE;
pub const ACS_SBSB = ACS_VLINE;
pub const ACS_SSSS = ACS_PLUS;
pub const COLOR_BLACK = @as(c_int, 0);
pub const COLOR_BLUE = @as(c_int, 1);
pub const COLOR_GREEN = @as(c_int, 2);
pub const COLOR_RED = @as(c_int, 4);
pub const COLOR_CYAN = COLOR_BLUE | COLOR_GREEN;
pub const COLOR_MAGENTA = COLOR_RED | COLOR_BLUE;
pub const COLOR_YELLOW = COLOR_RED | COLOR_GREEN;
pub const COLOR_WHITE = @as(c_int, 7);
pub const KEY_OFFSET = @as(c_int, 0x100);
pub const KEY_CODE_YES = KEY_OFFSET + @as(c_int, 0x00);
pub const KEY_BREAK = KEY_OFFSET + @as(c_int, 0x01);
pub const KEY_DOWN = KEY_OFFSET + @as(c_int, 0x02);
pub const KEY_UP = KEY_OFFSET + @as(c_int, 0x03);
pub const KEY_LEFT = KEY_OFFSET + @as(c_int, 0x04);
pub const KEY_RIGHT = KEY_OFFSET + @as(c_int, 0x05);
pub const KEY_HOME = KEY_OFFSET + @as(c_int, 0x06);
pub const KEY_BACKSPACE = KEY_OFFSET + @as(c_int, 0x07);
pub const KEY_F0 = KEY_OFFSET + @as(c_int, 0x08);
pub const KEY_DL = KEY_OFFSET + @as(c_int, 0x48);
pub const KEY_IL = KEY_OFFSET + @as(c_int, 0x49);
pub const KEY_DC = KEY_OFFSET + @as(c_int, 0x4a);
pub const KEY_IC = KEY_OFFSET + @as(c_int, 0x4b);
pub const KEY_EIC = KEY_OFFSET + @as(c_int, 0x4c);
pub const KEY_CLEAR = KEY_OFFSET + @as(c_int, 0x4d);
pub const KEY_EOS = KEY_OFFSET + @as(c_int, 0x4e);
pub const KEY_EOL = KEY_OFFSET + @as(c_int, 0x4f);
pub const KEY_SF = KEY_OFFSET + @as(c_int, 0x50);
pub const KEY_SR = KEY_OFFSET + @as(c_int, 0x51);
pub const KEY_NPAGE = KEY_OFFSET + @as(c_int, 0x52);
pub const KEY_PPAGE = KEY_OFFSET + @as(c_int, 0x53);
pub const KEY_STAB = KEY_OFFSET + @as(c_int, 0x54);
pub const KEY_CTAB = KEY_OFFSET + @as(c_int, 0x55);
pub const KEY_CATAB = KEY_OFFSET + @as(c_int, 0x56);
pub const KEY_ENTER = KEY_OFFSET + @as(c_int, 0x57);
pub const KEY_SRESET = KEY_OFFSET + @as(c_int, 0x58);
pub const KEY_RESET = KEY_OFFSET + @as(c_int, 0x59);
pub const KEY_PRINT = KEY_OFFSET + @as(c_int, 0x5a);
pub const KEY_LL = KEY_OFFSET + @as(c_int, 0x5b);
pub const KEY_ABORT = KEY_OFFSET + @as(c_int, 0x5c);
pub const KEY_SHELP = KEY_OFFSET + @as(c_int, 0x5d);
pub const KEY_LHELP = KEY_OFFSET + @as(c_int, 0x5e);
pub const KEY_BTAB = KEY_OFFSET + @as(c_int, 0x5f);
pub const KEY_BEG = KEY_OFFSET + @as(c_int, 0x60);
pub const KEY_CANCEL = KEY_OFFSET + @as(c_int, 0x61);
pub const KEY_CLOSE = KEY_OFFSET + @as(c_int, 0x62);
pub const KEY_COMMAND = KEY_OFFSET + @as(c_int, 0x63);
pub const KEY_COPY = KEY_OFFSET + @as(c_int, 0x64);
pub const KEY_CREATE = KEY_OFFSET + @as(c_int, 0x65);
pub const KEY_END = KEY_OFFSET + @as(c_int, 0x66);
pub const KEY_EXIT = KEY_OFFSET + @as(c_int, 0x67);
pub const KEY_FIND = KEY_OFFSET + @as(c_int, 0x68);
pub const KEY_HELP = KEY_OFFSET + @as(c_int, 0x69);
pub const KEY_MARK = KEY_OFFSET + @as(c_int, 0x6a);
pub const KEY_MESSAGE = KEY_OFFSET + @as(c_int, 0x6b);
pub const KEY_MOVE = KEY_OFFSET + @as(c_int, 0x6c);
pub const KEY_NEXT = KEY_OFFSET + @as(c_int, 0x6d);
pub const KEY_OPEN = KEY_OFFSET + @as(c_int, 0x6e);
pub const KEY_OPTIONS = KEY_OFFSET + @as(c_int, 0x6f);
pub const KEY_PREVIOUS = KEY_OFFSET + @as(c_int, 0x70);
pub const KEY_REDO = KEY_OFFSET + @as(c_int, 0x71);
pub const KEY_REFERENCE = KEY_OFFSET + @as(c_int, 0x72);
pub const KEY_REFRESH = KEY_OFFSET + @as(c_int, 0x73);
pub const KEY_REPLACE = KEY_OFFSET + @as(c_int, 0x74);
pub const KEY_RESTART = KEY_OFFSET + @as(c_int, 0x75);
pub const KEY_RESUME = KEY_OFFSET + @as(c_int, 0x76);
pub const KEY_SAVE = KEY_OFFSET + @as(c_int, 0x77);
pub const KEY_SBEG = KEY_OFFSET + @as(c_int, 0x78);
pub const KEY_SCANCEL = KEY_OFFSET + @as(c_int, 0x79);
pub const KEY_SCOMMAND = KEY_OFFSET + @as(c_int, 0x7a);
pub const KEY_SCOPY = KEY_OFFSET + @as(c_int, 0x7b);
pub const KEY_SCREATE = KEY_OFFSET + @as(c_int, 0x7c);
pub const KEY_SDC = KEY_OFFSET + @as(c_int, 0x7d);
pub const KEY_SDL = KEY_OFFSET + @as(c_int, 0x7e);
pub const KEY_SELECT = KEY_OFFSET + @as(c_int, 0x7f);
pub const KEY_SEND = KEY_OFFSET + @as(c_int, 0x80);
pub const KEY_SEOL = KEY_OFFSET + @as(c_int, 0x81);
pub const KEY_SEXIT = KEY_OFFSET + @as(c_int, 0x82);
pub const KEY_SFIND = KEY_OFFSET + @as(c_int, 0x83);
pub const KEY_SHOME = KEY_OFFSET + @as(c_int, 0x84);
pub const KEY_SIC = KEY_OFFSET + @as(c_int, 0x85);
pub const KEY_SLEFT = KEY_OFFSET + @as(c_int, 0x87);
pub const KEY_SMESSAGE = KEY_OFFSET + @as(c_int, 0x88);
pub const KEY_SMOVE = KEY_OFFSET + @as(c_int, 0x89);
pub const KEY_SNEXT = KEY_OFFSET + @as(c_int, 0x8a);
pub const KEY_SOPTIONS = KEY_OFFSET + @as(c_int, 0x8b);
pub const KEY_SPREVIOUS = KEY_OFFSET + @as(c_int, 0x8c);
pub const KEY_SPRINT = KEY_OFFSET + @as(c_int, 0x8d);
pub const KEY_SREDO = KEY_OFFSET + @as(c_int, 0x8e);
pub const KEY_SREPLACE = KEY_OFFSET + @as(c_int, 0x8f);
pub const KEY_SRIGHT = KEY_OFFSET + @as(c_int, 0x90);
pub const KEY_SRSUME = KEY_OFFSET + @as(c_int, 0x91);
pub const KEY_SSAVE = KEY_OFFSET + @as(c_int, 0x92);
pub const KEY_SSUSPEND = KEY_OFFSET + @as(c_int, 0x93);
pub const KEY_SUNDO = KEY_OFFSET + @as(c_int, 0x94);
pub const KEY_SUSPEND = KEY_OFFSET + @as(c_int, 0x95);
pub const KEY_UNDO = KEY_OFFSET + @as(c_int, 0x96);
pub const ALT_0 = KEY_OFFSET + @as(c_int, 0x97);
pub const ALT_1 = KEY_OFFSET + @as(c_int, 0x98);
pub const ALT_2 = KEY_OFFSET + @as(c_int, 0x99);
pub const ALT_3 = KEY_OFFSET + @as(c_int, 0x9a);
pub const ALT_4 = KEY_OFFSET + @as(c_int, 0x9b);
pub const ALT_5 = KEY_OFFSET + @as(c_int, 0x9c);
pub const ALT_6 = KEY_OFFSET + @as(c_int, 0x9d);
pub const ALT_7 = KEY_OFFSET + @as(c_int, 0x9e);
pub const ALT_8 = KEY_OFFSET + @as(c_int, 0x9f);
pub const ALT_9 = KEY_OFFSET + @as(c_int, 0xa0);
pub const ALT_A = KEY_OFFSET + @as(c_int, 0xa1);
pub const ALT_B = KEY_OFFSET + @as(c_int, 0xa2);
pub const ALT_C = KEY_OFFSET + @as(c_int, 0xa3);
pub const ALT_D = KEY_OFFSET + @as(c_int, 0xa4);
pub const ALT_E = KEY_OFFSET + @as(c_int, 0xa5);
pub const ALT_F = KEY_OFFSET + @as(c_int, 0xa6);
pub const ALT_G = KEY_OFFSET + @as(c_int, 0xa7);
pub const ALT_H = KEY_OFFSET + @as(c_int, 0xa8);
pub const ALT_I = KEY_OFFSET + @as(c_int, 0xa9);
pub const ALT_J = KEY_OFFSET + @as(c_int, 0xaa);
pub const ALT_K = KEY_OFFSET + @as(c_int, 0xab);
pub const ALT_L = KEY_OFFSET + @as(c_int, 0xac);
pub const ALT_M = KEY_OFFSET + @as(c_int, 0xad);
pub const ALT_N = KEY_OFFSET + @as(c_int, 0xae);
pub const ALT_O = KEY_OFFSET + @as(c_int, 0xaf);
pub const ALT_P = KEY_OFFSET + @as(c_int, 0xb0);
pub const ALT_Q = KEY_OFFSET + @as(c_int, 0xb1);
pub const ALT_R = KEY_OFFSET + @as(c_int, 0xb2);
pub const ALT_S = KEY_OFFSET + @as(c_int, 0xb3);
pub const ALT_T = KEY_OFFSET + @as(c_int, 0xb4);
pub const ALT_U = KEY_OFFSET + @as(c_int, 0xb5);
pub const ALT_V = KEY_OFFSET + @as(c_int, 0xb6);
pub const ALT_W = KEY_OFFSET + @as(c_int, 0xb7);
pub const ALT_X = KEY_OFFSET + @as(c_int, 0xb8);
pub const ALT_Y = KEY_OFFSET + @as(c_int, 0xb9);
pub const ALT_Z = KEY_OFFSET + @as(c_int, 0xba);
pub const CTL_LEFT = KEY_OFFSET + @as(c_int, 0xbb);
pub const CTL_RIGHT = KEY_OFFSET + @as(c_int, 0xbc);
pub const CTL_PGUP = KEY_OFFSET + @as(c_int, 0xbd);
pub const CTL_PGDN = KEY_OFFSET + @as(c_int, 0xbe);
pub const CTL_HOME = KEY_OFFSET + @as(c_int, 0xbf);
pub const CTL_END = KEY_OFFSET + @as(c_int, 0xc0);
pub const KEY_A1 = KEY_OFFSET + @as(c_int, 0xc1);
pub const KEY_A2 = KEY_OFFSET + @as(c_int, 0xc2);
pub const KEY_A3 = KEY_OFFSET + @as(c_int, 0xc3);
pub const KEY_B1 = KEY_OFFSET + @as(c_int, 0xc4);
pub const KEY_B2 = KEY_OFFSET + @as(c_int, 0xc5);
pub const KEY_B3 = KEY_OFFSET + @as(c_int, 0xc6);
pub const KEY_C1 = KEY_OFFSET + @as(c_int, 0xc7);
pub const KEY_C2 = KEY_OFFSET + @as(c_int, 0xc8);
pub const KEY_C3 = KEY_OFFSET + @as(c_int, 0xc9);
pub const PADSLASH = KEY_OFFSET + @as(c_int, 0xca);
pub const PADENTER = KEY_OFFSET + @as(c_int, 0xcb);
pub const CTL_PADENTER = KEY_OFFSET + @as(c_int, 0xcc);
pub const ALT_PADENTER = KEY_OFFSET + @as(c_int, 0xcd);
pub const PADSTOP = KEY_OFFSET + @as(c_int, 0xce);
pub const PADSTAR = KEY_OFFSET + @as(c_int, 0xcf);
pub const PADMINUS = KEY_OFFSET + @as(c_int, 0xd0);
pub const PADPLUS = KEY_OFFSET + @as(c_int, 0xd1);
pub const CTL_PADSTOP = KEY_OFFSET + @as(c_int, 0xd2);
pub const CTL_PADCENTER = KEY_OFFSET + @as(c_int, 0xd3);
pub const CTL_PADPLUS = KEY_OFFSET + @as(c_int, 0xd4);
pub const CTL_PADMINUS = KEY_OFFSET + @as(c_int, 0xd5);
pub const CTL_PADSLASH = KEY_OFFSET + @as(c_int, 0xd6);
pub const CTL_PADSTAR = KEY_OFFSET + @as(c_int, 0xd7);
pub const ALT_PADPLUS = KEY_OFFSET + @as(c_int, 0xd8);
pub const ALT_PADMINUS = KEY_OFFSET + @as(c_int, 0xd9);
pub const ALT_PADSLASH = KEY_OFFSET + @as(c_int, 0xda);
pub const ALT_PADSTAR = KEY_OFFSET + @as(c_int, 0xdb);
pub const ALT_PADSTOP = KEY_OFFSET + @as(c_int, 0xdc);
pub const CTL_INS = KEY_OFFSET + @as(c_int, 0xdd);
pub const ALT_DEL = KEY_OFFSET + @as(c_int, 0xde);
pub const ALT_INS = KEY_OFFSET + @as(c_int, 0xdf);
pub const CTL_UP = KEY_OFFSET + @as(c_int, 0xe0);
pub const CTL_DOWN = KEY_OFFSET + @as(c_int, 0xe1);
pub const CTL_DN = KEY_OFFSET + @as(c_int, 0xe1);
pub const CTL_TAB = KEY_OFFSET + @as(c_int, 0xe2);
pub const ALT_TAB = KEY_OFFSET + @as(c_int, 0xe3);
pub const ALT_MINUS = KEY_OFFSET + @as(c_int, 0xe4);
pub const ALT_EQUAL = KEY_OFFSET + @as(c_int, 0xe5);
pub const ALT_HOME = KEY_OFFSET + @as(c_int, 0xe6);
pub const ALT_PGUP = KEY_OFFSET + @as(c_int, 0xe7);
pub const ALT_PGDN = KEY_OFFSET + @as(c_int, 0xe8);
pub const ALT_END = KEY_OFFSET + @as(c_int, 0xe9);
pub const ALT_UP = KEY_OFFSET + @as(c_int, 0xea);
pub const ALT_DOWN = KEY_OFFSET + @as(c_int, 0xeb);
pub const ALT_RIGHT = KEY_OFFSET + @as(c_int, 0xec);
pub const ALT_LEFT = KEY_OFFSET + @as(c_int, 0xed);
pub const ALT_ENTER = KEY_OFFSET + @as(c_int, 0xee);
pub const ALT_ESC = KEY_OFFSET + @as(c_int, 0xef);
pub const ALT_BQUOTE = KEY_OFFSET + @as(c_int, 0xf0);
pub const ALT_LBRACKET = KEY_OFFSET + @as(c_int, 0xf1);
pub const ALT_RBRACKET = KEY_OFFSET + @as(c_int, 0xf2);
pub const ALT_SEMICOLON = KEY_OFFSET + @as(c_int, 0xf3);
pub const ALT_FQUOTE = KEY_OFFSET + @as(c_int, 0xf4);
pub const ALT_COMMA = KEY_OFFSET + @as(c_int, 0xf5);
pub const ALT_STOP = KEY_OFFSET + @as(c_int, 0xf6);
pub const ALT_FSLASH = KEY_OFFSET + @as(c_int, 0xf7);
pub const ALT_BKSP = KEY_OFFSET + @as(c_int, 0xf8);
pub const CTL_BKSP = KEY_OFFSET + @as(c_int, 0xf9);
pub const PAD0 = KEY_OFFSET + @as(c_int, 0xfa);
pub const CTL_PAD0 = KEY_OFFSET + @as(c_int, 0xfb);
pub const CTL_PAD1 = KEY_OFFSET + @as(c_int, 0xfc);
pub const CTL_PAD2 = KEY_OFFSET + @as(c_int, 0xfd);
pub const CTL_PAD3 = KEY_OFFSET + @as(c_int, 0xfe);
pub const CTL_PAD4 = KEY_OFFSET + @as(c_int, 0xff);
pub const CTL_PAD5 = KEY_OFFSET + @as(c_int, 0x100);
pub const CTL_PAD6 = KEY_OFFSET + @as(c_int, 0x101);
pub const CTL_PAD7 = KEY_OFFSET + @as(c_int, 0x102);
pub const CTL_PAD8 = KEY_OFFSET + @as(c_int, 0x103);
pub const CTL_PAD9 = KEY_OFFSET + @as(c_int, 0x104);
pub const ALT_PAD0 = KEY_OFFSET + @as(c_int, 0x105);
pub const ALT_PAD1 = KEY_OFFSET + @as(c_int, 0x106);
pub const ALT_PAD2 = KEY_OFFSET + @as(c_int, 0x107);
pub const ALT_PAD3 = KEY_OFFSET + @as(c_int, 0x108);
pub const ALT_PAD4 = KEY_OFFSET + @as(c_int, 0x109);
pub const ALT_PAD5 = KEY_OFFSET + @as(c_int, 0x10a);
pub const ALT_PAD6 = KEY_OFFSET + @as(c_int, 0x10b);
pub const ALT_PAD7 = KEY_OFFSET + @as(c_int, 0x10c);
pub const ALT_PAD8 = KEY_OFFSET + @as(c_int, 0x10d);
pub const ALT_PAD9 = KEY_OFFSET + @as(c_int, 0x10e);
pub const CTL_DEL = KEY_OFFSET + @as(c_int, 0x10f);
pub const ALT_BSLASH = KEY_OFFSET + @as(c_int, 0x110);
pub const CTL_ENTER = KEY_OFFSET + @as(c_int, 0x111);
pub const SHF_PADENTER = KEY_OFFSET + @as(c_int, 0x112);
pub const SHF_PADSLASH = KEY_OFFSET + @as(c_int, 0x113);
pub const SHF_PADSTAR = KEY_OFFSET + @as(c_int, 0x114);
pub const SHF_PADPLUS = KEY_OFFSET + @as(c_int, 0x115);
pub const SHF_PADMINUS = KEY_OFFSET + @as(c_int, 0x116);
pub const SHF_UP = KEY_OFFSET + @as(c_int, 0x117);
pub const SHF_DOWN = KEY_OFFSET + @as(c_int, 0x118);
pub const SHF_IC = KEY_OFFSET + @as(c_int, 0x119);
pub const SHF_DC = KEY_OFFSET + @as(c_int, 0x11a);
pub const KEY_MOUSE = KEY_OFFSET + @as(c_int, 0x11b);
pub const KEY_SHIFT_L = KEY_OFFSET + @as(c_int, 0x11c);
pub const KEY_SHIFT_R = KEY_OFFSET + @as(c_int, 0x11d);
pub const KEY_CONTROL_L = KEY_OFFSET + @as(c_int, 0x11e);
pub const KEY_CONTROL_R = KEY_OFFSET + @as(c_int, 0x11f);
pub const KEY_ALT_L = KEY_OFFSET + @as(c_int, 0x120);
pub const KEY_ALT_R = KEY_OFFSET + @as(c_int, 0x121);
pub const KEY_RESIZE = KEY_OFFSET + @as(c_int, 0x122);
pub const KEY_SUP = KEY_OFFSET + @as(c_int, 0x123);
pub const KEY_SDOWN = KEY_OFFSET + @as(c_int, 0x124);
pub const KEY_APPS = KEY_OFFSET + @as(c_int, 0x125);
pub const KEY_PAUSE = KEY_OFFSET + @as(c_int, 0x126);
pub const KEY_PRINTSCREEN = KEY_OFFSET + @as(c_int, 0x127);
pub const KEY_SCROLLLOCK = KEY_OFFSET + @as(c_int, 0x128);
pub const KEY_BROWSER_BACK = KEY_OFFSET + @as(c_int, 0x129);
pub const KEY_BROWSER_FWD = KEY_OFFSET + @as(c_int, 0x12a);
pub const KEY_BROWSER_REF = KEY_OFFSET + @as(c_int, 0x12b);
pub const KEY_BROWSER_STOP = KEY_OFFSET + @as(c_int, 0x12c);
pub const KEY_SEARCH = KEY_OFFSET + @as(c_int, 0x12d);
pub const KEY_FAVORITES = KEY_OFFSET + @as(c_int, 0x12e);
pub const KEY_BROWSER_HOME = KEY_OFFSET + @as(c_int, 0x12f);
pub const KEY_VOLUME_MUTE = KEY_OFFSET + @as(c_int, 0x130);
pub const KEY_VOLUME_DOWN = KEY_OFFSET + @as(c_int, 0x131);
pub const KEY_VOLUME_UP = KEY_OFFSET + @as(c_int, 0x132);
pub const KEY_NEXT_TRACK = KEY_OFFSET + @as(c_int, 0x133);
pub const KEY_PREV_TRACK = KEY_OFFSET + @as(c_int, 0x134);
pub const KEY_MEDIA_STOP = KEY_OFFSET + @as(c_int, 0x135);
pub const KEY_PLAY_PAUSE = KEY_OFFSET + @as(c_int, 0x136);
pub const KEY_LAUNCH_MAIL = KEY_OFFSET + @as(c_int, 0x137);
pub const KEY_MEDIA_SELECT = KEY_OFFSET + @as(c_int, 0x138);
pub const KEY_LAUNCH_APP1 = KEY_OFFSET + @as(c_int, 0x139);
pub const KEY_LAUNCH_APP2 = KEY_OFFSET + @as(c_int, 0x13a);
pub const KEY_LAUNCH_APP3 = KEY_OFFSET + @as(c_int, 0x13b);
pub const KEY_LAUNCH_APP4 = KEY_OFFSET + @as(c_int, 0x13c);
pub const KEY_LAUNCH_APP5 = KEY_OFFSET + @as(c_int, 0x13d);
pub const KEY_LAUNCH_APP6 = KEY_OFFSET + @as(c_int, 0x13e);
pub const KEY_LAUNCH_APP7 = KEY_OFFSET + @as(c_int, 0x13f);
pub const KEY_LAUNCH_APP8 = KEY_OFFSET + @as(c_int, 0x140);
pub const KEY_LAUNCH_APP9 = KEY_OFFSET + @as(c_int, 0x141);
pub const KEY_LAUNCH_APP10 = KEY_OFFSET + @as(c_int, 0x142);
pub const KEY_MIN = KEY_BREAK;
pub const KEY_MAX = KEY_LAUNCH_APP10;
pub inline fn KEY_F(n: anytype) @TypeOf(KEY_F0 + n) {
    return KEY_F0 + n;
}
pub const initscr = initscr_x64;
pub const FUNCTION_KEY_SHUT_DOWN = @as(c_int, 0);
pub const FUNCTION_KEY_PASTE = @as(c_int, 1);
pub const FUNCTION_KEY_ENLARGE_FONT = @as(c_int, 2);
pub const FUNCTION_KEY_SHRINK_FONT = @as(c_int, 3);
pub const FUNCTION_KEY_CHOOSE_FONT = @as(c_int, 4);
pub const FUNCTION_KEY_ABORT = @as(c_int, 5);
pub const PDC_MAX_FUNCTION_KEYS = @as(c_int, 6);
pub inline fn getch() @TypeOf(wgetch(stdscr)) {
    return wgetch(stdscr);
}
pub inline fn ungetch(ch: anytype) @TypeOf(PDC_ungetch(ch)) {
    return PDC_ungetch(ch);
}
pub inline fn COLOR_PAIR(n: anytype) @TypeOf((@import("std").zig.c_translation.cast(chtype, n) << PDC_COLOR_SHIFT) & A_COLOR) {
    return (@import("std").zig.c_translation.cast(chtype, n) << PDC_COLOR_SHIFT) & A_COLOR;
}
pub inline fn PAIR_NUMBER(n: anytype) @TypeOf((n & A_COLOR) >> PDC_COLOR_SHIFT) {
    return (n & A_COLOR) >> PDC_COLOR_SHIFT;
}
pub inline fn PDC_save_key_modifiers(x: anytype) @TypeOf(OK) {
    _ = x;
    return OK;
}
pub inline fn PDC_get_input_fd() @TypeOf(@as(c_int, 0)) {
    return @as(c_int, 0);
}
pub const PDC_BOX_DOUBLED_V = @as(c_int, 1);
pub const PDC_BOX_DOUBLED_H = @as(c_int, 2);
pub const PDC_CLIP_SUCCESS = @as(c_int, 0);
pub const PDC_CLIP_ACCESS_ERROR = @as(c_int, 1);
pub const PDC_CLIP_EMPTY = @as(c_int, 2);
pub const PDC_CLIP_MEMORY_ERROR = @as(c_int, 3);
pub const PDC_KEY_MODIFIER_SHIFT = @as(c_int, 1);
pub const PDC_KEY_MODIFIER_CONTROL = @as(c_int, 2);
pub const PDC_KEY_MODIFIER_ALT = @as(c_int, 4);
pub const PDC_KEY_MODIFIER_NUMLOCK = @as(c_int, 8);
pub const PDC_KEY_MODIFIER_REPEAT = @as(c_int, 16);
pub const TRACE_DISABLE = @as(c_int, 0x0000);
pub const TRACE_TIMES = @as(c_int, 0x0001);
pub const TRACE_TPUTS = @as(c_int, 0x0002);
pub const TRACE_UPDATE = @as(c_int, 0x0004);
pub const TRACE_MOVE = @as(c_int, 0x0008);
pub const TRACE_CHARPUT = @as(c_int, 0x0010);
pub const TRACE_ORDINARY = @as(c_int, 0x001F);
pub const TRACE_CALLS = @as(c_int, 0x0020);
pub const TRACE_VIRTPUT = @as(c_int, 0x0040);
pub const TRACE_IEVENT = @as(c_int, 0x0080);
pub const TRACE_BITS = @as(c_int, 0x0100);
pub const TRACE_ICALLS = @as(c_int, 0x0200);
pub const TRACE_CCALLS = @as(c_int, 0x0400);
pub const TRACE_DATABASE = @as(c_int, 0x0800);
pub const TRACE_ATTRS = @as(c_int, 0x1000);
pub const TRACE_SHIFT = @as(c_int, 13);
pub const TRACE_MAXIMUM = (@as(c_uint, 1) << TRACE_SHIFT) - @as(c_uint, 1);
pub const tagLC_ID = struct_tagLC_ID;
pub const lconv = struct_lconv;
pub const __lc_time_data = struct___lc_time_data;
pub const threadlocaleinfostruct = struct_threadlocaleinfostruct;
pub const threadmbcinfostruct = struct_threadmbcinfostruct;
pub const localeinfo_struct = struct_localeinfo_struct;
pub const _iobuf = struct__iobuf;
pub const PDC_port = enum_PDC_port;
pub const _win = struct__win;
