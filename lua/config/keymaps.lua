local mapkey = require("util.keymapper").mapvimkey

-- Buffer Navigation
mapkey("<A-l>", "bnext", "n")            -- Next buffer
mapkey("<A-h>", "bprevious", "n")        -- Prev buffer
mapkey("<Tab>", "e #", "n")              -- Switch to other buffer

-- Directory Navigation
mapkey("<leader>`", "NvimTreeFocus", "n")
mapkey("<leader><Tab>", "NvimTreeToggle", "n")

-- Window Navigation (Normal & Terminal)
mapkey("<C-h>", "<C-w>h", "n")
mapkey("<C-j>", "<C-w>j", "n")
mapkey("<C-k>", "<C-w>k", "n")
mapkey("<C-l>", "<C-w>l", "n")
mapkey("<C-h>", "wincmd h", "t")
mapkey("<C-j>", "wincmd j", "t")
mapkey("<C-k>", "wincmd k", "t")
mapkey("<C-l>", "wincmd l", "t")

-- Tmux Navigator
mapkey("<C-h>", "TmuxNavigateLeft", "n")
mapkey("<C-j>", "TmuxNavigateDown", "n")
mapkey("<C-k>", "TmuxNavigateUp", "n")
mapkey("<C-l>", "TmuxNavigateRight", "n")

-- Window Management
mapkey("<leader>sv", "vsplit", "n")
mapkey("<leader>sh", "split", "n")
mapkey("<C-Up>", "resize +2", "n")
mapkey("<C-Down>", "resize -2", "n")
mapkey("<C-Left>", "vertical resize +2", "n")
mapkey("<C-Right>", "vertical resize -2", "n")

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n")

-- Notes (Neorg)
mapkey("<leader>ng", "Neorg workspace general", "n")
mapkey("<leader>nw", "Neorg workspace work", "n")
mapkey("<leader>ny", "Neorg workspace youtube", "n")

-- Zen Mode
mapkey("<leader>zn", "TZNarrow", "n")
mapkey("<leader>zn", "'<,'>TZNarrow", "v")
mapkey("<leader>sm", "TZFocus", "n")
mapkey("<leader>zm", "TZMinimalist", "n")
mapkey("<leader>za", "TZAtaraxis", "n")

-- Comments
mapkey("<A-q>", "gtc", "n")
mapkey("<A-q>", "goc", "v")

-- Move lines
mapkey("<A-j>", ":m .+1<CR>==", "n")
mapkey("<A-k>", ":m .-2<CR>==", "n")
mapkey("<A-j>", ":m '>+1<CR>gv=gv", "v")
mapkey("<A-k>", ":m '<-2<CR>gv=gv", "v")

-- Visual Indenting
mapkey("<", "<gv", "v")
mapkey(">", ">gv", "v")

