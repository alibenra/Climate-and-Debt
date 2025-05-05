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
      [*Model*], [*Welfare Gain (%)*]
    ),
    [*1P_RN*], [-0.019],
    [*2P_RN*], [2.112],
    [*CAT_RN*], [0.080],
    [*1P_RA*], [-0.779],
    [*2P_RA*], [-0.285],
    [*CAT_RA*], [-0.436],

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
