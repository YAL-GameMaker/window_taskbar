if (!window_has_focus()) {
    window_flash(window_flash_all|window_flash_timernofg);
} else alarm[0] = 1;