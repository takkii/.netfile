-- ware_settings

vim.cmd [[

if filereadable(expand('~/.neovim/plugged/spring_load/autoload/ware_settings.vim'))
  source ~/.neovim/plugged/spring_load/autoload/ware_settings.vim
endif

]]

collectgarbage()