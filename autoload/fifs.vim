function! fifs#doFind(cmd, pattern)
  let l:pattern = a:pattern
  if empty(l:pattern)
    let pattern = input('Keyword to search: ', expand('<cword>'))
  endif
  if empty(l:pattern)
    echo "Pattern is empty."
    return
  endif

  " if has('g:asyncrun_support')
    execute printf('AsyncRun %s "%s" --color=never', a:cmd, l:pattern)
  " else
    " execute printf('Dispatch %s "%s"', a:cmd, l:pattern)
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

