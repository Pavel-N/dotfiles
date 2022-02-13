" ~/.config/nvim/init.vim" 
" Pavel Novák


" Enable Syntax Highlighting
syntax on
" Enabke syntax highlighting for NASM code
autocmd BufNew,BufRead *.asm set ft=nasm

" === Key Remaping ===

" Backspace deletes char on left in normal mode
nmap <BS> i<BS><Esc>`^

" Ctrl + Del deletes next word
imap <M-d> <Esc> cw

" Alt + Shift + j duplicates line down
nnoremap <M-S-j> mzyyp`z
inoremap <M-S-j> <Esc> mzyyp`zi

" Alt + Shift + k duplicates line up 
nnoremap <M-S-k> mzyyP`z 
inoremap <M-S-k> <Esc> mzyyP`zi

" Jump words
" nnoremap <C-h> <C-Left>
inoremap <C-h> <C-Left>
" nnoremap <C-l> <C-Right>
inoremap <C-l> <C-Right>

" Key next to l (ů) is :
nnoremap ů :

" Exit from terminal using Esc
tnoremap <Esc> <C-\><C-n>


" === Plugins ===

" Plugins Source
source $HOME/.config/nvim/vim-plug/plugins.vim

" NERDTree
map <C-t> :NERDTreeToggle <CR>

" PaperColor Theme
" set background=dark
set laststatus=2
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 1,
  \       'override' : {
  \         'color05' : ['#909090', ''],
  \         'linenumber_fg' : ['#909090', '']
  \       }
  \     }
  \   }
  \ }
colorscheme PaperColor


" === Other ===

" Display comments as italics
highlight Comment cterm=italic


" Tabs = 4 Spaces
set expandtab
set tabstop=4
set shiftwidth=4


" Hybrid Line Numbering
set number
set relativenumber


" Set Cursor to Vertical
set guicursor=n-v-c:ver25-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:ver20,o:ver20


