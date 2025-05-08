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
    table.hline(y: 8, start: 0, end: 7, stroke: 0.8pt),

    table.header(
      [*Model*], [*Spread*], [*Debt/GDP*], [*Default*], [*Hurricane*], [*GDP Loss*], [*Mean GDP*]
    ),
    [*Benchmark*], [516.9], [0.49], [0.045], [0.047], [-0.056], [0.916],
    [*1P PC*], [618.1], [0.52], [0.050], [0.047], [-0.056], [0.916],
    [*2P PC*], [659.5], [0.52], [0.053], [0.047], [-0.056], [0.916],
    [*CAT 55%*], [452.8], [0.51], [0.040], [0.047], [-0.056], [0.916],
    [*CAT 1.55%*], [565.3], [0.49], [0.044], [0.047], [-0.056], [0.916],
    [*CAT 100%*], [273.0], [0.52], [0.041], [0.047], [-0.056], [0.916],

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
