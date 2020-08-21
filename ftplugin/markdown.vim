function MDbuild()
    let filename=@%
    let filename = substitute(filename, "md$", "html", "")
     execute '!marked --input ' @% ' --output ' filename
     execute '!cat ~/.vim/plugged/mdbuild/prehtml' filename '~/.vim/plugged/mdbuild/posthtml > final.html'
    execute ':redraw!'
endfunction

autocmd InsertLeave * call MDbuild()
