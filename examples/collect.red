Red [
  author: "Nędza Darek"
  license: %license.md
  version: 0.0.1
]
do %../main.red

part: next next [1 2 3 4 5]
; == [3 4 5]
cold/into [keep 33] part
; == [3 4 5 33]
head part
; == [1 2 3 4 5 33]
 
