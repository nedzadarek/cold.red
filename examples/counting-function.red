Red [
  author: "Nędza Darek"
  license: %license.md
  version: 0.0.1
]
do %../main.red

counting: func [bl] [
  cold/fun/into/as bl does [
    collected: collected + 1
  ] 0 count
]

counting [count count]
; == 2
counting [
  print 2 + 2
  count
  print 42
  count
]
; 4
; 42
; == 2
counting [foreach w [1 3 6 8] [count]]
; == 4
