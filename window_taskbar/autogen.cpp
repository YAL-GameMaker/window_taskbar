#include "gml_ext.h"
extern bool window_progress(GAME_HWND hWnd, int status, uint64_t current, uint64_t total);
dllx double window_progress_raw(void* _ptr) {
	gml_istream _in(_ptr);
	GAME_HWND _arg_hWnd;
	_arg_hWnd = (GAME_HWND)_in.read<uint64_t>();
	int _arg_status;
	_arg_status = _in.read<int>();
	uint64_t _arg_current;
	if (_in.read<bool>()) {
		_arg_current = _in.read<uint64_t>();
	} else _arg_current = 0;
	uint64_t _arg_total;
	if (_in.read<bool>()) {
		_arg_total = _in.read<uint64_t>();
	} else _arg_total = 0;
	return window_progress(_arg_hWnd, _arg_status, _arg_current, _arg_total);
}

extern bool window_flash(GAME_HWND hwnd, int flags, uint32_t count, uint32_t freq);
dllx double window_flash_raw(void* _ptr) {
	gml_istream _in(_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	int _arg_flags;
	_arg_flags = _in.read<int>();
	uint32_t _arg_count;
	if (_in.read<bool>()) {
		_arg_count = _in.read<uint32_t>();
	} else _arg_count = 0;
	uint32_t _arg_freq;
	if (_in.read<bool>()) {
		_arg_freq = _in.read<uint32_t>();
	} else _arg_freq = 0;
	return window_flash(_arg_hwnd, _arg_flags, _arg_count, _arg_freq);
}

