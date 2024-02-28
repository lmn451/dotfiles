local wezterm = require("wezterm")

return {
    font = wezterm.font_with_fallback({"PragmataPro Mono Liga"}),
    font_size = 24,
    adjust_window_size_when_changing_font_size = false,
    debug_key_events = false,
    enable_tab_bar = false,
    native_macos_fullscreen_mode = false,
    window_close_confirmation = "NeverPrompt",
    window_decorations = "RESIZE",
    window_background_opacity = 0.8,
    color_scheme = "Catppuccin Mocha",
    keys = {{
        key = "Enter",
        mods = "ALT",
        action = "DisableDefaultAssignment"
    }, {
        key = "c",
        mods = "SHIFT|ALT",
        action = wezterm.action({
            SplitHorizontal = {
                domain = "CurrentPaneDomain"
            }
        })
    }, {
        key = "x",
        mods = "SHIFT|ALT",
        action = wezterm.action({
            SplitVertical = {
                domain = "CurrentPaneDomain"
            }
        })
    }, {
        key = "LeftArrow",
        mods = "ALT|SHIFT",
        action = wezterm.action({
            ActivatePaneDirection = "Left"
        })
    }, {
        key = "RightArrow",
        mods = "ALT|SHIFT",
        action = wezterm.action({
            ActivatePaneDirection = "Right"
        })
    }, {
        key = "UpArrow",
        mods = "ALT|SHIFT",
        action = wezterm.action({
            ActivatePaneDirection = "Up"
        })
    }, {
        key = "DownArrow",
        mods = "ALT|SHIFT",
        action = wezterm.action({
            ActivatePaneDirection = "Down"
        })
    }}
}
