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
    [*Benchmark*], [548.9], [0.50], [0.040], [0.046], [-0.057], [0.917],
    [*CAT 55%*], [1106.4], [0.43], [0.043], [0.046], [-0.057], [0.917],
    [*CAT 1.55%*], [498.7], [0.45], [0.040], [0.046], [-0.057], [0.917],
    [*CAT 100%*], [799.3], [0.43], [0.048], [0.046], [-0.057], [0.917],

    table.footer(
      table.cell(
        colspan: 7,
        align: left,
        inset: 4pt,
        emph("Simulated moments from risk-averse model set. GDP loss conditional on hurricane occurrence.")
      )
    )
  )
]
)
