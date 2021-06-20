/// @author YellowAfterlife

#include "stdafx.h"
#include <shlobj.h>
#include <stdint.h>

///
enum window_progress_status_t {
    window_progress_none = 0,
    window_progress_unknown = 1,
    window_progress_normal = 2,
    window_progress_error = 4,
    window_progress_paused = 8,
};
dllg bool window_progress(GAME_HWND hWnd, int status, uint64_t current = 0, uint64_t total = 0) {
    static bool ready = false;
    static ITaskbarList3* taskbarList = nullptr;
    if (!ready) {
        ready = true;

        CLSID _clsid{};
        auto hr = CLSIDFromString(L"{56FDF344-FD6D-11D0-958A-006097C9A090}", &_clsid);
        if (hr != NOERROR) {
            trace("Couldn't find CLSID_TaskBarlist: %x", hr);
            return false;
        }

        IID _iid{};
        hr = IIDFromString(L"{ea1afb91-9e28-4b86-90e9-9e9f8a5eefaf}", &_iid);
        if (hr != S_OK) {
            trace("Couldn't find IID_ITaskbarList3: %x", hr);
            return false;
        }

        hr = CoCreateInstance(_clsid, NULL, CLSCTX_ALL, _iid, (void**)&taskbarList);
        if (hr != S_OK) {
            trace("Couldn't CoCreateInstance: %x", hr);
            return false;
        }
    }
    if (taskbarList == nullptr) return false;
    taskbarList->SetProgressState(hWnd, (TBPFLAG)status);
    if (status != TBPF_NOPROGRESS && status != TBPF_INDETERMINATE) {
        taskbarList->SetProgressValue(hWnd, current, total);
    }
    return true;
}
///
enum window_flash_t {
    window_flash_stop = 0,
    window_flash_window = 1,
    window_flash_tray = 2,
    window_flash_all = 3,
    window_flash_timer = 4,
    window_flash_timernofg = 12,
};
dllg bool window_flash(GAME_HWND hwnd, int flags, uint32_t count = 0, uint32_t freq = 0) {
    FLASHWINFO p;
    p.cbSize = sizeof(p);
    p.hwnd = hwnd;
    p.dwFlags = flags;
    p.uCount = count;
    p.dwTimeout = freq;
    return FlashWindowEx(&p);
}