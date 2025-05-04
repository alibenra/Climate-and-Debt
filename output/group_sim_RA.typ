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
    [*Benchmark*], [577.7], [0.51], [0.043], [0.050], [-0.061], [0.917],
    [*1P RA*], [936.1], [0.40], [0.046], [0.050], [-0.061], [0.917],
    [*2P RA*], [837.0], [0.41], [0.041], [0.050], [-0.061], [0.917],
    [*CAT RA*], [1175.1], [0.42], [0.046], [0.050], [-0.061], [0.917],

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
