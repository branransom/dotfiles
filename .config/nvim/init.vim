set runtimepath+=~/.vim
set packpath+=~/.vim

source ~/.vimrc

" Neovim 0.5 improves native LSP
if has('nvim-0.5')
  call plug#begin('~/.config/nvim/plugged')
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/playground'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
  call plug#end()

  source ~/.config/nvim/plugins_config.vim
endif

" Live substitution when using :substitute
set inccommand=nosplit

