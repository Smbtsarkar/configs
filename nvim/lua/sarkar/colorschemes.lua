-- List of all colorshcemes
local colorscheme = {
  "catpuccin-mocha",
  "catpuccin-macchiato",
  "midnight",
  "koehler",
  "moonfly",
  "night-owl",
  "nightfly"
}

local color = colorscheme[5]

local status_def, _ = pcall(vim.cmd, "colorscheme " .. color)
if not status_def then 
  vim.notify("Failed to set colorscheme " .. color)
  return
end

