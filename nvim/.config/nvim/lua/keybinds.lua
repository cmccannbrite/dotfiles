vim.g.mapleader = " "

local mapper = function(mode, key, result, opts)
	vim.api.nvim_set_keymap( mode, key, result, opts)
end

--Map a keybind in all available modes
local allmap = function(lhs, rhs)
        local modes = { 'n', 'v', 'i', 't', 'x'}
        for v in pairs(modes) do
                mapper( modes[v], lhs, rhs, {noremap = true})
        end
end

local snoremap = {noremap = true, silent = true}
local noremap = {noremap = true}

--Mapping 'jk' to <ESC>
mapper( 'i', 'jk', '<ESC>', snoremap)

--Mapping <Leader>s to Write file
mapper( 'n', '<Leader>s', ':w!<CR>', snoremap)

-- Source current nvim file
mapper( 'n', '<F2>', ':luafile %<CR>', noremap)

-- Unmap all arrow keys
allmap('<UP>', '<NOP>')
allmap('<DOWN>', '<NOP>')
allmap('<LEFT>', '<NOP>')
allmap('<RIGHT>', '<NOP>')

--Seperate a line into two lines at the cursor
mapper( 'n', 'K', '<ESC>i<CR><ESC>', snoremap)

--CTRL j/k delete blank lines below / above, ALT j/k inserts blank lines.
mapper( 'n', '<C-j>', [[m`:silent +g/\m^\s*$/d<CR>``:noh<CR>]], snoremap)
mapper( 'n', '<C-k>', [[m`:silent -g/\m^\s*$/d<CR>``:noh<CR>]], snoremap)
mapper( 'n', '<A-j>', ':set paste<CR>m`o<ESC>``:set nopaste<CR>', snoremap)
mapper( 'n', '<A-k>', ':set paste<CR>m`O<ESC>``:set nopaste<CR>', snoremap)

--NVIM-Tree Keybinding
mapper( 'n', '<C-n>', ':NvimTreeToggle<CR>', noremap)
mapper( 'n', '<Leader>r', ':NvimTreeRefresh<CR>', noremap)
mapper( 'n', '<Leader>n', ':NvimTreeFindFile<CR>', noremap)

--Telescope Keybinding
mapper( 'n', '<Leader>ff', ':Telescope find_files<CR>', snoremap)
mapper( 'n', '<Leader>fb', ':Telescope buffers<CR>', snoremap)
mapper( 'n', '<Leader>qb', ':Telescope quickfix<CR>', snoremap)
