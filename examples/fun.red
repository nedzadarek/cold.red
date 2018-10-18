Red [
  author: "Nędza Darek"
  license: %license.md
  version: 0.0.1
]
do %../main.red

cold/fun[keep 2 keep 3] func [v] [append collected v]
; == [2 3]
cold/fun[keep 2 keep 3] func [v] [append collected (v + 1)]
; == [3 4]
