" Figure out which type of hilighting to use for html.
function jinja#SelectHTML(maxLine)
  let lastLine = line('$')
  if lastLine > a:maxLine
	lastLine = a:maxLine
  endif
  let lastLine += 1
  let n = 1
  while n < lastLine
    " check for jinja
    if getline(n) =~ '{{.*}}\|{%-\?\s*\(end.*\|extends\|block\|macro\|set\|if\|for\|include\|trans\)\>'
      set filetype=jinja.html
      return
    endif
    let n += 1
  endwhile
endfunction
