if exists('g:loaded_fifs')
  finish
end

let g:loaded_fifs = 1

command! -bang -nargs=* -complete=file Fifs call fifs#doFind('grep -inr . -e', <q-args>)

nnoremap <silent> <C-F> :Fifs<CR>

