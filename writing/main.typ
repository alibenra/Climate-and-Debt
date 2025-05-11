#set par(justify: true)
#set page(numbering: "1" )
#set heading(numbering: "1.")
#set par(
  first-line-indent: 2em,
  spacing: 1.2em,
  leading: 1em,
  justify: true,
)

#set text(font: "New Computer Modern")

#import "@preview/diverential:0.2.0": *



\
\

#align(center, text(18pt)[
  *Bringing Climate Resilience Into Sovereign Debt*
  \
  \


], )

#grid(
  columns: (1fr),
  align(center)[ \
    Ali Benramdane \
    May 2025
    \
    \
    Master’s Thesis \
    Master’s in Economics, Sciences Po \
    Under the supervision of Professor Stéphane Guibaud
    \
    \
    \
  
    *Abstract*
  ]
)
\
\

Five years following the onset of the COVID-19 crisis, the world remains on the brink of a debt crisis. The pandemic has left a lasting impact on the fiscal and debt profiles of low- and middle- income countries (LMICs). Emergency policy responses during the pandemic and economic recovery plans in the following years have significantly expanded government spending, pushing sovereigns to increasingly rely on external debt to meet their financing needs, precisely as global interest rates skyrocketed in 2022 and 2023. As a result, LMICs now face substantially higher debt levels than in the previous decade and struggle with an increasingly challenging debt servicing burden, hindering the achievement of their development roadmaps 

\
\
\
*Keywords*: Sovereign debt, Debt sustainability, Natural disasters, Climate resilience, Fiscal relief, Default Risk, Debt Pause Clause, Catastrophe Bonds, Hurricane risk, International lenders

#pagebreak()

#set heading(numbering: "1.1")

#import "@preview/outrageous:0.4.0"


#show outline.entry: outrageous.show-entry.with(
  font-style: ("normal", "normal", "normal"),
  font: ("Libertinus Serif", "Libertinus Serif", "Libertinus Serif"),
  vspace: (3em, 1.5em, 1.5em)
)



#outline()

#pagebreak()

= Introduction 
\

Five years following the onset of the COVID-19 crisis, the world remains on the brink of a debt crisis. The pandemic has left a lasting impact on the fiscal and debt profiles of low- and middle- income countries (LMICs). Emergency policy responses during the pandemic and economic recovery plans in the following years have significantly expanded government spending, pushing sovereigns to increasingly rely on external debt to meet their financing needs, precisely as global interest rates skyrocketed in 2022 and 2023. As a result, LMICs now face substantially higher debt levels than in the previous decade and struggle with an increasingly challenging debt servicing burden, hindering the achievement of their development roadmaps (UNCTAD, 2025). The World Bank’s 2024 International Debt Report highlights that, in 2023, LIMCs allocated 3.7 percent of their gross national income to debt service, with 1.1 percent going to interest payments, the highest level recorded in two decades. This rising debt service burden was met with tightening access to liquidity, as the report highlights a pullback of increasingly risk-averse private creditors from LMIC credit markets. The compounded factors have led several economies down the road of debt distress. As of March 2025, the IMF categorized among 67 LICs 9 as in debt distress, 26 at high risk, 24 at moderate risk, and only 8 at low risk of external debt distress, highlighting the deepening systemic vulnerability across low-income countries. In this context, LMICs appear ever-more vulnerable to the numerous exogenous factors that may worsen their debt burdens, such as further trade fragmentation and unstable geopolitical conflicts (World Bank, 2024). This paper specifically focuses on the potential impact of natural disaster shocks on debt sustainability, especially as the effects of climate change are expected to intensify in the coming years.
\
\

_Climate Crisis -  Debt Doom Loop. _ #h(0.5cm) Natural disasters impose substantial economic and fiscal costs associated with post-disaster relief spending, reconstruction efforts, and lost output (Cevik et al., 2018; IMF) The literature distinguishes between two types of losses: direct impacts, such physical destruction of infrastructure and productive assets, and indirect impacts, which include subsequent macroeconomic disruptions in production, employment, consumption, trade flows and broader recovery dynamics (Botzen et al., 2019). As climate change intensifies, natural disasters-related damages are projected to escalate, leading to more frequent and severe economic disruptions, particularly in vulnerable regions. While the least contributors to global emissions (IPCC, 2023), low-income countries (LICs) already face the adverse impacts of climate change. The 2021 International Development Association (IDA) Climate Change Special Report issue highlights that over the last decade, LICs have already faced close to eight times as many natural disasters as in the 1980s (World Bank, 2021). Although advanced economies are also set to suffer from climate change related damages, emerging markets remain much more at risk due to low fiscal buffers and constrained access to liquidity, vulnerabilities exacerbated by the current global macroeconomic context. Climate-induced shocks shrink government revenues and raise emergency spending needs, straining primary balances and widening external deficits. These weakened fundamentals heighten sovereign risk, increasing the cost of borrowing precisely when additional financing becomes necessary (Cevik and Jalles, 2022). Empirically, early research shows that a single large-scale natural disaster raises sovereign default risk by about three percentage-points (Klomp, 2017), and a 1% increase in climate vulnerability adds over 3% to long-term bond spreads in LIDCs (Cevik & Jalles, 2020). Taken together, climate-related damages and associated rising debt vulnerabilities could interact to produce a feedback loop which can be referred to as a climate crisis–sovereign debt doom loop (Green Climate Fund, 2024). As climate change increases physical damage and economic disruptions, vulnerable sovereigns face revenue losses and rising expenditure needs for relief and recovery, often necessitating costly external borrowing at rising risk premia. The subsequent accumulation of debt reduces the fiscal space needed for adaptation and mitigation investment, which leaves countries more exposed to future climate shocks and raises the probability of default in the long-term. Overall, the compounding nature of these effects raises the urgent need for systemic financial mechanisms that can deliver timely relief and prevent the escalation of debt burdens, which otherwise render investments in both climate resilience and debt sustainability increasingly unattainable.

\

_Climate-resilient debt instruments_ #h(0.5cm) As a response to the intensification of natural disasters due to climate change, policymakers are exploring the examining the potential of climate-resilient financial instruments to deliver timely fiscal relief and mitigate the resulting pressures on public finances and sovereign debt. In the face of exogenous shocks precipitating governments into default, traditional solutions have taken the form of liability management exercises or debt restructuring negotiations with creditors, which seek to make debt servicing more manageable. More recently, certain relief options have sought to specifically address climate-related objectives. Debt-for-climate swaps (DFCS) are among such operations which have come under the spotlight in recent year.  DFCS consist in agreements between a sovereign and its creditors to cancel or refinance a portion of a current debt obligation in exchange for investments in climate resilience plans (Green Climate Fund, 2024). Recent examples included the Seychelles in 2015, Belize in 2021, and Ecuador and Gabon in 2023 (Green Climate Fund, 2024). While these operations effectively free up fiscal space in a way which directly addresses the Climate Crisis-Debt Doom Loop, they involve ad-hoc and lengthy negotiations which require strong political will and international coordination between borrowers and creditors who held competing incentives. As a means of circumventing political limitations and coordination challenges, policymakers and economists have also explored the possibility of relying on financial instruments designed precisely to provide immediate and systematic relief. This paper focuses precisely on two market-based mechanisms that aim to trigger automatic and time-sensitive relief following climate shocks: debt pause clauses (DPCs) and catastrophe bonds (CAT).

_Debt Pause Clauses_ #h(0.5cm) DPCs, also known as natural disaster clauses, climate-resilient clauses, and debt suspension clauses, allow sovereigns to temporarily suspend debt payments if a predefined natural disaster occurs. The standard duration of suspension is between one and two years and may involve the deferral of either coupons or principal payments, or both (Centre for Disaster Protection, 2023). Relief is triggered automatically based on parametric criteria relating to the severity of the climate shock (Center for Global Development, 2023). DPCs are designed to be net present value neutral (NPV), meaning that they defer repayment but do not reduce the amount owed, thus limits losses for investors (Cleary Gottlieb, 2022). In fact, DPCs also stipulate an increase in debt service following a pause in nominal terms through a mechanism of interest accrual on deferred payments at a pre-agreed interest rate. These instruments aim to ease liquidity constraints by freeing fiscal space for disaster response, allowing governments to prioritize relief efforts over immediate debt repayments. In doing so, DPCs contribute to enhancing long-term debt sustainability for sovereigns exposed to climate risks by limiting the need for costly post-disaster borrowing, thereby reducing the risk of default.

_Catastrophe bonds_ #h(0.5cm) CAT bonds offer sovereigns an alternative way to rely on capital markets to mitigate the adverse impacts of natural disasters. From the point of view of the sovereign, CAT bonds can best be described as insurance-like instruments that allow them to shift the financial burden of disasters to investors. In a standard CAT bond framework, the issuer enters into an insurance agreement with a sponsor, usually a Special Purpose Vehicle (SPV), which issues the debt instrument on its behalf (Federal Reserve Bank of Chicago, 2018). In the case of sovereigns, the World Bank takes the role of the SPV as the issuing entity (Cleary Gottlieb, 2022). In practice, CAT bonds enable sovereigns vulnerable to natural disasters to access recovery funding through investor payouts, contingent upon the occurrence of a predefined trigger event, analogous to the activation mechanism of DPCs. In return, sovereigns commit to a periodic premium payment to investors during non-disaster periods, with the rate set at issuance based on the expected loss associated with a qualifying disaster event (OECD, 2024). The payment structure of CAT bonds appeals to investors as it offers an opportunity for portfolio diversification through returns uncorrelated with market-related shocks, while insulating them from sovereign macroeconomic risks given that issuance is managed by the World Bank rather than the sovereign. Compared to DPCs, CAT bonds do not form part of the debt stock and do not modify the payment structure of the sovereign’s debt contracts. Akin to an insurance mechanism, CAT bonds support sovereigns by offering immediate post-disaster liquidity, thus intervening on the budgetary front rather than through direct alleviation of debt servicing obligations.

DPCs and CAT bonds are relatively recent instruments and have few real-world implementations. Only three countries have adopted DPCs so far, namely Grenada, Barbados, and the Bahamas (Climate Policy Initiative, 2025). Grenada became the first country to effectively activate such a clause as recently as August 2024, suspending USD 12 million in interest for one year on its 2015 USD 112 million bond following Hurricane Beryl (Financial Times, 2024). Some advanced economies, including Spain, are now advocating for a wider acceptance and adoption of DPCs by bilateral creditors to help vulnerable countries cope with climate-related disasters (Financial Times, 2024). CAT bonds on the other hand have seen a relatively wider adoption so far through the World Bank’s Capital at Risk Notes program. The program is designed to support at-risk economies enter into CAT bond agreements. Among other operations, the World Bank coordinated the issuance of a USD 185 million CAT bond on behalf of Jamaica in 2021 to provide coverage against tropical cyclone losses over a two-year period, and has also facilitated multiple CAT bond transactions for the Government of Mexico since 2006, and most recently in 2025, covering a range of natural disasters including hurricanes, storms, floods, earthquakes, and volcanic eruptions.

While DPCs and CAT bonds can theoretically alleviate short-term fiscal stress following a disaster, thereby reduce default probability, their state-contingent nature introduces significant repayment uncertainty. Investors will tend to price this uncertainty, thus leading to higher risk premia and potentially more expensive future borrowing. This dynamic thus reveals a core tension regarding the adoption and effectiveness of climate-resilient instruments. Although designed to mitigate sovereign risk from natural disasters, the complex and unconventional structure of these instruments may introduce sufficient uncertainty for investors to offset their intended benefits. This dynamic reflects broader findings in the literature on state-contingent debt, which has attributed the scarcity of state-contingent instruments to persistent novelty and uncertainty risk premia associated with their contingent design (Roch and Roldán, 2023; Igan et al., 2022).

\

_Research questions_ #h(0.5cm) *Can climate-contingent debt instruments improve welfare and debt sustainability in vulnerable economies? Which of debt pause clauses (DPCs) and catastrophe bonds (CAT bonds) offers the most optimal design for mitigating sovereign risk in disaster-prone economies?* This paper aims to address the underlying tension between the intended benefits and potential drawbacks of climate-resilient financial instruments. Specifically, it investigates whether the relief provided by DPCs and CAT bonds effectively reduces borrowing costs and default risk following natural disasters, or whether the repayment uncertainty they introduce undermines their practicality and could, in fact, increase sovereign financing costs. A secondary goal is to precisely compare the relative effectiveness of DPCs compared to insurance-based mechanisms like CAT bonds to determine which is better suited for managing disaster-related sovereign risk in Countries highly exposed to climate risks.


#pagebreak()

#text(size: 16pt)[*References*]

#show bibliography: set par(spacing: 2em)

\
#bibliography(
  //
  ("references.bib"),
  //
  style: "harvard-cite-them-right",
  //
  full: true,
  //
  title: none
)

