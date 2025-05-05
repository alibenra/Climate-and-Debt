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
    [*Benchmark*], [517.6], [0.49], [0.045], [0.047], [-0.057], [0.917],
    [*1P RN*], [365.3], [0.52], [0.050], [0.047], [-0.057], [0.917],
    [*2P RN*], [652.8], [0.52], [0.053], [0.047], [-0.057], [0.917],
    [*CAT RN*], [482.1], [0.50], [0.043], [0.047], [-0.057], [0.917],

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
