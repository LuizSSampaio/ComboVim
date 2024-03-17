local map = vim.keymap.set

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
map('n', '<leader>lf', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Nvimtree Toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Nvimtree Focus window" })

-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Telescope Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope Find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Telescope Help page" })

map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Telescope Find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope Find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Telescope Git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Telescope Git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "Telescope Pick hidden term" })
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "Telescope Nvchad themes" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope Find files" })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "Telescope Find all files" }
)

-- dap
map("n", "<leader>dt", ':DapToggleBreakpoint<CR>', { desc = "Dap Toggle Breakpoint" })
map("n", "<leader>dx", ':DapTerminate<CR>', { desc = "Dap Terminate" })
map("n", "<leader>do", ':DapStepOver<CR>', { desc = "Dap Step Over" })

-- neotest
map("n", "<leader>tt", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", { desc = "Run File" })
map("n", "<leader>tT", "<cmd>lua require('neotest').run.run(vim.loop.cwd())<CR>", { desc = "Run All Test Files" })
map("n", "<leader>tr", "<cmd>lua require('neotest').run.run()<CR>", { desc = "Run Nearest" })
map("n", "<leader>tl", "<cmd>lua require('neotest').run.run_last()<CR>", { desc = "Run Last" })
map("n", "<leader>ts", "<cmd>lua require('neotest').summary.toggle()<CR>", { desc = "Toggle Summary" })
map("n", "<leader>to", "<cmd>lua require('neotest').output.open({ enter = true, auto_close = true })<CR>", { desc = "Show Output" })
map("n", "<leader>tO", "<cmd>lua require('neotest').output_panel.toggle()<CR>", { desc = "Toggle Output Panel" })
map("n", "<leader>tS", "<cmd>lua require('neotest').run.stop()<CR>", { desc = "Stop" })
map("n", "<leader>td", "<cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>", { desc = "Debug Nearest" })

-- todo comments
map("n", "]t", "<cmd>lua require('todo-comments').jump_next()<CR>", { desc = "Next todo comment" })
map("n", "[t", "<cmd>lua require('todo-comments').jump_prev()<CR>", { desc = "Previous todo comment" })

-- crates
map("n", "<leader>rcu", "<cmd>lua require('crates').upgrade_all_crates()<CR>", { desc = "Upgrade All Crates" })
