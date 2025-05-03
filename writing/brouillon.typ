// tables.typ

#set page(
  width: 210mm,
  height: 297mm,
  margin: 2cm,
)

#set document(
  title: "Simulation Results and Welfare Gains",
  author: "Ali Benramdane",
  date: auto
)


= Simulation Results

This document summarizes the main simulated moments and welfare comparisons across different model specifications evaluated in the sovereign default framework with climate risk.

== Risk-Neutral Models
#include "../output/group_sim_RN.typ"

== Risk-Averse Models
#include "../output/group_sim_RA.typ"
== Welfare Gains

Below are the consumption-equivalent welfare gains (in %) for alternative model specifications relative to their respective benchmark.

#include "../output/welfare_gains.typ"

=== Simulation Summary: bench_RA

= Sample Table Test

This is a valid Typst table with two columns:

#show figure: set block(breakable: true)
#figure( // start figure preamble
  
  kind: "tinytable",
  supplement: "Table", // end figure preamble

block[ // start block

#let nhead = 1;
#let nrow = 17;
#let ncol = 7;

  #let style-array = ( 
    // tinytable cell style after
(pairs: ((0, 0), (0, 1), (0, 2), (0, 3), (0, 4), (0, 5), (0, 6), (0, 7), (0, 8), (0, 9), (0, 10), (0, 11), (0, 12), (0, 13), (0, 14), (0, 15), (0, 16), (0, 17),), align: left,),
(pairs: ((1, 0), (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12), (1, 13), (1, 14), (1, 15), (1, 16), (1, 17), (2, 0), (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10), (2, 11), (2, 12), (2, 13), (2, 14), (2, 15), (2, 16), (2, 17), (3, 0), (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8), (3, 9), (3, 10), (3, 11), (3, 12), (3, 13), (3, 14), (3, 15), (3, 16), (3, 17), (4, 0), (4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8), (4, 9), (4, 10), (4, 11), (4, 12), (4, 13), (4, 14), (4, 15), (4, 16), (4, 17), (5, 0), (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (5, 7), (5, 8), (5, 9), (5, 10), (5, 11), (5, 12), (5, 13), (5, 14), (5, 15), (5, 16), (5, 17), (6, 0), (6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6), (6, 7), (6, 8), (6, 9), (6, 10), (6, 11), (6, 12), (6, 13), (6, 14), (6, 15), (6, 16), (6, 17),), align: center,),
  )

  // tinytable align-default-array before
  #let align-default-array = ( left, left, left, left, left, left, left, ) // tinytable align-default-array here
  #show table.cell: it => {
    if style-array.len() == 0 {
      it 
    } else {
      let tmp = it
      for style in style-array {
        let m = style.pairs.find(k => k.at(0) == it.x and k.at(1) == it.y)
        if m != none {
          if ("fontsize" in style) { tmp = text(size: style.fontsize, tmp) }
          if ("color" in style) { tmp = text(fill: style.color, tmp) }
          if ("indent" in style) { tmp = pad(left: style.indent, tmp) }
          if ("underline" in style) { tmp = underline(tmp) }
          if ("italic" in style) { tmp = emph(tmp) }
          if ("bold" in style) { tmp = strong(tmp) }
          if ("mono" in style) { tmp = math.mono(tmp) }
          if ("strikeout" in style) { tmp = strike(tmp) }
        }
      }
      tmp
    }
  }

  #align(center, [

  #table( // tinytable table start
    columns: (auto, auto, auto, auto, auto, auto, auto),
    stroke: none,
    align: (x, y) => {
      let sarray = style-array.filter(a => "align" in a)
      let sarray = sarray.filter(a => a.pairs.find(p => p.at(0) == x and p.at(1) == y) != none)
      if sarray.len() > 0 {
        sarray.last().align
      } else {
        left
      }
    },
    fill: (x, y) => {
      let sarray = style-array.filter(a => "background" in a)
      let sarray = sarray.filter(a => a.pairs.find(p => p.at(0) == x and p.at(1) == y) != none)
      if sarray.len() > 0 {
        sarray.last().background
      }
    },
 table.hline(y: 1, start: 0, end: 7, stroke: 0.05em + black),
 table.hline(y: 11, start: 0, end: 7, stroke: 0.05em + black),
 table.hline(y: 18, start: 0, end: 7, stroke: 0.1em + black),
 table.hline(y: 0, start: 0, end: 7, stroke: 0.1em + black),
    // tinytable lines before

    table.header(
      repeat: true,
[ ], [OLS (Log \+ 1)], [OLS (Log \+ 1) \- Aug.], [OLS], [OLS \- Aug.], [Poisson], [Poisson \- Aug.],
    ),

    // tinytable cell content after
[ln Distance], [\-2.241\*\*\*], [\-2.034\*\*\*], [\-1.884\*\*\*], [\-1.689\*\*\*], [\-0.857\*\*\*], [\-0.749\*\*\*],
[], [(0.030)], [(0.033)], [(0.021)], [(0.024)], [(0.028)], [(0.031)],
[Border], [1.017\*\*\*], [0.728\*\*\*], [1.088\*\*\*], [0.841\*\*\*], [0.498\*\*\*], [0.419\*\*\*],
[], [(0.152)], [(0.153)], [(0.108)], [(0.107)], [(0.068)], [(0.065)],
[Common Language], [], [1.216\*\*\*], [], [0.922\*\*\*], [], [0.053],
[], [], [(0.064)], [], [(0.046)], [], [(0.062)],
[Common Currency], [], [0.402\*\*], [], [0.300\*\*], [], [0.011],
[], [], [(0.152)], [], [(0.100)], [], [(0.079)],
[FTA\/WTO], [], [0.336\*\*\*], [], [0.443\*\*\*], [], [0.409\*\*\*],
[], [], [(0.058)], [], [(0.042)], [], [(0.054)],
[Num.Obs.], [31150], [31150], [28563], [28563], [31150], [31150],
[R2], [0.679], [0.684], [0.742], [0.747], [0.941], [0.944],
[R2 Adj.], [0.675], [0.680], [0.738], [0.743], [0.941], [0.944],
[FE: iso_o], [X], [X], [X], [X], [X], [X],
[FE: iso_d], [X], [X], [X], [X], [X], [X],
[F\-test], [0.000], [0.000], [0.000], [0.000], [NA], [NA],
[Overdispersion], [NA], [NA], [NA], [NA], [380675763.180], [368666169.904],

    // tinytable footer after

    table.footer(
      repeat: false,
      // tinytable notes after
    table.cell(align: left, colspan: 7, text([\+ p \< 0.1, \* p \< 0.05, \*\* p \< 0.01, \*\*\* p \< 0.001])),
    ),
    

  ) // end table

  ]) // end align

] // end block
) // end figure






#show figure: set block(breakable: true)

#figure(
  kind: "table",
  supplement: "Table",

block[
  #table(
    columns: (auto, auto),
    align: (x, y) => if x == 0 { left } else { center },
    stroke: none,
    inset: 6pt,

    // Manual horizontal lines (top and bottom)
    table.hline(y: 0, start: 0, end: 2, stroke: 0.8pt),
    table.hline(y: 1, start: 0, end: 2, stroke: 0.8pt),
    table.hline(y: 7, start: 0, end: 2, stroke: 0.8pt),

    table.header(
      [*Statistic*], [*Value*]
    ),

    // Data rows
    [*Average Spread (bps)*], [534.5],
    [*Debt/GDP*], [0.49],
    [*Default Frequency*], [0.042],
    [*Hurricane Frequency*], [0.103],
    [*GDP Loss in Hurricane*], [0.089],
    [*Mean GDP*], [0.915],


    // Footer
    table.footer(
      table.cell(
        colspan: 2,
        align: left,
        inset: 4pt,
        emph("Simulated moments from the risk-averse benchmark. GDP loss is conditional on hurricane occurrence.")
      )
    )
  )
]
)

