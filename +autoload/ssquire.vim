" Personal library for helps on vimscript development
"
if exists("g:loaded_ssquire")
  finish
endif

let g:loaded_ssquire = 1

let g:ssquire_time = 2000

function! s:SleepWithMessage(msg)
    echo "Sleep with Message!"
    echo a:msg
    exe "sleep " . g:ssquire_time ."ms"
    echo "End Sleep with Message."
endfunction

command! -nargs=1 SlpMsg call s:SleepWithMessage(<args>) 

