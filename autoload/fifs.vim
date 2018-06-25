function! fifs#doFind(cmd, pattern)
  let l:pattern = a:pattern
  if empty(l:pattern)
    let pattern = input('Enter your keyword: ')
  endif
  if empty(l:pattern)
    echo "\nPattern is empty."
    return
  endif
  execute printf('AsyncRun %s %s', a:cmd, l:pattern)
  execute 'botright copen'
endfunction

