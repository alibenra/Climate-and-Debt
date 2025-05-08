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
    table.hline(y: 6, start: 0, end: 2, stroke: 0.8pt),

    table.header(
      [*Model*], [*Welfare Gain (%)*]
    ),
    [*1P_RN*], [-0.018],
    [*2P_RN*], [-0.236],
    [*CAT RN 55%*], [-0.019],
    [*CAT RN 1.55%*], [-0.000],
    [*CAT RN 100%*], [0.050],

    table.footer(
      table.cell(
        colspan: 2,
        align: left,
        inset: 4pt,
        emph("Consumption-equivalent welfare gains relative to the benchmark (Climate Change).")
      )
    )
  )
]
)
