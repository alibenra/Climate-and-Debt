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
    [*Benchmark*], [132.7], [0.31], [0.008], [0.061], [-0.064], [0.898],
    [*1P RA*], [923.3], [0.40], [0.014], [0.061], [-0.064], [0.898],
    [*2P RA*], [1105.9], [0.40], [0.015], [0.061], [-0.064], [0.898],
    [*CAT RA*], [675.0], [0.35], [0.036], [0.061], [-0.064], [0.898],

    table.footer(
      table.cell(
        colspan: 7,
        align: left,
        inset: 4pt,
        emph("Simulated moments from risk-averse model set. GDP loss conditional on hurricane occurrence. Climate Change")
      )
    )
  )
]
)
