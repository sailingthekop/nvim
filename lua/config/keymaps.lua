-- ========================================================================== --
--                                                                            --
--    File         :  keymaps.lua                                             --
--    Location     :  $XDG_CONFIG_HOME/nvim/lua/keymaps.lua                   --
--    Version      :  0.0.1                                                   --
--    Description  :                                                          --
--        Setting some quality of life keymaps                                --
--                                                                            --
-- ========================================================================== --

local map = vim.keymap

-- Buffer navigation
map.set("n", "<leader>bn", "<Cmd>bnext<CR>", { desc = "Next buffer" })
map.set("n", "<leader>bp", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Better window navigation
map.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
map.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
map.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Center screen when jumping
map.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
map.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
map.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
map.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Splitting & Resizing
map.set("n", "<leader>sv", "<Cmd>vsplit<CR>", { desc = "Split window vertically" })
map.set("n", "<leader>sh", "<Cmd>split<CR>", { desc = "Split window horizontally" })
map.set("n", "<C-Up>", "<Cmd>resize +2<CR>", { desc = "Increase window height" })
map.set("n", "<C-Down>", "<Cmd>resize -2<CR>", { desc = "Decrease window height" })
map.set("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
map.set("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Better indenting in visual mode
map.set("v", "<", "<gv", { desc = "Indent left and reselect" })
map.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- File explorer
map.set("n", "<leader>m", "<Cmd>NvimTreeFocus<CR>", { desc = "Focus on File Explorer" })
map.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })

-- Better J behaviour
map.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })
