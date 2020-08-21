let s:plugin_path = expand('<sfile>:p:h:h')
let s:prehtml = s:plugin_path.'/web/prehtml'
let s:lightstyle = s:plugin_path.'/web/lightstyle.css'
let s:midhtml = s:plugin_path.'/web/midhtml'
let s:posthtml = s:plugin_path.'/web/posthtml'

function MdBuild()
    let filename = substitute(@%, "md$", "html", "")
    silent execute '!marked --input ' @% ' --output tempxyz'
    silent execute '!cat ' s:prehtml s:lightstyle s:midhtml ' tempxyz ' s:posthtml '>' filename
    execute ':redraw!'
endfunction

function MdPreview()
    silent execute 'w'
    MdBuild()
    let filename = substitute(@%, "md$", "html", "")
    silent execute '!xdg-open ' filename
    execute ':redraw!'
endfunction

autocmd BufWritePost * call MdBuild()
