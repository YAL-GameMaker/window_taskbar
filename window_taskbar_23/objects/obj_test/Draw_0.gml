draw_set_font(fnt_test);
draw_set_color(c_white);

draw_text(5, 5, @"Try things:
1: No progress
2: Unknown
3: Normal
4: Paused
5: Error
")
if (keyboard_check_pressed(ord("1"))) status = window_progress_none;
if (keyboard_check_pressed(ord("2"))) status = window_progress_unknown;
if (keyboard_check_pressed(ord("3"))) status = window_progress_normal;
if (keyboard_check_pressed(ord("4"))) status = window_progress_paused;
if (keyboard_check_pressed(ord("5"))) status = window_progress_error;
window_progress(status, clamp(mouse_x, 0, room_width), room_width);

draw_text(205, 5, @"Q: Start flashing
A: Stop flashing
W: Flash thrice
S: Flash window slowly
E: Flash taskbar fast
D: Flash on focus loss
")
if (keyboard_check_pressed(ord("Q"))) window_flash(window_flash_all|window_flash_timer);
if (keyboard_check_pressed(ord("A"))) window_flash(window_flash_stop);
if (keyboard_check_pressed(ord("W"))) window_flash(window_flash_all, 3);
if (keyboard_check_pressed(ord("S"))) window_flash(window_flash_window, 2, 700);
if (keyboard_check_pressed(ord("E"))) window_flash(window_flash_tray, 5, 150);
if (keyboard_check_pressed(ord("D"))) { window_flash(window_flash_all, 1, 0); alarm[0] = 1; }