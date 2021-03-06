usingnamespace @import("zig-pdcurses.zig");

pub const code_yes = c.KEY_CODE_YES;
pub const key_break = c.KEY_BREAK;
pub const down = c.KEY_DOWN;
pub const up = c.KEY_UP;
pub const left = c.KEY_LEFT;
pub const right = c.KEY_RIGHT;
pub const home = c.KEY_HOME;
pub const backspace = c.KEY_BACKSPACE;
pub const f0 = c.KEY_F0;
pub const dl = c.KEY_DL;
pub const il = c.KEY_IL;
pub const dc = c.KEY_DC;
pub const ic = c.KEY_IC;
pub const eic = c.KEY_EIC;
pub const clear = c.KEY_CLEAR;
pub const eos = c.KEY_EOS;
pub const eol = c.KEY_EOL;
pub const sf = c.KEY_SF;
pub const sr = c.KEY_SR;
pub const npage = c.KEY_NPAGE;
pub const ppage = c.KEY_PPAGE;
pub const stab = c.KEY_STAB;
pub const ctab = c.KEY_CTAB;
pub const catab = c.KEY_CATAB;
pub const enter = c.KEY_ENTER;
pub const sreset = c.KEY_SRESET;
pub const reset = c.KEY_RESET;
pub const print = c.KEY_PRINT;
pub const ll = c.KEY_LL;
pub const abort = c.KEY_ABORT;
pub const shelp = c.KEY_SHELP;
pub const lhelp = c.KEY_LHELP;
pub const btab = c.KEY_BTAB;
pub const beg = c.KEY_BEG;
pub const cancel = c.KEY_CANCEL;
pub const close = c.KEY_CLOSE;
pub const command = c.KEY_COMMAND;
pub const copy = c.KEY_COPY;
pub const create = c.KEY_CREATE;
pub const end = c.KEY_END;
pub const exit = c.KEY_EXIT;
pub const find = c.KEY_FIND;
pub const help = c.KEY_HELP;
pub const mark = c.KEY_MARK;
pub const message = c.KEY_MESSAGE;
pub const move = c.KEY_MOVE;
pub const next = c.KEY_NEXT;
pub const open = c.KEY_OPEN;
pub const options = c.KEY_OPTIONS;
pub const previous = c.KEY_PREVIOUS;
pub const redo = c.KEY_REDO;
pub const reference = c.KEY_REFERENCE;
pub const refresh = c.KEY_REFRESH;
pub const replace = c.KEY_REPLACE;
pub const restart = c.KEY_RESTART;
pub const key_resume = c.KEY_RESUME;
pub const save = c.KEY_SAVE;
pub const sbeg = c.KEY_SBEG;
pub const scancel = c.KEY_SCANCEL;
pub const scommand = c.KEY_SCOMMAND;
pub const scopy = c.KEY_SCOPY;
pub const screate = c.KEY_SCREATE;
pub const sdc = c.KEY_SDC;
pub const sdl = c.KEY_SDL;
pub const select = c.KEY_SELECT;
pub const send = c.KEY_SEND;
pub const seol = c.KEY_SEOL;
pub const sexit = c.KEY_SEXIT;
pub const sfind = c.KEY_SFIND;
pub const shome = c.KEY_SHOME;
pub const sic = c.KEY_SIC;
pub const sleft = c.KEY_SLEFT;
pub const smessage = c.KEY_SMESSAGE;
pub const smove = c.KEY_SMOVE;
pub const snext = c.KEY_SNEXT;
pub const soptions = c.KEY_SOPTIONS;
pub const sprevious = c.KEY_SPREVIOUS;
pub const sprint = c.KEY_SPRINT;
pub const sredo = c.KEY_SREDO;
pub const sreplace = c.KEY_SREPLACE;
pub const sright = c.KEY_SRIGHT;
pub const srsume = c.KEY_SRSUME;
pub const ssave = c.KEY_SSAVE;
pub const ssuspend = c.KEY_SSUSPEND;
pub const sundo = c.KEY_SUNDO;
pub const key_suspend = c.KEY_SUSPEND;
pub const undo = c.KEY_UNDO;
pub const alt_0 = c.ALT_0;
pub const alt_1 = c.ALT_1;
pub const alt_2 = c.ALT_2;
pub const alt_3 = c.ALT_3;
pub const alt_4 = c.ALT_4;
pub const alt_5 = c.ALT_5;
pub const alt_6 = c.ALT_6;
pub const alt_7 = c.ALT_7;
pub const alt_8 = c.ALT_8;
pub const alt_9 = c.ALT_9;
pub const alt_a = c.ALT_A;
pub const alt_b = c.ALT_B;
pub const alt_c = c.ALT_C;
pub const alt_d = c.ALT_D;
pub const alt_e = c.ALT_E;
pub const alt_f = c.ALT_F;
pub const alt_g = c.ALT_G;
pub const alt_h = c.ALT_H;
pub const alt_i = c.ALT_I;
pub const alt_j = c.ALT_J;
pub const alt_k = c.ALT_K;
pub const alt_l = c.ALT_L;
pub const alt_m = c.ALT_M;
pub const alt_n = c.ALT_N;
pub const alt_o = c.ALT_O;
pub const alt_p = c.ALT_P;
pub const alt_q = c.ALT_Q;
pub const alt_r = c.ALT_R;
pub const alt_s = c.ALT_S;
pub const alt_t = c.ALT_T;
pub const alt_u = c.ALT_U;
pub const alt_v = c.ALT_V;
pub const alt_w = c.ALT_W;
pub const alt_x = c.ALT_X;
pub const alt_y = c.ALT_Y;
pub const alt_z = c.ALT_Z;
pub const ctl_left = c.CTL_LEFT;
pub const ctl_right = c.CTL_RIGHT;
pub const ctl_pgup = c.CTL_PGUP;
pub const ctl_pgdn = c.CTL_PGDN;
pub const ctl_home = c.CTL_HOME;
pub const ctl_end = c.CTL_END;
pub const a1 = c.KEY_A1;
pub const a2 = c.KEY_A2;
pub const a3 = c.KEY_A3;
pub const b1 = c.KEY_B1;
pub const b2 = c.KEY_B2;
pub const b3 = c.KEY_B3;
pub const c1 = c.KEY_C1;
pub const c2 = c.KEY_C2;
pub const c3 = c.KEY_C3;
pub const padslash = c.PADSLASH;
pub const padenter = c.PADENTER;
pub const ctl_padenter = c.CTL_PADENTER;
pub const alt_padenter = c.ALT_PADENTER;
pub const padstop = c.PADSTOP;
pub const padstar = c.PADSTAR;
pub const padminus = c.PADMINUS;
pub const padplus = c.PADPLUS;
pub const ctl_padstop = c.CTL_PADSTOP;
pub const ctl_padcenter = c.CTL_PADCENTER;
pub const ctl_padplus = c.CTL_PADPLUS;
pub const ctl_padminus = c.CTL_PADMINUS;
pub const ctl_padslash = c.CTL_PADSLASH;
pub const ctl_padstar = c.CTL_PADSTAR;
pub const alt_padplus = c.ALT_PADPLUS;
pub const alt_padminus = c.ALT_PADMINUS;
pub const alt_padslash = c.ALT_PADSLASH;
pub const alt_padstar = c.ALT_PADSTAR;
pub const alt_padstop = c.ALT_PADSTOP;
pub const ctl_ins = c.CTL_INS;
pub const alt_del = c.ALT_DEL;
pub const alt_ins = c.ALT_INS;
pub const ctl_up = c.CTL_UP;
pub const ctl_down = c.CTL_DOWN;
pub const ctl_dn = c.CTL_DN;
pub const ctl_tab = c.CTL_TAB;
pub const alt_tab = c.ALT_TAB;
pub const alt_minus = c.ALT_MINUS;
pub const alt_equal = c.ALT_EQUAL;
pub const alt_home = c.ALT_HOME;
pub const alt_pgup = c.ALT_PGUP;
pub const alt_pgdn = c.ALT_PGDN;
pub const alt_end = c.ALT_END;
pub const alt_up = c.ALT_UP;
pub const alt_down = c.ALT_DOWN;
pub const alt_right = c.ALT_RIGHT;
pub const alt_left = c.ALT_LEFT;
pub const alt_enter = c.ALT_ENTER;
pub const alt_esc = c.ALT_ESC;
pub const alt_bquote = c.ALT_BQUOTE;
pub const alt_lbracket = c.ALT_LBRACKET;
pub const alt_rbracket = c.ALT_RBRACKET;
pub const alt_semicolon = c.ALT_SEMICOLON;
pub const alt_fquote = c.ALT_FQUOTE;
pub const alt_comma = c.ALT_COMMA;
pub const alt_stop = c.ALT_STOP;
pub const alt_fslash = c.ALT_FSLASH;
pub const alt_bksp = c.ALT_BKSP;
pub const ctl_bksp = c.CTL_BKSP;
pub const pad0 = c.PAD0;
pub const ctl_pad0 = c.CTL_PAD0;
pub const ctl_pad1 = c.CTL_PAD1;
pub const ctl_pad2 = c.CTL_PAD2;
pub const ctl_pad3 = c.CTL_PAD3;
pub const ctl_pad4 = c.CTL_PAD4;
pub const ctl_pad5 = c.CTL_PAD5;
pub const ctl_pad6 = c.CTL_PAD6;
pub const ctl_pad7 = c.CTL_PAD7;
pub const ctl_pad8 = c.CTL_PAD8;
pub const ctl_pad9 = c.CTL_PAD9;
pub const alt_pad0 = c.ALT_PAD0;
pub const alt_pad1 = c.ALT_PAD1;
pub const alt_pad2 = c.ALT_PAD2;
pub const alt_pad3 = c.ALT_PAD3;
pub const alt_pad4 = c.ALT_PAD4;
pub const alt_pad5 = c.ALT_PAD5;
pub const alt_pad6 = c.ALT_PAD6;
pub const alt_pad7 = c.ALT_PAD7;
pub const alt_pad8 = c.ALT_PAD8;
pub const alt_pad9 = c.ALT_PAD9;
pub const ctl_del = c.CTL_DEL;
pub const alt_bslash = c.ALT_BSLASH;
pub const ctl_enter = c.CTL_ENTER;
pub const shf_padenter = c.SHF_PADENTER;
pub const shf_padslash = c.SHF_PADSLASH;
pub const shf_padstar = c.SHF_PADSTAR;
pub const shf_padplus = c.SHF_PADPLUS;
pub const shf_padminus = c.SHF_PADMINUS;
pub const shf_up = c.SHF_UP;
pub const shf_down = c.SHF_DOWN;
pub const shf_ic = c.SHF_IC;
pub const shf_dc = c.SHF_DC;
pub const mouse = c.KEY_MOUSE;
pub const shift_l = c.KEY_SHIFT_L;
pub const shift_r = c.KEY_SHIFT_R;
pub const control_l = c.KEY_CONTROL_L;
pub const control_r = c.KEY_CONTROL_R;
pub const key_alt_l = c.KEY_ALT_L;
pub const key_alt_r = c.KEY_ALT_R;
pub const resize = c.KEY_RESIZE;
pub const sup = c.KEY_SUP;
pub const sdown = c.KEY_SDOWN;
pub const apps = c.KEY_APPS;
pub const pause = c.KEY_PAUSE;
pub const printscreen = c.KEY_PRINTSCREEN;
pub const scrolllock = c.KEY_SCROLLLOCK;
pub const browser_back = c.KEY_BROWSER_BACK;
pub const browser_fwd = c.KEY_BROWSER_FWD;
pub const browser_ref = c.KEY_BROWSER_REF;
pub const browser_stop = c.KEY_BROWSER_STOP;
pub const search = c.KEY_SEARCH;
pub const favorites = c.KEY_FAVORITES;
pub const browser_home = c.KEY_BROWSER_HOME;
pub const volume_mute = c.KEY_VOLUME_MUTE;
pub const volume_down = c.KEY_VOLUME_DOWN;
pub const volume_up = c.KEY_VOLUME_UP;
pub const next_track = c.KEY_NEXT_TRACK;
pub const prev_track = c.KEY_PREV_TRACK;
pub const media_stop = c.KEY_MEDIA_STOP;
pub const play_pause = c.KEY_PLAY_PAUSE;
pub const launch_mail = c.KEY_LAUNCH_MAIL;
pub const media_select = c.KEY_MEDIA_SELECT;
pub const launch_app1 = c.KEY_LAUNCH_APP1;
pub const launch_app2 = c.KEY_LAUNCH_APP2;
pub const launch_app3 = c.KEY_LAUNCH_APP3;
pub const launch_app4 = c.KEY_LAUNCH_APP4;
pub const launch_app5 = c.KEY_LAUNCH_APP5;
pub const launch_app6 = c.KEY_LAUNCH_APP6;
pub const launch_app7 = c.KEY_LAUNCH_APP7;
pub const launch_app8 = c.KEY_LAUNCH_APP8;
pub const launch_app9 = c.KEY_LAUNCH_APP9;
pub const launch_app10 = c.KEY_LAUNCH_APP10;
pub const min = c.KEY_MIN;
pub const max = c.KEY_MAX;

pub inline fn f(num:i32) i32 {
    return c.F(num);
}
