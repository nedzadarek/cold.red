Red [
  author: "Nędza Darek"
  license: %license.md
  version: 0.0.1
]
do %../main.red

cold/fun/into [
  keep 'a 1
  keep 'b 2
  keep 'a 3
] func [
  key value
] [
  collected/(key): value
] #()
; == #(
;     a: 3
;     b: 2
; )
