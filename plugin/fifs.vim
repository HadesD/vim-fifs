if exists('g:loaded_fifs')
  finish
end
let g:loaded_fifs = 1

let g:fifs_mappings = {
      \ '<Esc>': ':AsyncStop<CR>:cclose<CR>',
      \ 'q': ':AsyncStop<CR>',
      \ 'o': '<CR>',
      \ 's': '<C-W><CR><C-W>H<C-W>b<C-W>J<C-W>t',
      \ 'i': '<C-W><CR>',
      \ }

command! -bang -nargs=* -complete=file Fifs call fifs#doFind('grep -inr . -e', <q-args>)

nnoremap <silent> <C-F> :Fifs<CR>

