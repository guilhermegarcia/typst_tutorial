#import "@preview/arborly:0.3.2": tree
#import "@preview/eggs:0.3.0": *
#import abbreviations: ins, pl
#show: eggs

#set heading(numbering: "1.1")
#show link: set text(fill: blue.lighten(20%))
#show ref: set text(fill: orange.darken(20%))


// page adjustments
#set page(
  // fill: gray.lighten(80%),
  paper: "a4",
  // flipped: true,
  margin: 1in,
  header: align(center)[#smallcaps[this is a header]],
  numbering: "1 of 1",
  number-align: right,
)

// document metadata
#set document(
  title: "My Typst document",
  author: "Guilherme D. Garcia",
  description: "here",
  keywords: ("wd1", "wd2"),
  date: datetime.today(),
)

// text font, size, language and hyphenation
#set text(
  font: "Libertinus Sans",
  size: 10pt,
  fill: black,
  lang: "en",
  hyphenate: auto,
)

// paragraph adjustments (justify text)
#set par(
  justify: true,
  spacing: 2em,
  leading: 0.8em,
  first-line-indent: 2em,
)

// heading spacing
// #show heading: set block(above: 1.5em, below: 2em)
#set block(above: 2em, below: 2em)

// Code blocks
#show raw.where(block: true): it => {
  block(
    fill: luma(240),
    inset: 10pt,
    radius: 5pt,
    width: auto,

    it,
  )
}

#title("My Typst document")

= Introduction <sec-intro>

This is our text. This is *bold*, and this is _italics_. You can also do lists:

- Item 1
- Item 2

You can also do numbered lists:

+ Item 1
+ Item 2

A #link("https://typst.app")[link to Typst] goes here.

== Tables

We saw in @sec-intro that blah blah blah.

#figure(
  caption: [My Typst table],
  table(
    columns: (auto, auto),
    stroke: none,
    table.hline(stroke: 0.1em, start: 1),
    table.header([*Column 1*], [*Column 2*]),
    table.hline(stroke: 0.05em),
    "asdf", "asdf",
    table.hline(stroke: 0.1em, end: 1),
  ),
) <tbl-mytable>

== Figures

This is a typical citation in Typst @zsiga2024. Use the `#cite()` function for custom citation. For example, this #cite(<zsiga2024>, form: "prose"). See @tbl-mytable and @fig-pwd.

#figure(
  caption: [A prosodic word],
  image("word_example.png", width: 7cm),
) <fig-pwd>

= Code blocks

To create a code block, we simply use three back ticks (grave accents). See @codeblock-python.

#figure(
  caption: [A complex Python code block],
  supplement: "Code block",
  kind: "code",

  ```python
  print("Hello world!")

  ```,
) <codeblock-python>


= Syntax trees

#figure(
  supplement: "Syntax tree",
  caption: [A simple example],
  tree[TP
    [NP
    [N [this]]
    ]
    [VP
    [V [is]]
    [NP
    [D [a]]
    [N [wug]]
    ]
    ]
  ],
)

= Numbered examples

See example @pex.

#example[
  + - primer   s     gloss-ami
    - example  with  gloss-#pl.#ins
    'an/the example with glosses' #ex-label(<gl>)
  + \*example without glosses
  #ex-label(<pex>)
]

= Random text

#lorem(100)

#lorem(100)

#pagebreak()

// #bibliography("refs.bib", style: "apa", title: "References")
#bibliography("refs.yml", style: "apa", title: "References")


