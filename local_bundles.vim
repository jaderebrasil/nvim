" autoload
for a in split(glob('~/.config/nvim/+autoload/*.vim'), '\n')
    exe 'source' a
endfor

" latex
Plug 'lervag/vimtex'

" markdown
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'

" autocomplete
Plug 'ycm-core/YouCompleteMe'

" multiple cursor
Plug 'terryma/vim-multiple-cursors'

" Rename/Chmod/SudoWrite
Plug 'tpope/vim-eunuch'


" config of packages
for f in split(glob('~/.config/nvim/+config/*.vim'), '\n')
    exe 'source' f
endfor

