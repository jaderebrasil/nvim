" Map <LocalLeader>
let maplocalleader = '\\'
" shortcuts for Markdown
nnoremap <Space>tl :Limelight!!<CR>
nnoremap <Space>tg :Goyo<CR>

" my packages
for f in split(glob('~/.config/nvim/+packages/*.vim'), '\n')
    exe 'source' f
endfor

autocmd FileType makrdown echo "É markdown porra!"
