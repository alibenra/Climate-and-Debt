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
    [*Benchmark*], [516.9], [0.49], [0.045],
    [*1P PC*], [618.1], [0.52], [0.050],
    [*2P PC*], [655.6], [0.52], [0.053],
    [*CAT 55%*], [452.8], [0.51], [0.040],
    [*CAT 1.55%*], [565.3], [0.49], [0.044],
    [*CAT 100%*], [273.0], [0.52], [0.041],

    table.footer(
      table.cell(
        colspan: 4,
        align: left,
        inset: 4pt,
        emph("Simulated moments from risk-neutral model set.")
      )
    )
  )
]
)
