#show figure: set block(breakable: true)

#figure(
  kind: "table",
  supplement: "Table",

block[
  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: center,
    stroke: none,
    inset: 6pt,

    table.hline(y: 0, start: 0, end: 7, stroke: 0.8pt),
    table.hline(y: 1, start: 0, end: 7, stroke: 0.8pt),
    table.hline(y: 6, start: 0, end: 7, stroke: 0.8pt),

    table.header(
      [*Model*], [*Spread*], [*Debt/GDP*], [*Default*], [*Hurricane*], [*GDP Loss*], [*Mean GDP*]
    ),
    [*Benchmark*], [534.5], [0.60], [0.042], [0.046], [-0.057], [0.917],
    [*1P RN*], [-8317.4], [0.56], [0.047], [0.046], [-0.057], [0.917],
    [*2P RN*], [589.0], [0.66], [0.062], [0.051], [-0.058], [0.917],
    [*CAT RN*], [641.2], [0.61], [0.043], [0.049], [-0.057], [0.917],

    table.footer(
      table.cell(
        colspan: 7,
        align: left,
        inset: 4pt,
        emph("Simulated moments from risk-neutral model set. GDP loss conditional on hurricane occurrence.")
      )
    )
  )
]
)
