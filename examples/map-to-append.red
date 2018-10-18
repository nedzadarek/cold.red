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
map-to-append: func [bl init][
  cold/fun/into bl func [key value] [
    either collected/:key [
      append collected/:key value
    ][
      append collected key
      append/only collected reduce [value]
    ]
  ] init
]
foreach type reduce [block! paren! path! lit-path! set-path! get-path! hash!] [
  print "######"
  probe type
  probe map-to-append bl make type []
]
; ######
; block!
; [b [2 3] c [4 5]]
; ######
; paren!
; (b [2 3] c [4 5])
; ######
; path!
; b/[2 3]/c/[4 5]
; ######
; lit-path!
; 'b/[2 3]/c/[4 5]
; ######
; set-path!
; b/[2 3]/c/[4 5]:
; ######
; get-path!
; :b/[2 3]/c/[4 5]
; ######
; hash!
; make hash! [b [2 3] c [4 5]]
; == make hash! [b [2 3] c [4 5]]
