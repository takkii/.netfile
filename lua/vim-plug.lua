-- vim-plug

vim.cmd [[

" Specify a directory for plugins
call plug#begin('~/.neovim/plugged')

" ddc.vim.
Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
Plug 'Shougo/pum.vim'
Plug 'Shougo/ddc-around'
Plug 'LumaKernel/ddc-file'
Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'
Plug 'Shougo/ddc-converter_remove_overlap'

" ddc-LSP
Plug 'Shougo/ddc-ui-native'
Plug 'Shougo/ddc-source-around'
Plug 'Shougo/ddc-source-lsp'

" nvim-lsp config
Plug 'neovim/nvim-lspconfig'
Plug 'uga-rosa/ddc-nvim-lsp-setup'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'github/copilot.vim'

" appearance
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'dense-analysis/ale'
Plug 'gkeep/iceberg-dark'
Plug 'cocopon/iceberg.vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/vim-easy-align'

" Debugger
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'
Plug 'leoluz/nvim-dap-go'
Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-neotest/nvim-nio'

" Dict
Plug 'matsui54/ddc-source-dictionary'
Plug 'takkii/ruby-dict'

" Make My Plugins
Plug 'takkii/.netfile'
Plug 'takkii/dps-himekuri'
Plug 'takkii/dps-zella'
Plug 'takkii/neoruby-debugger'
Plug 'takkii/spring_load'

" Initialize plugin system
call plug#end()

]]

collectgarbage()