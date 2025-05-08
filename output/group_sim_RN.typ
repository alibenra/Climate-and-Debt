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
    [*Benchmark*], [516.9], [0.49], [0.045], [0.047],
    [*1P PC*], [618.1], [0.52], [0.050], [0.047],
    [*2P PC*], [659.5], [0.52], [0.053], [0.047],
    [*CAT 55%*], [452.8], [0.51], [0.040], [0.047],
    [*CAT 1.55%*], [565.3], [0.49], [0.044], [0.047],
    [*CAT 100%*], [273.0], [0.52], [0.041], [0.047],

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
