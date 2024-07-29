local status_ok_mason, mason = pcall(require, "mason")
if not status_ok_mason then 
  vim.notify("Unable to find Mason.")
  return
end

local status_ok_msn_lspconfig, msn_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_msn_lspconfig then
  vim.notify("Mason Lspconfig not found.")
  return
end

mason.setup({
  ui = {
    icons = {
      package_installed = "󰦕",
      package_pending = "󰦗",
      package_uninstalled = "󱄊"
    }
  }
})

msn_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
    "clangd",
    "jsonls",
    "marksman",
    "powershell_es",
    "ruff",
    "pyright"
  },
  automatic_installation = true
})
