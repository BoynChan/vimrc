set relativenumber
set cul
set enc=utf-8
set nocompatible

call pathogen#infect()

source $VIMRUNTIME/vimrc_example.vim
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set ts=4
colorscheme molokai
set nobackup

set undodir=~/.vim/undodir

if has('mouse')
    if has('gui_running') || (&term =~ 'xterm' && !has('mac'))
        set mouse=a
    else
        set mouse=nvi
    endif
endif
augroup filetype
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


