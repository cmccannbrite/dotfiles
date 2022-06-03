local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- My plugins here
  use {'wbthomason/packer.nvim'}
  use {'dracula/vim', as = 'dracula'}
  use {'kyazdani42/nvim-web-devicons'}
  use {'kyazdani42/nvim-tree.lua'}
  use {'prettier/vim-prettier'}
  use {'terrortylor/nvim-comment'}
  use {'neovim/nvim-lspconfig'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use { 'nvim-telescope/telescope.nvim'}
  use { 'nvim-lua/plenary.nvim'}
  -- Completion
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-nvim-lua'}
  use {'L3MON4D3/LuaSnip'}
  use {'saadparwaiz1/cmp_luasnip'}
  use {'onsails/lspkind-nvim'}
  use {'nvim-lualine/lualine.nvim'}
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
