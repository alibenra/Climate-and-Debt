// tables.typ

#set page(
  width: 210mm,
  height: 297mm,
  margin: 2cm,
)

#set document(
  title: "Simulation Results and Welfare Gains",
  author: "Ali Benramdane",
  date: auto
)


= Simulation Results - Baseline

This document summarizes the main simulated moments and welfare comparisons across different model specifications evaluated in the sovereign default framework with climate risk.

== Risk-Neutral Models
#include "../output/group_sim_RN.typ"

== Risk-Averse Models
#include "../output/group_sim_RA.typ"
== Welfare Gains

Below are the consumption-equivalent welfare gains (in %) for alternative model specifications relative to their respective benchmark.

#include "../output/welfare_gains.typ"

= Simulation Results - Climate Change

== Risk-Neutral Models
#include "../output/group_sim_RN_climate.typ"

== Risk-Averse Models
#include "../output/group_sim_RA_climate.typ"

== Welfare Gains

Below are the consumption-equivalent welfare gains (in %) for alternative model specifications relative to their respective benchmark.

#include "../output/welfare_gains_climate.typ"

= Simulation Results - CAT Shares
== Risk-Neutral Models
#include "../output/group_sim_RN_CAT_Share.typ"

== Risk-Averse Models
#include "../output/group_sim_RA_CAT_Share.typ"

== Welfare Gains

Below are the consumption-equivalent welfare gains (in %) for alternative model specifications relative to their respective benchmark.

#include "../output/welfare_gains_CAT_Share.typ"




#show figure: set block(breakable: true)

#figure(
  kind: "table",
  supplement: "Table",

block[
  #table(
    columns: 9,
    align: (x, y) => if x == 0 { left } else { center },
    stroke: none,
    inset: 6pt,

    // Manual horizontal lines
    table.hline(y: 0, start: 0, end: 9, stroke: 0.8pt),
    table.hline(y: 1, start: 0, end: 9, stroke: 0.8pt),
    table.hline(y: 5, start: 0, end: 9, stroke: 0.8pt),

    table.header(
      [*Case*], [*$alpha_0$*], [*$alpha_1$*], [*$beta$*], [*$omega_c$*],
      [*Avg. Spread (bps)*], [*Debt/GDP (%)*], [*Default Freq. (%)*], [*Bond Price Monotonicity*]
    ),

    // Data rows
    [*Average*], [6], [-70], [0.86], [0.765], [574.112], [0.489], [0.0489], [✗],
    [*Brazil*], [11], [-141], [0.855], [0.78], [574.335], [0.498], [0.0436], [✓],
    [*Mixed 1*], [9], [-100], [0.877], [0.765], [571.566], [0.4528], [0.0511], [✓],
    [*Mixed 2*], [8], [-80], [0.86], [0.76], [485.473], [0.483], [0.0525], [✗],

    // Footer
    table.footer(
      table.cell(
        colspan: 9,
        align: left,
        inset: 4pt,
        emph("Each row represents a sensitivity case with risk premia parameters $(\\alpha_0, \\alpha_1)$. β and ω_c are jointly calibrated to match Jamaica's average spread and debt-to-GDP ratio. ✓ denotes monotonic bond price schedule across GDP.")
      )
    )
  )
]
)
