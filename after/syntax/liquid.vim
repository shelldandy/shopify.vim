if exists("b:current_syntax")
  unlet b:current_syntax
endif

syn include @JSON syntax/json.vim

syn region nestedJSON
  \ matchgroup=liquidDelimiter
  \ start="{% schema %}"
  \ keepend
  \ end="\n{% endschema %}"me=s-2
  \ contains=@JSON
