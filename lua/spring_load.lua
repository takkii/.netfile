-- spring_load.vim

vim.cmd [[

if filereadable(expand('~/.neovim/plugged/spring_load/autoload/spring_load.vim'))
  source ~/.neovim/plugged/spring_load/autoload/spring_load.vim
endif

]]

collectgarbage()