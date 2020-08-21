let s:plugin_path = expand('<sfile>:p:h:h')
let s:prehtml = s:plugin_path.'/web/prehtml'
let s:lightstyle = s:plugin_path.'/web/lightstyle.css'
let s:midhtml = s:plugin_path.'/web/midhtml'
let s:posthtml = s:plugin_path.'/web/posthtml'

function MDbuild()
    if &modified
        silent execute 'w'
    endif
    let original_file = fnameescape(@%)
    let filename = fnameescape(substitute(@%, ".md", ".html", ""))
    silent execute '!mkdir -p html'
    silent execute '!marked --input ' original_file ' --output tempxyz'
    silent execute '!cat ' s:prehtml s:lightstyle s:midhtml ' tempxyz ' s:posthtml '> html/'.filename
    silent execute '!rm tempxyz'
    execute ':redraw!'
endfunction

function MDpreview()
    MDbuild()
    let filename = substitute(@%, "md$", "html", "")
    silent execute '!xdg-open ' filename
    execute ':redraw!'
endfunction

