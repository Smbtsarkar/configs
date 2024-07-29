local status_ok_mason, _ = pcall(require, "masonconfig")
if not status_ok_mason then
  vim.notify("masonconfig luafile is missing.")
  return
end

local status_ok_lspconfig, _ = pcall(require, "lspconf")
if not status_ok_lspconfig then
  vim.notify("lspconf lua file is missing.")
  return
end
