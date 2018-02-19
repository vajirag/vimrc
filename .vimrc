" .vimrc modified by Vajira

" show line no at startup and ability to toggle
set number
:nmap <C-N><C-N> :set invnumber<CR>

:nmap <C-M> :NERDTreeToggle<CR>

execute pathogen#infect()
syntax on
filetype plugin indent on

set colorcolumn=100

" force .vimrc to source file from current dir
set exrc
set secure

set hlsearch
set laststatus=2
set statusline+=%#PmenuSel#
set statusline+=file
set statusline+=\ %l
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\

set tabstop=3
set shiftwidth=3
set expandtab

function! StatuslineGit()
   let l:branchname = GetBranch()
   return strlen(l:branchname) > 0?' '.l:branchname.' ':''
endfunction

" set statusline+=%{StatuslineGit()}
"
"
nnoremap m1 :normal! yyddkmm{p'm<cr>
nnoremap h1 :normal! yypVr=k<cr>
nnoremap h2 :normal! yypVr-k<cr>

