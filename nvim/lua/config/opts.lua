local set = vim.opt
local config = vim.fn.expand("~/.config")

set.backup = false -- creates backup file
set.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
set.cmdheight = 1 -- more space for showing messages in neovim command line
set.conceallevel = 1 -- hides the `` in md files
set.hidden = true -- keep multiple buffers and open multiple buffers
set.hlsearch = true -- highlight all matches on previous search pattern
set.ignorecase = true -- ignore case in search
set.showmode = false -- hide the mode since lualine does it
set.smartcase = true
set.splitbelow = true -- force all horizontal splits to go below current window
set.splitright = true -- force all verticale splits to go right of window
set.swapfile = false
set.termguicolors = true
set.timeoutlen = 1000
set.title = true -- set the title of window
set.undodir = { config .. "/.undodir" }
set.undofile = true
set.writebackup = false --if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
set.expandtab = true -- convert tabs to spaces
set.shiftwidth = 2 -- the number of spaces inserted for each indentation
set.tabstop = 2 -- insert 2 spaces for a tab
set.cursorline = true -- highlight the current line
set.number = true -- set numbered lines
set.textwidth = 0
set.wrapmargin = 0
set.wrap = false
set.numberwidth = 2 -- set number column width to 2 {default 4}
set.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
set.showcmd = false
set.ruler = false
set.laststatus = 3
-- set.scrolloff = 999

set.cursorline = true
set.cursorlineopt = "number"
set.jumpoptions = "stack,view"

set.relativenumber = true

set.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

set.cursorline = true
set.cursorcolumn = true

set.cmdheight = 0

set.inccommand = "split" -- live substitution

set.shortmess = { o = true }
vim.diagnostic.config({ virtual_text = false })

-- Fold stuff
-- set.foldmethod = "expr"
-- set.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- set.foldtext = ""
-- set.foldcolumn = "0"
-- set.foldlevel = 99
-- set.foldnestmax = 4
-- set.foldlevelstart = 1

set.iskeyword = "-,@,48-57,_,192-255"

set.background = "light" -- default to dark or light style
-- vim.cmd.colorscheme("gruvbox")
vim.cmd.colorscheme("catppuccin")
vim.cmd.set("nowrap")
-- vim.cmd.colorscheme("tokyonight")
-- vim.cmd.colorscheme("everforest")
-- vim.cmd.colorscheme("github_light_high_contrast")
