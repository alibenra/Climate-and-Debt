#show figure: set block(breakable: true)

#figure(
  kind: "table",
  supplement: "Table",

block[
  #table(
    columns: (120pt, 120pt, 120pt, 120pt),
    align: center,
    stroke: none,
    inset: 6pt,

    table.hline(y: 0, start: 0, end: 4, stroke: 0.8pt),
    table.hline(y: 1, start: 0, end: 4, stroke: 0.8pt),
    table.hline(y: 8, start: 0, end: 4, stroke: 0.8pt),

    table.header(
      [*Model*], [*Spread*], [*Debt/GDP*], [*Default Frequency*]
    ),
    [*Benchmark*], [675.5], [0.48], [0.047],
    [*1P PC*], [948.2], [0.46], [0.051],
    [*2P PC*], [835.5], [0.49], [0.054],
    [*CAT 55%*], [497.8], [0.51], [0.045],
    [*CAT 1.55%*], [668.4], [0.47], [0.046],
    [*CAT 100%*], [204.2], [0.52], [0.044],

    table.footer(
      table.cell(
        colspan: 4,
        align: left,
        inset: 4pt,
        emph("Simulated moments from risk-neutral model set - Climate Change")
      )
    )
  )
]
)
