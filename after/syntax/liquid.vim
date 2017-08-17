if exists("b:current_syntax")
  unlet b:current_syntax
endif

syn include @JSON syntax/json.vim
syn region nestedJSON start=+{% schema %}+ keepend end=+{% endschema %}+ contains=@JSON
