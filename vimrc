" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
"colorscheme molokai


" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

colorscheme evening
" 设置配色为沙漠
" 其他可选: torte, solarized, molokai, phd, ron, evening等
"set t_Co = 256
set mouse=a " 设置可用鼠标点击移动光标
set nu " 显示行号
set nobackup " 覆盖文件时不备份
set autowrite " 自动保存
set cursorline " 高亮显示当前行
set tabstop=4 " 设置tab长度为4个空格
" set softtabstop = 4
set shiftwidth=4 " 设置缩进为4个空格
" set expandtab " 将tab替换为空格
set autoindent " 设置自动缩进(对齐上一行)
set smartindent " 设置智能缩进
set cindent " 设置c语言的缩进方式
set showmatch " 自动匹配
set ruler " 在右下角显示当前行信息
set incsearch " 搜索加强
set hlsearch " 搜索高亮
set ignorecase " 搜索忽略大小写
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
set scrolloff=3 " 光标移动到上下两端时保持3行距离
set history=1000 " 历史记录条数从20到1000
"set t_Co = 256



