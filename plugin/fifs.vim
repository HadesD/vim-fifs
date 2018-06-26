if exists('g:loaded_fifs')
  finish
end
let g:loaded_fifs = 1

if !has('g:fifs_cmd')
  if executable('ack')
    let g:fifs_cmd = 'ack --column -s -H --nopager --nocolor --nogroup'
  elseif executable('ag')
    let g:fifs_cmd = 'ag --nogroup --noheading --column --line-numbers'
  elseif executable('grep')
    let g:fifs_cmd = 'grep --color=never -inr . -e'
  endif
endif

let g:fifs_mappings = {
      \ '<Esc>': ':AsyncStop<CR>:cclose<CR>',
      \ 'q': ':AsyncStop<CR>',
      \ 'o': '<CR>',
      \ 'O': '<CR><C-W>p',
      \ 's': '<C-W><CR><C-W>L',
      \ 'S': '<C-W><CR><C-W>H<C-W>b<C-W>J<C-W>t<C-W>p',
      \ 'i': '<C-W><CR>',
      \ 'I': '<C-W><CR><C-W>p',
      \ 't': '<CR><C-W>T',
      \ }

command! -bang -nargs=* -complete=file Fifs call fifs#doFind(g:fifs_cmd, <q-args>)

nnoremap <silent> <C-F> :Fifs<CR>

