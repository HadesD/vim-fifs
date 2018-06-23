if exists('g:loaded_fifs')
  finish
end

let g:loaded_fifs = 1

command! Fifs call fifs#doFind('grep -inr . -e', <q-args>)

