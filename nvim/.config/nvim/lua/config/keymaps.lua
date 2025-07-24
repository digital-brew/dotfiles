local opts = { noremap = true, silent = true }
-- local map = vim.keymap.set

-- Keep cursor centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Fast saving
-- vim.keymap.set("n", "<leader>w", ":write!<CR>", { silent = true, desc = "Save file" })
-- vim.keymap.set("n", "<leader>q", ":q!<CR>", opts)

-- Remap for dealing with visual line wraps
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- paste over currently selected text without yanking it
vim.keymap.set("v", "p", '"_dp')
vim.keymap.set("v", "P", '"_dP')

-- copy everything between { and } including the brackets
-- p puts text after the cursor,
-- P puts text before the cursor.
vim.keymap.set("n", "YY", "va{Vy", opts)

-- Move line on the screen rather than by line in the file
vim.keymap.set("n", "j", "gj", opts)
vim.keymap.set("n", "k", "gk", opts)

-- Exit on jj and jk
vim.keymap.set("i", "jj", "<ESC>", opts)
vim.keymap.set("i", "jk", "<ESC>", opts)

-- Move to start/end of line
vim.keymap.set({ "n", "x", "o" }, "H", "^", opts)
vim.keymap.set({ "n", "x", "o" }, "L", "g_", opts)

-- Navigate buffers
vim.keymap.set("n", "<Right>", ":bnext<CR>", opts)
vim.keymap.set("n", "<Left>", ":bprevious<CR>", opts)

-- Panes resizing
vim.keymap.set("n", "+", ":vertical resize +5<CR>")
vim.keymap.set("n", "_", ":vertical resize -5<CR>")
vim.keymap.set("n", "=", ":resize +5<CR>")
vim.keymap.set("n", "-", ":resize -5<CR>")

-- Map enter to ciw in normal mode
vim.keymap.set("n", "<CR>", "ciw", opts)
vim.keymap.set("n", "<BS>", "ci", opts)

vim.keymap.set("n", "n", "nzzv", opts)
vim.keymap.set("n", "N", "Nzzv", opts)
vim.keymap.set("n", "*", "*zzv", opts)
vim.keymap.set("n", "#", "#zzv", opts)
vim.keymap.set("n", "g*", "g*zz", opts)
vim.keymap.set("n", "g#", "g#zz", opts)

-- map ; to resume last search
-- map("n", ";", "<cmd>Telescope resume<cr>", opts)

-- search current buffer
-- vim.keymap.set("n", "<C-s>", ":Telescope current_buffer_fuzzy_find<CR>", opts)

-- Split line with X
vim.keymap.set("n", "X", ":keeppatterns substitute/\\s*\\%#\\s*/\\r/e <bar> normal! ==^<cr>", { silent = true })

-- ctrl + x to cut full line
vim.keymap.set("n", "<C-x>", "dd", opts)

-- Select all
vim.keymap.set("n", "<C-a>", "ggVG", opts)

-- write file in current directory
-- :w %:h/<new-file-name>
vim.keymap.set("n", "<C-n>", ":w %:h/", opts)

-- delete forward
-- w{number}dw
-- delete backward
-- w{number}db

vim.keymap.set("n", "<C-P>", ':lua require("config.utils").toggle_go_test()<CR>', opts)

vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", opts)

-- Laravel.nvim

-- Go to controller
vim.keymap.set("n", "<leader>'c", function()
  require("laravel.navigate").goto_controller()
end, { desc = "Go to controller" })
-- Go to model
vim.keymap.set("n", "<leader>'m", function()
  require("laravel.navigate").goto_model()
end, { desc = "Go to model" })
-- Go to view
vim.keymap.set("n", "<leader>'v", function()
  require("laravel.navigate").goto_view()
end, { desc = "Go to view" })
-- Show routes
vim.keymap.set("n", "<leader>'R", function()
  require("laravel.routes").show_routes()
end, { desc = "Show routes" })
-- Go to route file
vim.keymap.set("n", "<leader>'r", function()
  require("laravel.navigate").goto_route_file()
end, { desc = "Go to route file" })
-- Run artisan command
vim.keymap.set("n", "<leader>'a", function()
  vim.cmd("Artisan")
end, { desc = "Run artisan command" })
-- Make command
vim.keymap.set("n", "<leader>'k", function()
  require("laravel.artisan").make_command()
end, { desc = "Make command" })
-- Show status
vim.keymap.set("n", "<leader>'s", function()
  vim.cmd("LaravelStatus")
end, { desc = "Show status" })
-- Show schema diagram
vim.keymap.set("n", "<leader>'S", function()
  require("laravel.schema").show_schema_diagram(false)
end, { desc = "Show schema diagram" })
-- Export schema diagram 
vim.keymap.set("n", "<leader>'E", function()
  require("laravel.schema").show_schema_diagram(true)
end, { desc = "Export schema diagram" })
-- Show architecture diagram 
vim.keymap.set("n", "<leader>'A", function()
  require("laravel.architecture").show_architecture_diagram()
end, { desc = "Show architecture diagram" })

-- PHPRefactoring.nvim 
vim.keymap.set('v', '<leader>rv', '<cmd>PHPExtractVariable<cr>', { desc = 'Extract variable' })
vim.keymap.set('v', '<leader>rm', '<cmd>PHPExtractMethod<cr>', { desc = 'Extract method' })
vim.keymap.set('v', '<leader>rc', '<cmd>PHPExtractClass<cr>', { desc = 'Extract class' })
vim.keymap.set('n', '<leader>ri', '<cmd>PHPExtractInterface<cr>', { desc = 'Extract interface' })
vim.keymap.set('n', '<leader>ic', '<cmd>PHPIntroduceConstant<cr>', { desc = 'Introduce constant' })
vim.keymap.set('n', '<leader>if', '<cmd>PHPIntroduceField<cr>', { desc = 'Introduce field' })
vim.keymap.set('n', '<leader>ip', '<cmd>PHPIntroduceParameter<cr>', { desc = 'Introduce parameter' })
vim.keymap.set('n', '<leader>cs', '<cmd>PHPChangeSignature<cr>', { desc = 'Change signature' })
vim.keymap.set('n', '<leader>pm', '<cmd>PHPPullMembersUp<cr>', { desc = 'Pull members up' })

