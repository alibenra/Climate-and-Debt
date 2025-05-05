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
    [*Benchmark*], [673.5], [0.48], [0.046], [0.062], [-0.067], [0.898],
    [*1P RN*], [923.9], [0.46], [0.051], [0.062], [-0.067], [0.898],
    [*2P RN*], [814.3], [0.49], [0.054], [0.062], [-0.067], [0.898],
    [*CAT RN*], [506.6], [0.54], [0.044], [0.062], [-0.067], [0.898],

    table.footer(
      table.cell(
        colspan: 7,
        align: left,
        inset: 4pt,
        emph("Simulated moments from risk-neutral model set. GDP loss conditional on hurricane occurrence. Climate Change")
      )
    )
  )
]
)
