Red [
  author: "Nędza Darek"
  license: %license.md
  version: 0.0.1
]
do %../main.red

cold/fun/into [
  keep
  keep
] does [
  collected: collected + 1
] 0
; == 2
