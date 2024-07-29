local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Space as leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.mallocalleader = " "

-- Normal Mode
-- Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)            -- Ctrl + j - move to left split
keymap("n", "<C-k>", "<C-w>k", opts)            -- Ctrl + j - move to above split
keymap("n", "<C-j>", "<C-w>j", opts)            -- Ctrl + j - move to below split
keymap("n", "<C-l>", "<C-w>l", opts)            -- Ctrl + j - move to right split

-- Resize splits
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)            -- Ctrl + j - move to left split
keymap("n", "<C-Up>", ":resize +2<CR>", opts)                       -- Ctrl + j - move to above split
keymap("n", "<C-Down>", ":resize -2<CR>", opts)                     -- Ctrl + j - move to below split
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)           -- Ctrl + j - move to right split

-- Navigate between buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)        -- Next buffer
keymap("n", "<S-h>", ":bprevious<CR>", opts)    -- Previous buffer

-- Toggle NerdTree
keymap("n","<leader>e", ":Lex 30<CR>", opts)    -- Space + e to open / close nerdtree


-- Insert Mode
-- Better escape
keymap("i", "jj", "<ESC>", opts)    -- Replace jj for ESC

-- Visual Mode / Block Mode
-- Persistent indent
keymap("v", "<", "<gv", opts)     -- Host > to indent
keymap("v", ">", ">gv", opts)

-- Move text up / down
keymap("x", "J", ":move '>+1<CR>gv=gv", opts)
keymap("x", "K", ":move '<-2<CR>gv=gv", opts)

-- Better copy
keymap("v", "p", '"_dP', opts)

-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

