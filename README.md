# MDbuild
MDbuild is a markdown-to-HTML conversion plugin for vim. 

### Requirements
- python (for local HTTP server)
- [marked](https://github.com/markedjs/marked)(markdown parser)

### Usage
- `:call MDbuild()` to convert current file into HTML file.
- `:call MDpreview()` to open the generated HTML file in the browser.

#### Auto-refresh HTML
- Open another terminal. (Do not close it while you are working with the file)
- Run `python -m http.server`
- Open the given url (generally `0.0.0.0:8000`) in the preferred browser.
- Go to the generated html file.

Now the HTML file will be automatically refreshed when you call `MDbuild()

### Options
- Add `autocmd BufWritePost * call MDbuild()` to `~/.vim/ftplugin/markdown.vim` to auto-generate HTML when markdown is saved.

### Pending
- Start python server using vim.
- Markdown-friendly mappings

### Credits
- [marked](https://github.com/markedjs/marked): parses markdown to HTML
- [live.js](https://livejs.com/): automatically refreshes the HTML page when opened in the browser (with a local server)

### Self-Promotion
Like mdbuild? Follow me on [Github](https://github.com/kgrewal2/) or connect on [LinkedIn](https://www.linkedin.com/in/ksgrewal/)
