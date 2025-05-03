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
    [*Benchmark*], [491.2], [0.67], [0.041], [0.046], [-0.057], [0.917],
    [*1P RA*], [995.9], [0.49], [0.045], [0.050], [-0.060], [0.917],
    [*2P RA*], [1247.1], [0.60], [0.057], [0.044], [-0.059], [0.917],
    [*CAT RA*], [940.7], [0.60], [0.057], [0.050], [-0.059], [0.917],

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
