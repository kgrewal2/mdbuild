let s:plugin_path = expand('<sfile>:p:h:h')
let s:prehtml = s:plugin_path.'/prehtml'
let s:posthtml = s:plugin_path.'/posthtml'

function MDbuild()
    let filename=@%
    let filename = substitute(filename, "md$", "html", "")
    silent execute '!marked --input ' @% ' --output tempxyz'
    silent execute '!cat ' s:prehtml ' tempxyz ' s:posthtml '>' filename
    execute ':redraw!'
endfunction

autocmd InsertLeave * call MDbuild()
