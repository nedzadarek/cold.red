Red [
  author: "Nędza Darek"
  license: %license.md
  version: 0.0.1
]
do %../main.red

tree: [
  left: [
    left: leaf
    value: 0
    right: leaf
  ]
  value: 1
  right: [
    left: [
      left: leaf
      value: 2
      right: leaf
    ]
    value: 3
    right: leaf
  ]
]
pre-order: func [tree][
  unless tree = 'leaf [
    keep tree/value
    pre-order tree/left
    pre-order tree/right
  ]
]
cold[
  pre-order tree
]
; == [1 0 3 2]
