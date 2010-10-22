set ts=2
set sw=2
syntax on
set number

nmap g; :TlistOpen <CR>
nmap gl :TlistClose <CR>
let Tlist_Sort_Type = "name"

nmap gf :NERDTreeToggle<CR>
nmap ga :NERDTreeFind<CR>
nmap gb :ls <CR>

nmap gw :w <CR>
nmap gq :q <CR>
nmap gh :wq <CR>
nmap gn :set nonumber! <CR>

" Run Ruby unit tests with gT (for all) or gt (only test under
" cursor) in command mode
augroup RubyTests
  au!
  autocmd BufRead,BufNewFile *_test.rb,test_*.rb
    \ :nmap gt V:<C-U>!$HOME/.vim/bin/ruby-run-focused-unit-test 
    \ % <C-R>=line("'<")<CR>p <CR>|
    \ :nmap gT :<C-U>!ruby %<CR>
augroup END

