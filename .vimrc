set ts=2
set sw=4
syntax on
set number

" Key mappings in INSERT mode
" Tired of lifting hand to hit ESC or having ctrl-[
imap ;; <Esc>

nmap gt :TlistOpen <CR>
nmap gc :TlistClose <CR>
let Tlist_Sort_Type = "name"

nmap gn :NERDTree <CR>
nmap gc :NERDTreeClose <CR>
nmap gf :NERDTreeFind <CR>

nmap gw :w <CR>

" Run Ruby unit tests with gT (for all) or gt (only test under
" cursor) in command mode
augroup RubyTests
  au!
  autocmd BufRead,BufNewFile *_test.rb,test_*.rb
    \ :nmap gt V:<C-U>!$HOME/.vim/bin/ruby-run-focused-unit-test 
    \ % <C-R>=line("'<")<CR>p <CR>|
    \ :nmap gT :<C-U>!ruby %<CR>
augroup END

