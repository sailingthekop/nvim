-- ========================================================================== --
--                                                                            --
--    File         :  options.lua                                             --
--    Location     :  $XDG_CONFIG_HOME/nvim/lua/config/options.lua            --
--    Version      :  0.0.1                                                   --
--    Description  :                                                          --
--        Basic settings native to neovim                                     --
--                                                                            --
-- ========================================================================== --

local opt = vim.opt

-- Basic settings
opt.number = true                                          -- line numbers
opt.relativenumber = true                                  -- relative linu numbers
opt.cursorline = true                                      -- highlight current line
opt.scrolloff = 10                                         -- keep 10 lines above/below of cursor
opt.sidescrolloff = 8                                      -- keep 8 columns left/right of cursor
opt.wrap = false                                           -- don't wrap lines
opt.cmdheight = 1                                          -- command line height
opt.spelllang = { "en" }                                   -- set language for spellchecking

-- Tabbing / Indentation
opt.tabstop = 2                                            -- tab width
opt.shiftwidth = 2                                         -- indent width
opt.softtabstop = 2                                        -- soft tab width
opt.expandtab = true                                       -- use spaces instead of tabs
opt.smartindent = true                                     -- smart auto-indenting
opt.autoindent = true                                      -- copy indent from current line
opt.grepprg = "rg --vimgrep"                               -- use ripgrep if available
opt.grepformat = "%f:%l:%c:%m"                             -- filename, line number, column, content

-- Search settings
opt.ignorecase = true                                      -- case-insensitive search
opt.smartcase = true                                       -- case-sensitive if uppercase in search
opt.hlsearch = false                                       -- don't highlight search results
opt.incsearch = true                                       -- show matches as you type

-- File handling
opt.backup = false                                         -- don't create backup files
opt.writebackup = false                                    -- don't backup before overwriting
opt.swapfile = false                                       -- don't create swapfiles
opt.undofile = true                                        -- persistant undo
opt.updatetime = 300                                       -- time in ms to trigger CursorHold
opt.timeoutlen = 500                                       -- time in ms to wait for mapped sequence
opt.ttimeoutlen = 0                                        -- no wait for key code sequences
opt.autoread = true                                        -- auto-reload file if changed outside
opt.autowrite = false                                      -- don't auto-save on some events
opt.diffopt:append("vertical")                             -- vartical diff splits
opt.diffopt:append("algorithm:patience")                   -- better diff algorithm
opt.diffopt:append("linematch:60")                         -- better diff highlighting (smart line matching)

-- Set undo directory and ensure it exists
local undodir = "~/.local/share/nvim/undodir"              -- undodir path
opt.undodir = vim.fn.expand(undodir)                       -- expand full path
local undodir_path = vim.fn.expand(undodir)
if vim.fn.isdirectory(undodir_path) == 0 then
  vim.fn.mkdir(undodir_path, "p")                          -- create if non-existant
end

-- Visual settings
opt.termguicolors = true                                   -- enable 24-bit colours
opt.signcolumn = "yes"                                     -- always show sign column
opt.colorcolumn = "100"                                    -- show column at 100 characters
opt.showmatch = true                                       -- highlight matching brackets
opt.matchtime = 2                                          -- how ling to show matching bracket
opt.completeopt = "menuone,noinsert,noselect"              -- completion options
opt.showmode = false                                       -- don't show mode in command line
opt.pumheight = 10                                         -- popup menu height
opt.pumblend = 10                                          -- popup menu transparency
opt.winblend = 0                                           -- floating window transparency
opt.conceallevel = 0                                       -- don't hide markup
opt.concealcursor = ""                                     -- show markup even on cursor line
opt.lazyredraw = false                                     -- redraw while executing macros (better UX)
opt.redrawtime = 10000                                     -- timeout for syntax highlighting redraw
opt.maxmempattern = 20000                                  -- max memory for pattern matching
opt.synmaxcol = 300                                        -- syntax highlighting column limit

-- Behaviour settings
opt.errorbells = false                                     -- disable error sounds
opt.backspace = "indent,eol,start"                         -- make backspace behave naturally
opt.autochdir = false                                      -- don't change directory automatically
opt.iskeyword:append("-")                                  -- treat dash as part of a word
opt.path:append("**")                                      -- search into subfolders with 'gf'
opt.selection = "inclusive"                                -- use inclusive selection
opt.mouse = "a"                                            -- enable mouse support
opt.clipboard:append("unnamedplus")                        -- use system keyboard
opt.modifiable = true                                      -- allow editing buffers
opt.encoding = "UTF-8"                                     -- use utf-8 encoding
opt.wildmenu = true                                        -- enable command-line completion menu
opt.wildmode = "longest:full,full"                         -- completion mode for command-line
opt.wildignorecase = true                                  -- case-insensitive tab completion in commands

-- Cursor settings
opt.guicursor = {
  "n-v-c:block",                                           -- normal, visual, command-line
  "i-ci-ve:ver25",                                         -- insert, command-line insert, visual-exclusive
  "r-cr:hor20",                                            -- replace, command-line replace
  "o:hor50",                                               -- operator-pending
  "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",  -- all modes: blinking & highlight groups
  "sm:block-blinkwait175-blinkoff150-blinkon175",          -- showmatch mode
}

-- Folding settings
opt.foldmethod = "expr"                                    -- use expression for folding
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"           -- use treesitter for folding
opt.foldlevel = 99                                         -- keep all folds open by default

-- Split behaviour
opt.splitbelow = true                                      -- horizontal splits open below
opt.splitright = true                                      -- vartical splits open to the right
