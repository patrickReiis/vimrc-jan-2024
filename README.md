# vimrc-nov-2022
My current vimrc as of nov 19, 2022.

## Note
I use some [coc extensions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions) that are not visible in the vimrc file.

The ones I currently use are:
- [coc-highlight](https://github.com/neoclide/coc-highlight)
- [coc-volar](https://github.com/yaegassy/coc-volar)
- [coc-json](https://github.com/neoclide/coc-json)
- [coc-vetur](https://github.com/neoclide/coc-vetur)

## Warn
- Some of my coc extensions and plugins installed collide with each other, so you may have some problems when you want to auto complete, but I'm used to it for now so I don't care
- I have a lot plugins and extensions so it makes my vim quite slow, if I just want to open big file only for reading or something I use nvim (of which I don't write programs in nor have installed plugins in it)

Aside from that I like my vim settings, some useful commands that I use frequently are:

### folding
za - toggle folding 1 level
zA - toggle folding all levels
zm - folding close 1 level
zM - folding close all levels
zr - folding open 1 level
zR - folding open all levels
