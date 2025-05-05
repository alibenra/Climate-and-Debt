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
    [*CAT RN 55%*], [-0.024],
    [*CAT RN 1.55%*], [-0.006],
    [*CAT RN 100%*], [0.163],
    [*CAT RA 55%*], [-0.110],
    [*CAT RA 1.55%*], [0.074],
    [*CAT RA 100%*], [-0.102],

    table.footer(
      table.cell(
        colspan: 2,
        align: left,
        inset: 4pt,
        emph("Consumption-equivalent welfare gains relative to the benchmark.")
      )
    )
  )
]
)
