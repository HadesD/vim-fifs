if exists('g:autoloaded_vim_fifs')
  finish
endif
let g:autoloaded_vim_fifs = 1

let s:async_cmd = 'AsyncRun'
" if has('unix')
"   let s:shell = 'sh'
" elseif has('win32')
"   let s:shell = 'cmd'
" endif

function! fifs#doFind(cmd, pattern)
  let l:pattern = a:pattern
  if empty(l:pattern)
    let pattern = input('Keyword to search: ', expand('<cword>'))
  endif
  if empty(l:pattern)
    echo "Pattern is empty."
    return
  endif

  let l:cmd = printf(a:cmd, l:pattern)

  " if exists('s:shell')
    " let jobid = async#job#start([s:shell, '-c', l:cmd], {})
  " else
    silent exe s:async_cmd l:cmd
  " endif

  execute 'botright copen'

  " Mapping
  for key_map in items(g:fifs_mappings)
    execute printf(
          \ "nnoremap <buffer> <silent> %s %s",
          \ get(key_map, 0), get(key_map, 1)
          \ )
  endfor
endfunction

