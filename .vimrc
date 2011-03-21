set ts=2
set sw=2
syntax on
set number

nmap g; :TlistOpen <CR>
nmap gl :TlistClose <CR>
let Tlist_Sort_Type = "name"
let Tlist_Use_Right_Window = 1

nmap gd :NERDTreeToggle<CR>
nmap gs :NERDTreeFind<CR>
nmap gw :w <CR>
nmap gq :q <CR>
nmap gh :wq <CR>
nmap gn :set nonumber! <CR>
nmap gb <leader>be
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Set encryption to blowfish
set cryptmethod=blowfish

" Run Ruby unit tests with gT (for all) or gt (only test under
" cursor) in command mode
"augroup RubyTests
"  au!
"  autocmd BufRead,BufNewFile *_test.rb,test_*.rb
"    \ :nmap gt V:<C-U>!$HOME/.vim/bin/ruby-run-focused-unit-test 
"    \ % <C-R>=line("'<")<CR>p <CR>|
"    \ :nmap gT :<C-U>!ruby %<CR>
"augroup END

