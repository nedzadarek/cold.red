Red [
  author: "Nędza Darek"
  license: %license.md
  version: 0.0.1
]
cold: func [
    "COLD = Collect + fOLD"
    body [block!] "Block to evaluate"
    /into {Insert into a buffer instead}
    collected "The buffer series (modified)"
    /fun "use your own function" f
    /as "*name* to use instead of *keep*" 'fun-name
    /local rule pos
][
    unless collected [collected: make block! 16]
    unless fun [keep: func [v /only] [either only [append/only collected v] [append collected v] v] ]
    if fun [
      keep: func spec-of :f bind (body-of :f) (context? 'collected)
    ]

    unless as [
      set 'fun-name 'keep
    ]
    if as [
      set fun-name :keep
    ]
    keep-rule: append copy [] to-lit-word fun-name
    parse body rule: [
        any [pos: [keep-rule | 'collected] (pos/1: bind pos/1 fun-name ) | any-string! | binary! | into rule | skip]
    ]
    do body
    either into [collected] [head collected]
]
