Red [
  author: "Nędza Darek"
  license: %license.md
  version: 0.0.1
]
do %../main.red

bl: [
  keep 'b 2
  keep 'b 3
  keep 'c 4
  keep 'c 5
]
map-to: func [bl init][
  cold/fun/into bl func [key value] [
    put collected key value
  ] init
]
foreach type reduce [block! paren! path! lit-path! set-path! get-path! hash!] [
  print "######"
  probe type
  probe map-to bl make type []

]
; ######
; block!
; [b 3 c 5]
; ######
; paren!
; (b 3 c 5)
; ######
; path!
; b/3/c/5
; ######
; lit-path!
; 'b/3/c/5
; ######
; set-path!
; b/3/c/5:
; ######
; get-path!
; :b/3/c/5
; ######
; hash!
; make hash! [b 3 c 5]
