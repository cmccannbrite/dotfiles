local options ={
  --Global Settings
  wrap = false,
  clipboard = "unnamedplus",
  showmatch = false,
  hlsearch = false,
  cmdheight = 2,
  updatetime = 300,
  smartcase = true,
  incsearch = true,
  scrolloff = 8,
  termguicolors = true,
  -- Buffer Settings
  shiftwidth = 2,
  tabstop = 2,
  smarttab = true,
  expandtab = true,
  softtabstop = 2,
  smartindent = true,
  swapfile = false,
  backup = false,
  writebackup = false,

  --Window Settings
  relativenumber = true,
  signcolumn = "auto",
  rnu = true,
  colorcolumn = "80",
  completeopt = { 'menu', 'menuone', 'noselect' }
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
vim.opt.formatoptions:remove({ 'o', 'c', 'r'})
vim.opt.shortmess:append "c"






vim.cmd[[colorscheme dracula ]]
vim.cmd[[highlight NvimTreeFolderIcon guibg=blue]]