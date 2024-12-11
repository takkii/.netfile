-- appearance

if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then

-- Windows settings.

vim.cmd [[
  set fileencodings=utf-8,cp932
  set background=dark
  colorscheme iceberg
  set splitbelow
  set nobackup
  set noundofile
  set noswapfile
  syntax enable
  set number
  set wildmenu
  set wildmode=list:full
  set laststatus=2
  set guifont=Source\ Code\ Pro\ Semibold\:h11:sb
  set backspace=indent,eol,start
  set encoding=utf-8

  cd ~
]]

elseif vim.fn.has('osxdarwin') == 1 or vim.fn.has('osx') == 1 then

-- MacOS settings.

  vim.cmd [[
  set fileencodings=utf-8,cp932
  set background=dark
  colorscheme iceberg
  set splitbelow
  set nobackup
  set noundofile
  set noswapfile
  syntax enable
  set number
  set wildmenu
  set wildmode=list:full
  set laststatus=2
  set backspace=indent,eol,start
  set encoding=utf-8

  cd ~
  ]]

elseif vim.fn.has('linux') == 1 then

-- linux kernel settings.

  vim.cmd [[
  set fileencodings=utf-8,cp932
  set background=dark
  colorscheme iceberg
  set splitbelow
  set nobackup
  set noundofile
  set noswapfile
  syntax enable
  set number
  set wildmenu
  set wildmode=list:full
  set laststatus=2
  set guifont=Source\ Code\ Pro\ Semibold\:h11
  set backspace=indent,eol,start
  set encoding=utf-8

  cd ~
  ]]

else

-- else settings.

  vim.cmd [[
  set fileencodings=utf-8,cp932
  set background=dark
  colorscheme iceberg
  set splitbelow
  set nobackup
  set noundofile
  set noswapfile
  syntax enable
  set number
  set wildmenu
  set wildmode=list:full
  set laststatus=2
  set guifont=Source\ Code\ Pro\ Semibold\:h11
  set backspace=indent,eol,start
  set encoding=utf-8

  cd ~
  ]]

end

