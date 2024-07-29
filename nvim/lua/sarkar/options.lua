-- Contains the options for neovim
local options = {
  backup = false,				-- creates a backup file
  clipboard = "unnamedplus",			-- Allow neovim to access the clipboard
  cmdheight = 1,				-- Increase the Cmd Status bar height to view more info (n - line height)
  completeopt = { "menuone", "noselect" },	-- show additional information related to the completion and force use to select it
  conceallevel = 0,				-- text is shown normally when a block is hidden
  fileencoding = "utf-8",
  hlsearch = true,				-- highlight all instances of a seach
  ignorecase = true,
  mouse = "a",					-- allow mouse support in all modes
  pumheight = 10,				-- maximum number of items to show in a pop-up menu
  showmode = false,				-- hide mode information
  showtabline = 0,				-- never show tabs
  smartcase = true,				-- overwrite the ignore case if search contains upper case
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,				-- do not use a swapfile
  termguicolors = true,				-- support 24bit colors
  timeoutlen = 1000,				-- time out time in ms for completions
  undofile = true,				-- persistent undo
  updatetime = 300,				-- faster completion
  writebackup = true,				-- create a backup when overwriting a file - delete post successful write
  expandtab = true,				-- replace tab with space
  shiftwidth = 2,				-- auto indent spaces for each step
  tabstop = 2,					-- 2 spaces for each tab
  number = true,
  relativenumber = true,
  numberwidth = 2,				-- width of number column
  cursorline = true,				-- cursor line
  signcolumn = "yes",				-- enable sign column always
  wrap = false,
  scrolloff = 8,				-- minimum number of lines to keep above and below cursor line
  sidescrolloff = 8,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.api.nvim_set_hl(0, 'CursorLine', { underline = true })
vim.opt.shortmess:append "c"			-- don't give messages for ins-completion-menu
vim.opt.whichwrap:append "<,>"			-- keys to allow movement to / from wrapped space
vim.opt.iskeyword:append "-"			-- consider hypenated words as a single word
