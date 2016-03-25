function! TerraformFolds()
  let thisline = getline(v:lnum)
  if match(thisline, '^resource') >= 0
    return ">1"
  elseif match(thisline, '^provider') >= 0
    return ">1"
  elseif match(thisline, '^module') >= 0
    return ">1"
  elseif match(thisline, '^variable') >= 0
    return ">1"
  else
    return "="
  endif
endfunction
setlocal foldmethod=expr
setlocal foldexpr=TerraformFolds()
setlocal foldlevel=0

function! TerraformFoldText()
  let foldsize = (v:foldend-v:foldstart)
  return getline(v:foldstart).' ('.foldsize.' lines)'
endfunction
setlocal foldtext=TerraformFoldText()

"inoremap <space> <C-O>za
nnoremap <space> za
onoremap <space> <C-C>za
vnoremap <space> zf

