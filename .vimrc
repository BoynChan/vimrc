set nu
set enc=utf-8
set nocompatible

source $VIMRUNTIME/vimrc_example.vim

set nobackup

set undodir=~/.vim/undodir

if has('mouse')
    if has('gui_running') || (&term =~ 'xterm' && !has('mac'))
        set mouse=a
    else
        set mouse=nvi
    endif
endif
