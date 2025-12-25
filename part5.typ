#import "@preview/arborly:0.3.2": tree // HACK: NEW
#import "@preview/eggs:0.3.0": * // HACK: NEW
#import abbreviations: ins, pl // HACK: NEW
#show: eggs // HACK: NEW


#set heading(numbering: "1.1")
#show link: set text(fill: blue.lighten(20%))
#show ref: set text(fill: orange.darken(20%))

// page adjustments
#set page(
  paper: "a4",
  fill: blue.lighten(90%),
  margin: 1in,
  header: align(center)[#smallcaps[this is my header]],
  numbering: "1 of 1",
  number-align: right,
)

// document metadata
#set document(
  title: "My Typst document",
  author: "Guilherme D. Garcia",
  description: "Description goes here",
  keywords: ("word1", "word2", "word3"),
  date: datetime.today(),
)

// text font, size, etc.
#set text(
  font: "Libertinus Sans",
  size: 10pt,
  fill: blue.darken(40%),
  lang: "en",
  hyphenate: true,
)

// paragraph adjustments
#set par(
  first-line-indent: 2em,
  spacing: 2em,
  leading: 1.2em,
  justify: true,
)

// heading spacing
#show heading: set block(above: 1.5em, below: 1.5em)

#set heading(numbering: "1.1")
#show link: set text(fill: blue.lighten(20%))
#show ref: set text(fill: orange.darken(20%))

// HACK:
// Code block:
#show raw.where(block: true): it => {
  block(
    fill: luma(240),
    inset: 10pt,
    radius: 4pt,
    width: auto,
    it,
  )
}


#title("My Typst document")

= Phonokit

== IPA transcription

== Features and rules

== Sonority

== Prosody

== Optimality Theory

== MaxEnt
