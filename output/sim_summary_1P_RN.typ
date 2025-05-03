#show figure: set block(breakable: true)

#figure(
  kind: "table",
  supplement: "Table",

block[
  #table(
    columns: (auto, auto),
    align: (x, y) => if x == 0 { left } else { center },
    stroke: none,
    inset: 6pt,

    table.hline(y: 0, start: 0, end: 2, stroke: 0.8pt),
    table.hline(y: 1, start: 0, end: 2, stroke: 0.8pt),
    table.hline(y: 7, start: 0, end: 2, stroke: 0.8pt),

    table.header(
      [*Statistic*], [*Value*]
    ),

    [*Average Spread (bps)*], [485.543],
    [*Debt/GDP*], [0.591],
    [*Default Frequency*], [0.036],
    [*Hurricane Frequency*], [0.046],
    [*GDP Loss in Hurricane*], [-0.057],
    [*Mean GDP*], [0.917],

    table.footer(
      table.cell(
        colspan: 2,
        align: left,
        inset: 4pt,
        emph("Simulated moments from the risk-averse benchmark. GDP loss is conditional on hurricane occurrence.")
      )
    )
  )
]
)
