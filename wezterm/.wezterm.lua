local wezterm = require("wezterm")

local act = wezterm.action

local config = wezterm.config_builder()

config.keys = {
  -- Resize left
  { key = "h", mods="ALT|SHIFT", action = act.AdjustPaneSize({ "Left", 5 }) },
  { key = "h", mods="CTRL|ALT|SHIFT", action = act.AdjustPaneSize({ "Left", 1 }) },

  -- Resize Right
  { key = "l", mods="ALT|SHIFT", action = act.AdjustPaneSize({ "Right", 5 }) },
  { key = "l", mods="CTRL|ALT|SHIFT", action = act.AdjustPaneSize({ "Right", 1 }) },

  --Resize Up
  { key = "k", mods="ALT|SHIFT", action = act.AdjustPaneSize({ "Up", 5 }) },
  { key = "k", mods="CTRL|ALT|SHIFT", action = act.AdjustPaneSize({ "Up", 1 }) },

  -- Resize Down
  { key = "j", mods="ALT|SHIFT", action = act.AdjustPaneSize({ "Down", 5 }) },
  { key = "j", mods="CTRL|ALT|SHIFT", action = act.AdjustPaneSize({ "Down", 1 }) },

  -- Split Terminal
  -- Horizontal Split
  { key = "|", mods="CTRL|ALT|SHIFT", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },

  -- Vertical
  { key = "_", mods="CTRL|ALT|SHIFT", action = act.SplitVertical { domain = "CurrentPaneDomain" } }
}
config.use_fancy_tab_bar = true

config.initial_cols = 172
config.initial_rows = 24

config.color_scheme = "AdventureTime"
config.window_background_opacity = 0.75
config.kde_window_background_blur = true

config.window_decorations = "NONE"
config.font = wezterm.font("DepartureMono Nerd Font Mono")
config.font_size = 13
config.default_cursor_style = "SteadyUnderline"

return config
