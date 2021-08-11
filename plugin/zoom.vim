if exists('g:loaded_zoom')
  finish
endif
let g:loaded_zoom = 1

nnoremap <silent> <Plug>(zoom-toggle) :call zoom#toggle()<CR>

if !hasmapto('<Plug>(zoom-toggle)')
  if empty($TMUX)
    nmap <Leader>m <Plug>(zoom-toggle)
  else
    nmap <Leader>z <Plug>(zoom-toggle)
  endif
endif
