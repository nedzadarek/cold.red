Red [
  author: "Nędza Darek"
  license: %license.md
  version: 0.0.1
]
do %../main.red

; https://commitlogs.com/2016/09/10/scala-fold-foldleft-and-foldright/
; ######################################################
; Write the foldLeft equivalent of List.length.
; def len(list: List[Any]): Int = list.foldLeft(0) { (count, _) => count + 1 }
; ###############################################################
length: func [bl] [
  cold/fun/into/as [
    foreach _ bl [
      count
    ]
  ] does [
    collected: collected + 1
  ] 0 count
]
length [1 2 3]
; == 3
length "fooaer"
; == 6
