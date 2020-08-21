# mdbuild
mdbuild is a markdown-to-HTML conversion plugin for vim. 

### Requirements
- python (for local HTTP server)
- [marked](https://github.com/markedjs/marked)(markdown parser)

## Usage
- `:call MDbuild()` to convert current file into HTML file.
- `:call MDpreview()` to open the generated HTML file in the browser.

## Options
- Add `autocmd BufWritePost * call MdBuild()` to `~/.vim/ftplugin/markdown.vim` to auto-generate HTML when markdown is saved.

### Pending
- Start python server using vim.

### Credits
- [marked](https://github.com/markedjs/marked): parses markdown to HTML
- [live.js](https://livejs.com/): automatically refreshes the HTML page when opened in the browser (with a local server)

### Self-Promotion
Like mdbuild? Follow me on [Github](https://github.com/kgrewal2/) or connect on [LinkedIn](https://www.linkedin.com/in/ksgrewal/)
