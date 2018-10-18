Red [
  author: "Nędza Darek"
  license: %license.md
  version: 0.0.1
]
do %../main.red

last: func [bl] [
  cold/fun/into/as [
    foreach w bl [
      element w
    ]
  ] func [v] [
    collected: v
  ] (first bl) element
]

last [1 2 3]
; == 3
last "fooaer"
; == #"r"
