// package imports
#import "@preview/lovelace:0.3.0": *
#import "@preview/muchpdf:0.1.1": muchpdf

// own imports
#import "../customization/great-theorems-customized.typ": *


= Example Chapter <chap:example>

#lorem(50)

== Example Use of the Theorem Environment <sec:example_theorem>
 An example citation is @Cooley65, then we also see the bibliography at the end of the document.

Example definition in @def:Example. This and all the following are examples using `great-theorems`.
#definition(title: "Example Definition")[
  This is how a definition looks like in this template.
  To also have a definition we state
  $
  e = sum_(k=0)^oo 1/k!.
  $
]<def:Example>

#example(title: "Example Example")[
  The exponential function at $a in RR$ can be expressed as
  $
  e ^a = sum_(k=0)^oo a^k/k!.
  $
]

#theorem[
  The number $e$ is irrational
]
#proof[
  The proof that $e$ is irrational is left to the reader.
]


#remark(title: "Further Theorem Environments")[
  For a complete list of theorem environments, have a look at `customization/great-theorems-customization.typ`. There we can also change colors, other preferences, or add more environments if needed.
]
#lemma(title: "what about " + $sqrt(2)$ + "?")[
  We state $sqrt(2) in RR without QQ$.
]
#proof[
  Trivial, but the proof is not done yet.

  To demonstrate the breaking behavior we add another

  #lorem(150)
]

== Example Equations <sec:example_equations>
Here we will have some equations. E.g.
$
(a + b)^2 = a^2 + 2a b + b^2
$<eq:first_binom>
which is labeled and therefore numbered. We can also reference it: @eq:first_binom.
In the following, we have a multiline equation to demonstrate how `equate` handles it (if activated).
$
15^2 &= (10 + 5)^2 #<eq:sub1>\
&= 10^2 + 2 * 10 * 5 + 5^2 #<eq:sub2>\
&= 100 + 100 + 25 \
&= 225.
$<eq:multi_line_binom>

If `equate` is activated by passing `equate-settings` to the `template`, we can reference a subequation @eq:sub1
or the whole equation @eq:multi_line_binom.
Equations that are not of the same importance can be inline, e.g. $(a + b) (a - b) = a^2 - b^2$ or unlabeled
$
(a - b)^2 = a^2 - 2a b + b^2.
$
To make sure we do not break inline equations, we have this long equation$a^2 + b^2 = c^2; a,b,c in RR subset.not QQ := {m/n : m,n in ZZ} subset.not ZZ subset.not NN_0 := NN union {0}.$ As we see, it works.

=== Example Algorithm, Table and Figure <sec:example_algo_table_and_fig>

Here we have a complicated procedure in @algo:example_algo (using `lovelace`) which we could elaborate on for pages
#figure(
  kind: "algorithm",
  supplement: [Algorithm],
  pseudocode-list(booktabs: true, numbered-title: [#smallcaps[Example Algorithm]])[
    - Input: $A, B, C$
    + *for* $i in {A,B,C}$ #v(1mm)
      + do very fancy stuff
      + #line-label(<line:stopping>)*if* motivation is lost: *break*

    + *end*
  ],
)<algo:example_algo>

Because we do not want an empty list of figures, we can add the logos from the cover page once again in @fig:example
#figure(
  grid(
    columns: 2,     // 2 means 2 auto-sized columns
    gutter: 2mm,    // space between columns
    image("../images/logo_placeholder.svg", width: 90%), // first image
    image("../images/logo_placeholder.svg", width: 90%), // second image
  ),
  caption: "Two beautiful images."
)<fig:example>

#lorem(20)

In @table:irrational_numbers we compare some irrational numbers, my favourite one is marked in green.

#figure(
  caption: "Some irrational numbers.",
  table(
  columns: 2,
  stroke: none,
    [], table.vline(stroke: .6pt),[approx. value],
    table.hline(stroke: .6pt),
    [$sqrt(2)$], [#calc.round(calc.sqrt(2), digits: 2)],
    [$e$], [#calc.round(calc.exp(1), digits: 2)],
    [$pi$], table.cell(fill:green)[#calc.round(calc.pi, digits: 2)],
)
)<table:irrational_numbers>

#lorem(20)

@table:sample_table is a Three-Line Table Example.


#show figure.caption: it => {
  set align(left)
  set text(size: 9pt)
  it
}
#figure(
  caption: [
    A sample table demonstrating various data points and their relationships.
    This table structure is useful for presenting comparative data clearly.
  ],
  table(
    columns: (2fr, 2fr, 2fr, 2fr),
    align: (left, center, center, center),
    stroke: none,
    table.hline(stroke: 1.0pt),
    [*Header 1*], [*Header 2*], [*Header 3*], [*Header 4*],
    table.hline(stroke: 0.6pt),
    [Category A], [Data Point 1A], [Data Point 2A], [Description A],
    [Category B], [Data Point 1B], [Data Point 2B], [Description B],
    [Category C], [Data Point 1C], [Data Point 2C], [Description C],
    [Category D], [Data Point 1D], [Data Point 2D], [Description D],
    [Category E], [Data Point 1E], [Data Point 2E], [Description E],
    table.hline(stroke: 1.0pt),
  )
)<table:sample_table>

#lorem(20)

@fig:example is a pdf image.
#figure(
  // The muchpdf function reads a PDF. If you don't have it, you might need to install a package.
  // The call below assumes the PDF has its own bounding box.
  muchpdf(
    read("../images/logo_placeholder.pdf", encoding: none),
    width: 30%
  ),
  caption: [
    An example diagram included from an external PDF file. This method is
    ideal for including complex vector graphics or diagrams created in other
    software. The adaptive display ensures optimal presentation while maintaining
    the visual integrity of the original graphic.
  ]
)<fig:sample_pdf_figure>
