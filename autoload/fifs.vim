function! fifs#doFind(cmd, pattern)
  if empty(a:pattern)
    echo 'No pattern found.'
    return
  endif
  echo 'Searching pattern: ' . a:pattern
endfunction

