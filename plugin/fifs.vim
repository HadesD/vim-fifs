if exists('g:loaded_fifs')
  finish
end
let g:loaded_fifs = 1

let g:fifs_mappings = {
      \ '<Esc>': ':AsyncStop<CR>:cclose<CR>',
      \ 'q': ':AsyncStop<CR>',
      \ 'o': '<CR>',
      \ 'O': '<CR>:wincmd b<CR>',
      \ 's': '<C-W><CR><C-W>H<C-W>b<C-W>J<C-W>t',
      \ 'S': '<C-W><CR><C-W>H<C-W>b<C-W>J<C-W>t:wincmd b<CR>',
      \ 'i': '<C-W><CR>',
      \ 'I': '<C-W><CR>:wincmd b<CR>',
      \ }

command! -bang -nargs=* -complete=file Fifs call fifs#doFind('grep -inr . -e', <q-args>)

nnoremap <silent> <C-F> :Fifs<CR>

