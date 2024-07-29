local status_ok_option, _ = pcall(require, "sarkar.options")
if not status_ok_option then
  vim.notify("Options lua file is missing!")
  return
end

local status_ok_keymap, _ = pcall(require, "sarkar.keymaps")
if not status_ok_keymap then
  vim.notify("Keymaps lua file is missing!")
  return
end

local status_ok_plugin, _ = pcall(require, "sarkar.plugins")
if not status_ok_plugin then
  vim.notify("Plugins lua file is missing!")
  return
end

local status_ok_color, _ = pcall(require, "sarkar.colorschemes")
if not status_ok_color then
  vim.notify("Colorschemes lua file is missing!")
  return
end

local status_ok_cmp, _ = pcall(require, "sarkar.cmp")
if not status_ok_cmp then
  vim.notify("Cmp lua file is missing!")
  return
end

--local status_ok_lsp, _ = pcall(require, "sarkar.lsp")
--if not status_ok_lsp then
--  vim.notify("Lsp lua file is missing!")
--  return
-- end
