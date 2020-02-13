"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configuration
"
" Defing md as markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

" Basic goyo options
let g:goyo_width  = 125
let g:goyo_height =  95

" Save the current `background` value for reset later
let s:save_background = ""
if exists( "&background" )
    let s:save_background = &background
endif

function! s:markdown_room()
    "set background=light
    set linespace=8
endfunction

function! s:goyo_before()
    let is_mark_or_rst = &filetype == "markdown" || &filetype == "rst" || &filetype == "text"
    
    if is_mark_or_rst
        call s:markdown_room()
    endif

    let b:quitting = 0
    autocmd QuitPre <buffer> let b:quitting = 1
endfunction

function! s:goyo_after()
    let is_mark_or_rst = &filetype == "markdown" || &filetype == "rst" || &filetype == "text"
    if is_mark_or_rst
        set linespace=0

        if s:save_background != ""
            exec( "set background=" . s:save_background )
        endif
     endif

    " Quit Vim if this is the only remaining buffer
    if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
        qa
    endif
endfunction

let g:goyo_callbacks = [ function('s:goyo_before'), function('s:goyo_after') ]
