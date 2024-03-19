-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Make hybrid line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Already in status line
vim.opt.showmode = false

-- Sync clipboard between OS and NeoVim
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Columns of context
vim.opt.sidescrolloff = 8

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- How the backspace work at the start of the line
vim.opt.backspace = '2'

-- Show command keys
vim.opt.showcmd = true

-- Always show status bar
vim.opt.laststatus = 2

-- Auto save the file
vim.opt.autowrite = true

-- Auto reload the file if externaly modified
vim.opt.autoread = true

-- Enable auto format
vim.g.autoformat = true

-- Confirm to save changes before exiting modified buffer
vim.opt.confirm = true

-- Ignore case
vim.opt.ignorecase = true

-- Don't ignore case with capitals
vim.opt.smartcase = true

-- Insert indents automatically
vim.opt.smartindent = true

-- Use spaces for tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Disable swap file
vim.cmd [[ set noswapfile ]]

-- Enable terminal true color support if compatible
vim.cmd [[ set termguicolors ]]

if vim.fn.has("nvim-0.10") == 1 then
    vim.opt.smoothscroll = true
end
