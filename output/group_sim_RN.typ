#show figure: set block(breakable: true)

#figure(
  kind: "table",
  supplement: "Table",

block[
  #table(
    columns: (80pt, 80pt, 80pt, 80pt, 80pt),
    align: center,
    stroke: none,
    inset: 6pt,

    table.hline(y: 0, start: 0, end: 5, stroke: 0.8pt),
    table.hline(y: 1, start: 0, end: 5, stroke: 0.8pt),
    table.hline(y: 8, start: 0, end: 5, stroke: 0.8pt),

    table.header(
      [*Model*], [*Spread*], [*Debt/GDP*], [*Default Frequency*], [*Hurricane Frequency*]
    ),
    [*Benchmark*], [582.7], [0.51], [0.045], [0.088],
    [*1P PC*], [613.9], [0.51], [0.050], [0.088],
    [*2P PC*], [675.0], [0.51], [0.054], [0.088],
    [*CAT 55%*], [483.1], [0.54], [0.047], [0.088],
    [*CAT 1.55%*], [579.5], [0.51], [0.046], [0.088],
    [*CAT 100%*], [299.8], [0.55], [0.051], [0.088],

    table.footer(
      table.cell(
        colspan: 5,
        align: left,
        inset: 4pt,
        emph("Simulated moments from risk-neutral model set.")
      )
    )
  )
]
)
