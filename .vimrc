
"       _                         _        
"      | |                       | |       
"   ___| |__  _ __ ___   ___  ___| | _____ 
"  / __| '_ \| '_ ` _ \ / _ \/ _ \ |/ / __|
" | (__| |_) | | | | | |  __/  __/   <\__ \
"  \___|_.__/|_| |_| |_|\___|\___|_|\_\___/
                                          
" Custom .vimrc for cbmeeks
" cbmeeks@gmail.com

" ==============================================================================
"   Basic config
" ==============================================================================
syntax on

set laststatus=2
set encoding=utf-8
set cmdheight=1
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set number
set numberwidth=4               " line gutter width
set scrolloff=8                 " scroll 8 lines from top/bottom
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set mouse=a

" ==============================================================================
"   Make adjusting splits more user friendly
" ==============================================================================
set splitbelow splitright
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>




set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" ==============================================================================
"   PLUGINS
" ==============================================================================
call plug#begin('~/.vim/plugged')

" https://github.com/neoclide/coc.nvim
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'jiangmiao/auto-pairs'

" https://github.com/NLKNguyen/papercolor-theme
"Plug 'NLKNguyen/papercolor-theme'

" https://github.com/sainnhe/gruvbox-material
Plug 'sainnhe/gruvbox-material'

" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" https://github.com/vim-utils/vim-man
Plug 'vim-utils/vim-man'

" https://github.com/alvan/vim-closetag                                         
Plug 'alvan/vim-closetag'    

" https://github.com/vifm/vifm.vim
Plug 'vifm/vifm.vim'

" https://github.com/itchyny/lightline.vim                                      
Plug 'itchyny/lightline.vim'                                                  
  
" https://github.com/prettier/vim-prettier
" post install (yarn install | npm install) then load plugin only for editing 
" supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'

" https://github.com/lewis6991/gitsigns.nvim
Plug 'lewis6991/gitsigns.nvim'

" https://github.com/nvim-telescope/telescope.nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()


" ==============================================================================
"   Theme
" ==============================================================================
"set background=dark
"colorscheme PaperColor
"let g:airline_theme='term'

set background=dark
set termguicolors
colorscheme gruvbox-material

" ==============================================================================
"   Prettier
" ==============================================================================
" when running at every change you may want to disable quickfix
" let g:prettier#quickfix_enabled = 0
" autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync


" ==============================================================================
"   Close Tags                                                                  
" ==============================================================================
                                                                                 
" filenames like *.xml, *.html, *.xhtml, ...                                    
" These are the file extensions where this plugin is enabled.                   
"                                                                               
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.ts,*.jsx'             
                                                                                
" filenames like *.xml, *.xhtml, ...                                            
" This will make the list of non-closing tags self-closing in the specified files.
"                                                                               
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'                           
                                                                                
" Shortcut for closing tags, default is '>'                                     
"                                                                               
let g:closetag_shortcut = '>'   



" ==============================================================================
"   COC Config
" ==============================================================================
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-json',
    \ 'coc-clangd'
    \]


" ==============================================================================
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" ==============================================================================
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction



" ==============================================================================
"   OTHER MAPPINGS
" ==============================================================================
inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

" Map moving lines around
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv



