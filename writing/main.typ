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


This paper investigates the role of climate-contingent sovereign debt instruments in improving borrowing conditions, debt sustainability, and welfare in disaster-prone economies. Using a quantitative sovereign default model with hurricane risk calibrated on Jamaican data, we evaluate the performance of disaster pause clauses (DPCs) and catastrophe (CAT) bonds under both baseline and intensifying climate change scenarios. While all instruments expand borrowing capacity, DPCs lead to higher spreads and default risk due to delayed repayments and a subsequent rise in debt stock levels. In contrast, CAT bonds, particularly large CAT issuances with full coverage of the debt stock, reduce spreads and default probabilities by directly mitigating fiscal losses from disaster. Under baseline conditions, both classes of instruments result in welfare losses, either due to increased borrowing costs or premium payments that crowd out consumption. However, under an intensified climate change scenario, these losses are reduced, with the largest CAT bond issuance even yielding a net welfare gain. This result suggests that as the frequency and severity of disasters increase, climate-contingent instruments will become increasingly more relevant for policymakers in disaster-prone economies.

\
\
\
*Keywords*: Sovereign debt, Debt sustainability, Natural disasters, Climate resilience, Fiscal relief, Borrowing costs, Default risk, Debt Pause Clause, Catastrophe Bonds, Hurricane risk, International lenders

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
== The Case for Climate-Contingent Sovereign Debt Instruments
\

Five years following the onset of the COVID-19 crisis, the world remains on the brink of a debt crisis. The pandemic has left a lasting impact on the fiscal and debt profiles of low- and middle- income countries (LMICs). Emergency policy responses during the pandemic and economic recovery plans in the following years have significantly expanded government spending, pushing sovereigns to increasingly rely on external debt to meet their financing needs, precisely as global interest rates skyrocketed in 2022 and 2023. As a result, LMICs now face substantially higher debt levels than in the previous decade and struggle with an increasingly challenging debt servicing burden, hindering the achievement of their development roadmaps (UNCTAD, 2025). The World Bank’s 2024 International Debt Report highlights that, in 2023, LIMCs allocated 3.7 percent of their gross national income to debt service, with 1.1 percent going to interest payments, the highest level recorded in two decades. This rising debt service burden was met with tightening access to liquidity, as the report highlights a pullback of increasingly risk-averse private creditors from LMIC credit markets. The compounded factors have led several economies down the road of debt distress. As of March 2025, the IMF categorized among 67 LICs 9 as in debt distress, 26 at high risk, 24 at moderate risk, and only 8 at low risk of external debt distress, highlighting the deepening systemic vulnerability across low-income countries. In this context, LMICs appear ever-more vulnerable to the numerous exogenous factors that may worsen their debt burdens, such as further trade fragmentation and unstable geopolitical conflicts (World Bank, 2024). This paper specifically focuses on the potential impact of natural disaster shocks on debt sustainability, especially as the effects of climate change are expected to intensify in the coming years.
\
\

_Climate Crisis -  Debt Doom Loop. _ #h(0.5cm) Natural disasters impose substantial economic and fiscal costs associated with post-disaster relief spending, reconstruction efforts, and lost output (Cevik et al., 2018; IMF) The literature distinguishes between two types of losses: direct impacts, such physical destruction of infrastructure and productive assets, and indirect impacts, which include subsequent macroeconomic disruptions in production, employment, consumption, trade flows and broader recovery dynamics (Botzen et al., 2019). As climate change intensifies, natural disasters-related damages are projected to escalate, leading to more frequent and severe economic disruptions, particularly in vulnerable regions. While the least contributors to global emissions (IPCC, 2023), low-income countries (LICs) already face the adverse impacts of climate change. The 2021 International Development Association (IDA) Climate Change Special Report issue highlights that over the last decade, LICs have already faced close to eight times as many natural disasters as in the 1980s (World Bank, 2021). Although advanced economies are also set to suffer from climate change related damages, emerging markets remain much more at risk due to low fiscal buffers and constrained access to liquidity, vulnerabilities exacerbated by the current global macroeconomic context. Climate-induced shocks shrink government revenues and raise emergency spending needs, straining primary balances and widening external deficits. These weakened fundamentals heighten sovereign risk, increasing the cost of borrowing precisely when additional financing becomes necessary (Cevik and Jalles, 2022). Empirically, early research shows that a single large-scale natural disaster raises sovereign default risk by about three percentage-points (Klomp, 2017), and a 1% increase in climate vulnerability adds over 3% to long-term bond spreads in LIDCs (Cevik & Jalles, 2020). Taken together, climate-related damages and associated rising debt vulnerabilities could interact to produce a feedback loop which can be referred to as a climate crisis–sovereign debt doom loop (Green Climate Fund, 2024). As climate change increases physical damage and economic disruptions, vulnerable sovereigns face revenue losses and rising expenditure needs for relief and recovery, often necessitating costly external borrowing at rising risk premia. The subsequent accumulation of debt reduces the fiscal space needed for adaptation and mitigation investment, which leaves countries more exposed to future climate shocks and raises the probability of default in the long-term. Overall, the compounding nature of these effects raises the urgent need for systemic financial mechanisms that can deliver timely relief and prevent the escalation of debt burdens, which otherwise render investments in both climate resilience and debt sustainability increasingly unattainable.

\

_Climate-resilient debt instruments._ #h(0.5cm) As a response to the intensification of natural disasters due to climate change, policymakers are exploring the examining the potential of climate-resilient financial instruments to deliver timely fiscal relief and mitigate the resulting pressures on public finances and sovereign debt. In the face of exogenous shocks precipitating governments into default, traditional solutions have taken the form of liability management exercises or debt restructuring negotiations with creditors, which seek to make debt servicing more manageable. More recently, certain relief options have sought to specifically address climate-related objectives. Debt-for-climate swaps (DFCS) are among such operations which have come under the spotlight in recent year.  DFCS consist in agreements between a sovereign and its creditors to cancel or refinance a portion of a current debt obligation in exchange for investments in climate resilience plans (Green Climate Fund, 2024). Recent examples included the Seychelles in 2015, Belize in 2021, and Ecuador and Gabon in 2023 (Green Climate Fund, 2024). While these operations effectively free up fiscal space in a way which directly addresses the Climate Crisis-Debt Doom Loop, they involve ad-hoc and lengthy negotiations which require strong political will and international coordination between borrowers and creditors who held competing incentives. As a means of circumventing political limitations and coordination challenges, policymakers and economists have also explored the possibility of relying on financial instruments designed precisely to provide immediate and systematic relief. This paper focuses precisely on two market-based mechanisms that aim to trigger automatic and time-sensitive relief following climate shocks: debt pause clauses (DPCs) and catastrophe bonds (CAT).

_Debt Pause Clauses._ #h(0.5cm) DPCs, also known as natural disaster clauses, climate-resilient clauses, and debt suspension clauses, allow sovereigns to temporarily suspend debt payments if a predefined natural disaster occurs. The standard duration of suspension is between one and two years and may involve the deferral of either coupons or principal payments, or both (Centre for Disaster Protection, 2023). Relief is triggered automatically based on parametric criteria relating to the severity of the climate shock (Center for Global Development, 2023). DPCs are designed to be net present value neutral (NPV), meaning that they defer repayment but do not reduce the amount owed, thus limits losses for investors (Cleary Gottlieb, 2022). In fact, DPCs also stipulate an increase in debt service following a pause in nominal terms through a mechanism of interest accrual on deferred payments at a pre-agreed interest rate. These instruments aim to ease liquidity constraints by freeing fiscal space for disaster response, allowing governments to prioritize relief efforts over immediate debt repayments. In doing so, DPCs contribute to enhancing long-term debt sustainability for sovereigns exposed to climate risks by limiting the need for costly post-disaster borrowing, thereby reducing the risk of default.

_Catastrophe bonds._ #h(0.5cm) CAT bonds offer sovereigns an alternative way to rely on capital markets to mitigate the adverse impacts of natural disasters. From the point of view of the sovereign, CAT bonds can best be described as insurance-like instruments that allow them to shift the financial burden of disasters to investors. In a standard CAT bond framework, the issuer enters into an insurance agreement with a sponsor, usually a Special Purpose Vehicle (SPV), which issues the debt instrument on its behalf (Federal Reserve Bank of Chicago, 2018). In the case of sovereigns, the World Bank takes the role of the SPV as the issuing entity (Cleary Gottlieb, 2022). In practice, CAT bonds enable sovereigns vulnerable to natural disasters to access recovery funding through investor payouts, contingent upon the occurrence of a predefined trigger event, analogous to the activation mechanism of DPCs. In return, sovereigns commit to a periodic premium payment to investors during non-disaster periods, with the rate set at issuance based on the expected loss associated with a qualifying disaster event (OECD, 2024). The payment structure of CAT bonds appeals to investors as it offers an opportunity for portfolio diversification through returns uncorrelated with market-related shocks, while insulating them from sovereign macroeconomic risks given that issuance is managed by the World Bank rather than the sovereign. Compared to DPCs, CAT bonds do not form part of the debt stock and do not modify the payment structure of the sovereign’s debt contracts. Akin to an insurance mechanism, CAT bonds support sovereigns by offering immediate post-disaster liquidity, thus intervening on the budgetary front rather than through direct alleviation of debt servicing obligations.

DPCs and CAT bonds are relatively recent instruments and have few real-world implementations. Only three countries have adopted DPCs so far, namely Grenada, Barbados, and the Bahamas (Climate Policy Initiative, 2025). Grenada became the first country to effectively activate such a clause as recently as August 2024, suspending USD 12 million in interest for one year on its 2015 USD 112 million bond following Hurricane Beryl (Financial Times, 2024). Some advanced economies, including Spain, are now advocating for a wider acceptance and adoption of DPCs by bilateral creditors to help vulnerable countries cope with climate-related disasters (Financial Times, 2024). CAT bonds on the other hand have seen a relatively wider adoption so far through the World Bank’s Capital at Risk Notes program. The program is designed to support at-risk economies enter into CAT bond agreements. Among other operations, the World Bank coordinated the issuance of a USD 185 million CAT bond on behalf of Jamaica in 2021 to provide coverage against tropical cyclone losses over a two-year period, and has also facilitated multiple CAT bond transactions for the Government of Mexico since 2006, and most recently in 2025, covering a range of natural disasters including hurricanes, storms, floods, earthquakes, and volcanic eruptions.

While DPCs and CAT bonds can theoretically alleviate short-term fiscal stress following a disaster, thereby reduce default probability, their state-contingent nature introduces significant repayment uncertainty. Investors will tend to price this uncertainty, thus leading to higher risk premia and potentially more expensive future borrowing. This dynamic thus reveals a core tension regarding the adoption and effectiveness of climate-resilient instruments. Although designed to mitigate sovereign risk from natural disasters, the complex and unconventional structure of these instruments may introduce sufficient uncertainty for investors to offset their intended benefits. This dynamic reflects broader findings in the literature on state-contingent debt, which has attributed the scarcity of state-contingent instruments to persistent novelty and uncertainty risk premia associated with their contingent design (Roch and Roldán, 2023; Igan et al., 2022).

\

_Research questions._ #h(0.5cm) *Can climate-contingent debt instruments improve welfare and debt sustainability in vulnerable economies? Which of debt pause clauses (DPCs) and catastrophe bonds (CAT bonds) offers the most optimal design for mitigating sovereign risk in disaster-prone economies?* This paper aims to address the underlying tension between the intended benefits and potential drawbacks of climate-resilient financial instruments. Specifically, it investigates whether the relief provided by DPCs and CAT bonds effectively reduces borrowing costs and default risk following natural disasters, or whether the repayment uncertainty they introduce undermines their practicality and could, in fact, increase sovereign financing costs. A secondary goal is to precisely compare the relative effectiveness of DPCs compared to insurance-based mechanisms like CAT bonds to determine which is better suited for managing disaster-related sovereign risk in Countries highly exposed to climate risks.

\

== Model Framework, Discussion of Assumptions, and Key Findings
\

In this paper, I seek to evaluate the impact of natural disasters and mitigating financial instruments through a quantitative model of sovereign default. I first solve for a benchmark model following the Eaton and Gersovitz (1981) and Arellano (2008) specifications. I incorporate long-term bonds à la Hatchondo and Martinez (2009) in order to account for the requirements of the debt pause clause extension which necessitates to track the dynamics of potential debt repayment freezes across a single instrument throughout several time periods in case of hurricane occurrences. The model is calibrated to Jamaican data. The case of Jamaica was chosen due to the fact that it is a hurricane-prone economy, which has already benefited from CAT bonds through the World Bank program (World Bank, 2021). Additionally, key calibration data and parameters were already computed by Mallucci (2022), which allows for a potential comparative analysis. As such, the natural disaster which explored in the calibration of this model is hurricane risk.

In order to track hurricane states and account for their economic impacts in terms of output loss, I define an output process which involves a multiplicative distortion of the standard autoregressive income process adopted in the sovereign default literature. More specifically, I define a hurricane shock process which only materializes with a set probability, fixed to reflect the annual likelihood of a major hurricane in Jamaica between 1980 and 2019, as reported by Mallucci (2022) using data from the National Oceanic and Atmospheric Administration (NOAA). In hurricane states, the output process remains equal to the income process value. In the event of a hurricane, income is multiplicatively scaled by a log-normal i.i.d. shock with log-mean zero, truncated at one to prevent output gains. The exponentiated log shock is then rescaled in a way that allows the expected value of the shock variable to match the empirical mean output loss observed in Jamaica following a major hurricane. This multiplicative structure has the advantage of separating macroeconomic fluctuations from climate-induced disasters, allowing tractable modeling of sovereign default risk under both business cycle and climate risks. Yet, it does not necessarily allow for modeling the lasting impacts of a natural disaster on overall output. As the main objective of this paper is to isolate the role of climate-resilient instruments in stabilizing sovereign risk in the face of a natural disaster, this concern is minimized as a lasting hurricane shock on output would only change the scale of the response of such instruments rather than their very nature. However, I acknowledge the usefulness of exploring an alternative output process specification in which hurricane shocks affect income for multiple periods to account for a more faithful modeling of the intensification of disaster losses due to climate change. 

The benchmark model only differs from the Eaton and Gersovitz (1981) and Arellano (2008) specifications through the incorporation of hurricane shocks as a multiplicative distortion of output in the government resource constraints. As in Hatchondo and Martinez (2009), the borrower is a benevolent government, represented in a small open economy which trades LT bonds with risk-neutral foreign creditors. The assumption of risk-neutrality of investors is useful to allow to isolate the impact of climate-contingent debt instrument designs on default risk. Additionally, it could be argued to be a reasonable assumption given the fact that international investors who purchase small economy bonds have deep pockets and well-diversified portfolios against idiosyncratic risks such as hurricane risk. LT bonds provide an infinite stream of coupon payments that continues until default occurs, with coupon amounts declining at a constant geometric rate over time. The decay parameter is selected to match the average maturity of Jamaican bonds, as in Mallucci (2022). At each period, the government must choose whether to repay or to default on its debt, and to select an amount of additional debt it wishes to contract and to be repaid in the next period. In the benchmark model, these bonds are non-contingent and are priced by the risk-neutral investors. Default comes at a cost, defined following the Eaton and Gersovitz (1981) and Arellano (2008) specifications. Defaulting implies a cost on output in the form of an asymmetric endowment loss structure. The sovereign is excluded from the markets and may only return with a set probability. 

The second part of this paper consists in extending the benchmark model to account for the introduction of climate-contingent instruments. 

_Debt Pause Clauses._ #h(0.5cm) The first two extensions concern DPCs and allow to modify the government value function to distinguish between hurricane and non-hurricane states. In non-hurricane states, the government optimization problem remains the same. However, in hurricane states, the value of repayment and the government resource constraint are modified to account for the fact that no coupon payment will occur in that period. In practice, the decaying process of the stream of payments is deferred by one period. To account for the subtleties of the design of a pause clause issued in the real world, the model accounts for the accrual of interest at the risk-free rate on the debt position during the hurricane period. These elements are shared between one and two-period pause clauses. The key distinction between both designs relies on the specification of the value function. While the one-period pause clause is defined recursively through the standard expected continuation value function as the government is expected to resume coupon payments in the next period, the two pause-clause is rather defined recursively through the excepted value of a one-pause clause. This allows to model the implications of a two-period relief instrument, through which the government expects to remain in a relief period in the next period regardless of the realization of a hurricane shock. While this approach allows for greater tractability of the model, the implementation means that the two-period relief is only guaranteed in expectation, as the state space is not augmented to account for the existence of transition states between hurricane and non-hurricane states during which relief will be imposed on the dynamic process. Consequently, while the one-period pause clause is faithful to the real-world application of the clause, the current implementation of a two-period pause clause only approximates the original structure for tractability reasons, at the cost of underestimating the effective benefits of the clause. However, this still allows to obtain conservative estimates of the benefits of such a design. Future work could augment the state space to precisely track pause duration through an additional hurricane-related state variable.

_Catastrophe bonds._ #h(0.5cm) The third and last extension concerns the introduction of CAT bonds to the benchmark model. CAT bonds are assumed to be issued by a multilateral organization and not directly by the government. As such, CAT bonds do not form part of the government debt stock and do not replace and change the dynamics and specifications of plain vanilla LT bonds used in the benchmark model. Instead, CAT bonds will function as an insurance-like policy. Therefore, the government’s relationship with a CAT bond will be represented by two state-contingent flows only which modify the resource constraints. During no hurricane states, the government is expected to pay a premium to investors every period. During hurricane states on the other hand, the government will receive a payout from investors, representing the forfeited principal, and will not pay a premium. CAT bonds are assumed to be one-period bonds. The premium will be determined at issuance based solely on the hurricane risk. Given that the probability of a hurricane shock is fixed throughout the model, the premium will also be fixed and empirically match the expected losses of investors in the case of default. These choices are made to ensure the model remains tractable and realistic. Given that CAT bonds are not issued by sovereigns, are purchased by specialized investors and are usually meant to cover short and defined disaster periods (World Bank 2021, 2022; OECD, 2024), these assumptions remain reasonable. 

The following sections of the paper implement the quantitative evaluation. The model is calibrated to Jamaican data, estimated and reported in Mallucci (2022). The model is then successfully calibrated to accurately match Jamaica’s average spread between 3-months T-Bills and correspond 3-month US T-Bills, as well as the debt-to-GDP ratio. Additionally, despite not being directly targeted, the model also fairly replicates the country’s empirical default frequency as reported by Mallucci (2022). The quantitative section evaluates the bond pricing schedules and simulated moments for average spreads, debt-to-GDP ratios, default frequency and hurricane frequency for each of the benchmark and extension models. Additionally, this paper also seeks to compute consumption equivalent welfare gains to summarize the long-run utility benefits (or costs) of introducing a given climate-resilient instrument compared the benchmark model with hurricane risk. 

Finally, this paper also explores two variations of baseline simulations. First, the CAT model is simulated for various levels of debt coverage to test for the optimal amount of CAT bond issuance required to achieve welfare-improving results. Second, all models, including the benchmark model, are evaluated in the case of an increase in disaster frequency and disaster-related losses, which allows to model an intensification of disasters due to climate change. The modifications of parameters for climate change simulations follow empirical measurements used by Mallucci (2022), which were initially reported by Bhatia et al. (2018) and Mejia (2016). 

\

_Key Findings._ #h(0.5cm) The quantitative evaluation of each of the climate-resilient debt instruments allow to come with several findings regarding their impact of debt sustainability, borrowing costs and welfare gains. The first result is that all climate-contingent instruments considered in the analysis enable higher government borrowing relative to the benchmark model with hurricane risk. Focusing first on pause clauses, I find that both one-period and two-period suspensions lead to higher average spreads and increased default frequency, although the latter results in slightly higher default risk and borrowing costs, suggesting diminishing marginal benefits from lengthening the suspension window as investors may penalize the government for the prolonged lack of payment. However, two-period pause clauses provide the highest bond prices relative to other instruments and to baseline, but only at high levels of next-period debt issuance. This suggess that their efficiency may only be valued at high levels of indebtedness as the government is more at risk of imminent fiscal distress in the case of a natural disaster. With regards to CAT bonds, these instruments are associated with lower perceived sovereign risk, as reflected in reduced simulated spreads and default frequency despite the presence of hurricane risk. This suggest that CAT bonds may be the only climate-resilient instruments to lower borrowing costs for sovereigns. 

In terms of welfare however, all instruments entail losses in utility compared to the benchmark. This might be associated to the higher borrowing costs implied by DPCs or the additional fiscal burden imposed by periodic insurance premia payments in the case of CAT bonds, both of which divert resources away from household consumption. However, as the frequency or severity of climate shocks intensifies, the picture shifts: full CAT bond coverage (100%) eventually delivers positive welfare gains, while welfare losses from all other instruments diminish. These findings highlight two key messages. While climate-resilient instruments might not necessarily provide the intended benefits to sovereigns under current conditions, they might become increasingly relevant and efficient under more severe and frequent climate shocks. These effects seem to be stronger for CAT bonds.
The latter finding make it necessary to acknowledge a modelling simplification of CAT bonds. These are assumed to pay out even during sovereign default, given that they were designed as insurance instruments issued by another entity. This assumption allows for tractability and is also empirically motivated by the fact that countries rarely default on operations involving multilateral development institutions (Munoz, 2023). Nevertheless, this assumption may deserve further scrutiny in future work.

\

The paper is organized as follows. Section 2 conducts a review of the relevant literature. Section 3 introduces the theoretical model. Section 4 presents the recursive formulation of the benchmark model. Section 5 elaborates on the recursive formulation of CAT bond and DPC extensions, for both one- and two-period suspension designs. Section 6 quantitatively evaluates the model under baselines specifications and climate change scenarios. Section 7 concludes. Section 8 presents the appendix, including the solution algorithm of the benchmark model and a presentation of a formulation of the model under endogenous risk-averse pricing following Lizarazo (2023).

\

= A Review of the Literature
\

This paper builds primarily builds upon the quantitative sovereign default literature. It takes as a point of departure the seminal work on a theoretical sovereign default model developed by Eaton and Gersovitz (1981) and closely follows Arellano’s quantitative implementation (2008). Arellano successfully models endogenous sovereign default in a small open economy with incomplete markets, using a stochastic dynamic framework with one-period bonds, through which interest rates adjust endogenously to output fluctuations. Arellano’s quantitative model replicates key empirical patterns observed during the 2001 Argentine default, including countercyclical credit spread, volatile consumption, and trade balance dynamics, but fails at matching the average level of credit spread. This paper attempts to adapt and calibrate Arellano’s framework to include hurricane risk and explore the impact of allowing for nature-contingent debt and insurance-like instruments.

In order to consider the dynamic and state-contingent nature of a debt-pause clause instruments, I extend the baseline quantitative sovereign default model to include long-term bonds. This paper thus contributes to the strand of literature specifically concerned with evaluating quantitative sovereign default in the context of long-term (LT) bonds. Chatterjee and Eyigungor (2012) have previously shown that incorporating long-duration bonds assuming a random maturity payoff structure could improve a model’s ability to replicate observed spread dynamics. Hatchondo and Martinez (2009) adopt a similar approach by studying an alternative specification for LT bonds, modeling an obligation promising an infinite stream of coupons which decreases at a constant rate. Subsequent studies have adopted specification for LT bonds introduced by Hatchondo and Martinez (2009), such as Arellano and Ramanarayanan (2008) which examines how the optimal debt maturity structure varies over the business cycle and shows that higher interest rate spreads are associated with shorter maturities and higher spreads on short-term bonds compared to long-term bonds. In this paper, I also choose to model LT bonds à la Hatchondo and Martinez (2009).

International investors in baseline models are traditionally modeled as risk neutral, which is the approach adopted throughout most of this paper. However, it is worth exploring a complementary strand of the literature focusing on exploring models with risk averse lenders. Arellano and Ramanarayanan (2008) extend their risk-neutral baseline model to explore the importance of risk premia in understanding sovereign bond prices by introduce a pricing kernel as a function of only the borrower’s income, directly calibrated on empirical data. The study suggests that risk-averse pricing tightens the price schedule and provides a better match to data on spreads. In a subsequent paper, Lizarazo (2013) endogenizes the risk-aversion of investors to explore the impact of their wealth levels on a sovereign’s incentives to default. Compared to models assuming risk-neutral investors, the model endogenizing risk-averse investors yields both higher equilibrium debt levels and higher and more volatile spreads. To account for such innovations in the literature, this paper presents a theoretical extension of the model with hurricane risk following Lizarazo’s specification in the appendix. However, no quantitative implementation is conducted so far and is proposed as a future extension of this paper. I choose however to focus on risk-neutral pricing for the core framework of this paper to allow for tractability and to isolate the impact of the design of climate-contingent debt instrument on default risk. The findings are intended to serve as a benchmark for future extensions adopting a quantitative implementation of risk-averse pricing.

By evaluating on the impact of CAT bonds on sovereign risk, this paper also contributes to the literature on the role of multilateral lenders in emerging market’s borrowing patterns. Munoz (2023) integrates multilateral lenders into a sovereign default framework and shows that model is able to match observed high debt levels without generating implausibly high default probabilities as institutional lenders mitigate market incompleteness and serve as an insurance for borrowers. While not directly including multilateral lenders as agents in the model, this paper also considers through CAT bonds their role in providing a type of borrowing insurance for sovereigns, specifically in the context of natural disasters.

The closest study to this paper in the sovereign default literature remains Mallucci (2022). Mallucci (2022) extends a standard sovereign default model to incorporate hurricane risk and shows that natural disasters restrict market access and lower welfare. Using calibration to Caribbean economies, he also suggests that while disaster clauses that reduce debt principal enhance borrowing capacity and welfare, coupon suspension clauses offer limited benefits and may even be welfare-reducing. In this paper, I extend this analysis to explore an alternative specification of a debt pause clause, focusing on coupon suspension for one and two periods of relief, and evaluating the impact of CAT bonds, which do not modify the payment structure of plain-vanilla bonds but add an insurance mechanism into the government resource constraints. This paper also provides a commentary on Mallucci’s study, specifically addressing the coherence between the theoretical output process presented in the paper and its quantitative implementation review in the replication package. In the theoretical specification, Mallucci assumes that the output process follows a standard endowment shock capturing business cycle shocks, as well as a rare event disaster shock, thus claiming that hurricane shocks affect income for multiple periods through the autoregressive component of the income process. However, the quantitative implementation in the replication package does not and uses a multiplicative distortion of output which only strikes at each period, thus only boasting a contemporaneous effect on default incentives only. In this paper, I choose to model hurricane disasters as a rare event. As such, I adopt the multiplicative distortion of output approach both theoretically and in my quantitative implementation. While also allowing for tractability, this modeling choice allows to isolate the precise impact of the activation of relief mechanisms following a rare shock. I do acknowledge however that this assumption may be debated as the intensification of climate change will lead to more frequent and severe disasters with lasting economic losses and disruptions. The findings of this paper can then be used as a benchmark for a future extension of this study incorporating the long-term losses following a disaster shock. 

This paper thus also contributes to the growing literature on climate resilience and sovereign default. A related paper published by Phan and Schwartzman (2024) also examines the impact of natural disasters on sovereign debt, and the concurrent effect of disaster suspension clauses and disaster insurance. However, their study uses a quantifiable growth model of a small open economy, rather than a sovereign default model capturing the consequences of default through autarky and temporary market exclusion. Similarly, Borensztein et al. (2017) explores the role of CAT bonds against natural disasters in a stochastic dynamic optimizing model. While they find large gains for the instruments in their baseline model, an extension of their benchmark suggest that these benefits disappear once the possibility of sovereign default is accounted for in the model through a reduction in external liabilities and additional costs. In this paper, while I evaluate similar instruments to Phan and Schwartzman (2024) and Borensztein et al. (2017), I rather directly extend on the quantitative sovereign default literature to provide a more in-depth analysis of the interaction between climate-resilient instruments and default decisions, and allow for an endogenous treatment of the government’s default decision, thereby capturing the dynamic interaction between insurance mechanisms, debt sustainability, and sovereign risk  in disaster-prone economies.

Finally, this paper connects to the literature on the economic impacts of natural disasters. Gallup et al. (1999), Nordhaus (2006), and Dell et al. (2012) find that rising temperatures significantly reduce economic growth in developing countries, while Burke et al. (2015) show that warming primarily harms countries in already hot climates, suggesting that natural disasters may disproportionately affect emerging economies. Cevik and Jalles (2022) further demonstrate that climate vulnerability and resilience strongly influence sovereign borrowing costs, with more resilient countries enjoying lower spreads. This latter paper also shows that these effects are especially pronounced in developing economies with limited capacity to adapt to climate risks.

\

= The Model Economy
\

In the benchmark model, we consider a small open economy populated by identical risk-averse households. The government of the economy seeks to maximize their discounted expedcted lifetime utility from consumption given by
$ E_0[sum^(infinity)_(t=0) beta^t u(c_t)] $
where $0 < beta < 1$ refers to the subjective discount factor.

The periodic utility of households displays a constrant coefficient of relative risk aversion, represented by $gamma >0$, such that:
$ u(c_t) = frac(c_t^(1-gamma), 1-gamma) $ \

_Total Output Process._ #h(0.5cm) In each period, households recieve a stoachastic stream of consumption goods $y_t$, which will represent the governent's endowment. The government's income process is assumed to be a log-normal AR(1) process such that:
$ log(y_t) = rho_y log(y_(t-1)) + epsilon^y_t $
where $epsilon^y_t ~^(text("iid")) 𝒩(0, sigma^2_y)$ and $abs(rho_y)<1$

In this framework, the output depends not only on the income process and the associated exogenous business cycle fluctuations and macoreocnomic shocks, but also on hurricane risk. In order the represent the impact of hurricane risk on output, it is introduced as a multiplicative distortion of income. Effectively, hurricane schok $h_t$ directly scales output each period, such that realized output is:
$ x_t = y_t dot h_t $
Formally, the hurricane shock process is defines as:
$ h_t = cases(
  1  #h(3.5cm) "with probability" 1 - pi_H, 
  min{macron(h) dot exp(𝓁_t), 1} #h(0.45cm) "with probability" pi_H
) $
where:
- $𝓁_t ~^text("iid") 𝒩(mu_𝓁, sigma^2_𝓁)$ is a log-loss shock draw from a normal distribution
- $pi_H in (0, 1)$ denotes the probability of a major hurricane
- $macron(h) in (0, 1)$ is a scaling constant calibrated to match the empirically observed mean loss conditional on a disaster
In order to esnure the expected loss factor is properly centered, we impose the normalization $mu_𝓁 = -frac(1, 2)sigma_𝓁^2$, which implies $#math.bb("E") [exp(𝓁_t)] = 1$. The goal of this step is to ensure that $exp(𝓁_t)$ does not to bias $h_t$ upward or downward on average in order to capture the mean hurricane loss entirely by $macron(h)$ to match the empirical average loss. 
On the other hand, the truncation operator #box[$min{dot,1}$] ensures that hurricane shocks never result in output gains, so that #box[$h_t <= 1$].
Economically, the truncation operator reflects the fact that even when a hurricane hits, it might not cause observable damage to economic activities, which is captured by $h_t = 1$ even when a hurricane hits with probability $pi_H$. Additionally, it this formulation will also be useful in the extension to climate-contingent instruments, as it could be interpreted to reflect the uncertainty revolving around their trigger. Parametric triggers adopted in many designs of both DPCs and CAT bonds are only activated if a certain threshold is met under very specific criteria (World Bank, 2022). Therefore, even if a rare and major hurricane hits, it may not activate payouts. This conservative modeling approach preserves the log-normal shape of disaster risk while maintaining interpretability and tractability in both standard and contingent debt environments.

Therefore, to clearly signal hurricane states which lead to a trigger of a pause clause or a CAT bond, we define an indicator variable $s_H$ which captures whether hurricane damage is severe enough to lower output in a given period. This aligns with the tyupical trigger structure of climate-contingent instruments, where payouts are activated only if economic damage surpasses a threshold. Importantly, $s_H = 1$ does not occur every time a hurricane hits with probability $pi_H$, but only when it causes output loss. Formally:
$
  s_H = cases(
    1 #h(0.5cm) "if" h < 1,
    0 #h(0.5cm) "if" h = 1
  )
$
which implies that:
- if no hurricane occurs, then $h_t = 1$ and $s_H = 0$;
- if a hurricane occurs and results in no observable output loss, then $h_t = 1$ and $s_H = 0$;
- if a hurricane occurs and reduces output, then $h_t < 1$ and $s_H = 1$;
Using the law ot total probabiloty, the expected value of $s_H$ will thus be:
$
  #math.bb("E") [s_H] =  #math.bb("P") (s_H = 1) = pi_H dot #math.bb("P") (h_t < 1 | "hurricane")
$
By the defintion of the $min$ operator, $h_t < 1$ only if:
$
  macron(h) dot exp(𝓁_t) < 1 ⇔ 𝓁_t < - log(macron(h))
$
So
$
  #math.bb("E") [s_H] = pi_H dot #math.bb("P") ( 𝓁_t < - log(macron(h)))
$

\

_Government decisions._ #h(0.5cm) In each period of the model, the government makes two key decisions. 
1. First, it chooses whether to default or not. The choice of default has two major implications for the sovereign
  - If default is chosen, the government suffers from an associated cost on output, represented by an endowment loss function. Following Arellano (2008), the default cost on output function takes an asymmetric form:
  $ y^("def") = cases(
    hat(y) = lambda #math.bb("E") (y) #h(1.02cm) "if" y > hat(y),
    y #h(3.5cm) "if" y <= hat(y)
  ) 
  $ 
  #h(0.5cm) where $0< lambda <1$ represents the output cost parameter
  - In case of default, the sovereign is excluded from the international market and may only rejoin with probability $theta$

2. Second, in the case of repayment, it chooses the amount of bond issuances to aim for in the current period. 
\

_Long-Term Bonds Framework._ #h(0.5cm) We assume that bonds are LT à la Hatchondo and Martinez (2009). This means that a bond issued in period t promises an infinite stream of coupons which decreases at a constant rate $psi$. Therefore, one unit of bond issued in period t implies a promised payment of 1 at $t+1$, $(1-psi)$ at $t+2$, $(1-psi^2)$ at t+3... As such, the promised cashflow of a bond is $(1 - psi)^(j-1)$ in period $t+j$ for all $j>= 1$. This specifcation allows model the effective maturity through the constant decrease in $psi$. If $psi = 0$, the bond would correspond to a perpetuity. If $psi = 1$, the bond would effectively become a one-period bond. If $0 <psi < 1$, the framework would model decaying-coupon LT bonds. 

LT bonds are modeled to adopt the following law of motion. In the absence of a default or of a new issuance, a government's debt position at the start of the next period is $ b' = (1-d)(1- psi)b - i $
where $d=1$ if the government defaults, and $i>0$ represents new government issuance. 
\
Therefore, new issuance at the next period corresponds to the difference between the choice of next-period debt position $b'$ and current debt position given the decision to default and the decaying structure of LT bonds, such that :
$ i = b' - (1-d)(1- psi)b  $

Using a discount rate r, we can compute the present value (PV) of the promised cashflow sequence attached to a bond issued today as follows:
$ "PV"(r) = sum^(infinity)_(j=1) frac((1-psi)^(j-1), (1+r)^j) $
Recognnizing the sum of an infinite geometric series:
$ "PV"(r) & = sum^(infinity)_(j=1) frac(1, 1+r) (frac(1-psi, 1+r))^(j-1) \
 & = frac(1, 1+r) dot (frac(r+ psi, 1+r))^(-1) \
 & = frac(1, r+psi)
$
We can thus define an expression of the value of the bond equal to its promised cashflow sequence, such that $q = frac(1, r+psi)$. Using this definition, we can derive an expression of the dond duration following the Macaulay definition used by Hatchondo and Martinez (2009). As such, the bond's duration is defined as:
$ D = sum^(infinity)_(j=1) w_j times j $
where $w_j = frac(1,q) dot frac((1-psi)^(j-1),(1+r)^j)$ such that: 
$ sum^(infinity)_(j=1) w_j & = frac(1,q) dot frac((1-psi)^(j-1),(1+r)^j) \
& = frac(1,q) dot frac(1, r+psi) \
& = 1
$
$w_j$ thus refers to the weights which represetn the fraction of the bond's value q from the cashflow sequence promised at date j.
\
We also notice that for $j>=1$, $ w_j = phi^(j-1) w_1 $ 
#h(3cm) where $phi = frac(1-psi, 1+r)$ #h(1cm) and #h(1cm)$w_1 = frac(1,q) dot frac(1, 1+r) = frac(r+psi, 1+r) = 1 - phi$
\
Combining all previous definitions, we can thus express the Macaulay duration of a decaying-coupon bond as follows #footnote[ 
Let $S = 1 + phi + phi^2 + ... = (1- phi)^(-1)$ 
\
  
Consider that
$ sum^(infinity)_(j=1) phi^(j-1) times j & = 1 + 2 phi + 3 ^phi^2 + ... \
& = 1 + phi + phi^2 + ... + phi + phi^2 + ... + phi^2 + ... \
& = S + phi (1 + phi + phi^2 + ...) + ... \
& = S + phi S + phi^2 S + ... \
& = S (1+ phi + phi^2 + ...) \
& = S^2 \
& = frac(1, (1-phi)^2)
$
]:
$ D & = (1-phi) sum^(infinity)_(j=1) phi^(j-1) times j\ 
& = (1-phi) dot  frac(1, (1-phi)^2) \
& = frac(1, 1-phi) \
& = frac(1+r, r + psi)
$
As such, for a one-period coupon bond, $psi = 1$ and $D=1$, while for long-term bonds in the Hatchond-Martinez framework, $psi <1$ and $D>1$.

\

_Timing of decisions._ #h(0.5cm) Within each period, the government first starts with asset #box[position $b$]. It observes the income and hurricane shock and consequently decides whether to repay or to default on its outstanding debt. If the government chooses to repay, then taking the bond price function $q(b', y)$ as given, it selects the optimal level of next-period asset position $b'$ to maximize household utility. Consumption subsequently materializes based on the chosen debt issuance and realized output.

\

_Pricing Framework._ #h(0.5cm) In this model economy, we assume that investors are risk-neutral, allowing for tractability and enabling the analysis to focus on how climate-contingent debt instruments influence default risk. Therefore, governments choose next-period debt issuance given a price level which is set by lenders who can purchase or sell bonds at the risk-free #box[rate $r$]. Investors are assumed to possess perfect information about the economy’s output process, including the materialization of exogenous macroeconomic and hurricane shocks. However, since hurricane shocks are i.i.d. and do not inform the likelihood of future disaster realizations, bond prices do not need to be conditioned on current hurricane shock $h$. Instead, the bond price function is defined as $q(b', y)$, reflecting that future default probabilities depend on the distribution of next-period output, which influenced by today's income level $y$. Thus, while hurricane shocks affect current output and utility, they do not enter the pricing equation, which is fully characterized by the chosen next-period asset position $b'$ and the persistent macroeconomic shock $y$.

\

_Resource Constraints._ #h(0.5cm) Following convention, a negative bond position $b'<0$ implies that the government entered into a debt contract.

In the repayment branch of the model, the government repays its debt and uses borrowing to smooth consumption. As such, the resoucre constraint following a repayment decision is:
$ c = y dot h + b - q(b', y) [b' - (1-psi)b] $
\
 
In the default branch, the governemnt does not repay its debts, suffers from default output costs, and is excluded from international markets. However, it may still be subject to a hurricane shock. Therefore, its resource constraint becomes:
$ c = y^("def") dot h $


\

= Recursive Formulation
\

We define a recursive equilibrium in which the government may choose to default on its debt. In order to take into account the impact of hurricane shocks on total output and subsequent decisions and policy functions, we augment the state space compared to the standard sovereing default literature to include the hurricane shock state variable $h$. Therefore, state variables are:
- current bond position $b$ 
- current realization of the income process $y$
- current realization of the hurricane shock process $h$
Given the state space, choice variables include next-period asset position choice for the government $b'$, as well as household #box[consumption $c$]. The equilibrium will be defined by the policy functions associated with the two choice variables, as well as by the bond price #box[schedule $q(b', y)$].

\

Let $V^o (b,y,h)$ refer to the general government value function. It represents its ability to choose between default and repayment at the beginning of each period to maximize household welfare. Therefore, $V^o (b,y,h)$ satisfies:
$ V^o (b,y,h) = max{V^R (b,y,h), V^D (y,h)} $
where $V^R (b,y,h)$ is the value of repayment and $V^D (y,h)$ is the value of default.


#box[We define the functional form of default $d in {0, 1}$ as follows:
$
  d(b,y,h) = cases(
    1 #h(1cm) "if" V^R (b,y,h) < V^D (y,h),
    0 #h(1cm) "otherwise"
  )
$]

\

The value of repayment satisfies the following functional equation:
$
  V^R (b,y,h) = max_(b') {u(y dot h + b - q(b', y) [b' - (1-psi)b]) + beta #math.bb("E")_(y', h')[V^o (b', y', h')]}
$
In the repayment branch, the government chooses the optimal size of next-period asset position to maximize utility, given the expected value in next period taking into account that the it might still choose between future repayment and future default.

\

The value of default takes into account the fact that defaulting entails an output cost and a temporary financial exclusion from markets. It is given by the following expression:
$
  V^D (y,h) = u(y^("def") dot h) + beta #math.bb("E")_(y', h') [theta V^o (0, y', h') + (1-theta) V^D (y', h')]
$
where $theta$ is the probability to rejoin markets after exclusion. Therefore, the expected value of continuation depends on the likelihood to exit financial autarky. Current utility of defaulting also takes into account a potential distortion of output in case of a hurricane shock.

\

Following Arellano (2008), the government's default policy can be described through repayment and default sets.
\
*Definition 1.* #h(0.5cm) Let $D(b)$ denote the default set which consists of the equilibrium set of exogenous state pairs $ (y, h)$ for which default is optiaml when the government's asset holdings are $b$. Formally:
$
  D(b) = {(y, h) in S: V^R (b,y,h) < V^D (y,h)}
$
where $S = Y times H $ and refers to the joint state space of all realizable exogenous states. This definition captures the idea that both macroeconmic and disaster shocks jointly affect default incentives. 
\
Similarly, let $A(b)$ refer to the complement of the default set, meaning the repayment set covering the joint sets $(y,h)$ for which repayment is optimal given an asset position $b$. Formally:
$
  A(b) = {(y, h) in S: V^R (b,y,h) >= V^D (y,h)}
$

The equilibrium default set are related to the functional form fo default as follow:
- If the default set is empty for a given $b'$ such that $D(b')=∅$, then for all joint realizable exogenous states, $d(b', y', h') = 0$
- If the default set covers the entire joint support for all realizable exogenous states for a given $b'$, such that $D(b')=S$, then $d(b', y', h') = 1$

\

_Bond Pricing Equation_ #h(0.5cm) Assuming risk-neutral investors with discount rate $r$, the bond price satisfies investors' zero-profit condition. It rakes the following form:
$
  q(b', y) = frac(1, 1+r) dot #math.bb("E")_(y', h' | y) [underbrace((1 - d(b', y', h')) dot 1, 1^("st") "term" ) + underbrace((1 - d(b', y', h')) dot (1 - psi) dot q(b'', y'), 2^("nd") "term" )]
$

It equals the expected discounted value of the next-period coupon payment (first term) and the next-period resale value of the asset (second term), both conditional on no default. It is interesting to notice that if $psi = 1$, the asset would be priced like a one-period bond.  The expectation is conditional on today's income $y$, as $y'$ follows an AR(1) process. On the other hand, since hurricane shocks $h$ are i.i.d., they do not condition the forecast.

\
*Definition 2.* _Recursive Equilibrium_ #h(0.5cm)

_ The  recursive equilibrium for a sivereign default model with hurricane risk is defined as the of value functions $V^o (b,y,h)$, $V^R (b,y,h)$, and $V^D (y,h)$, as well as the set of policy functions for consumption $c(b, y, h)$, government next-period asset position #box[$b'(b, y, h)$], default sets $D(b)$, and price schedule $q(b', y)$, such that: _

-  _Given all policy functions, household consumption  $c(b, y, h)$ satisfies the resource constraints_

-  _Given the bond price schedule $q(b', y, h)$, next-period asset position #box[$b'(b, y, h)$], the default sets $D(b')$, and the associated default rule $d(b', y', h')$ solve the dynamic programming problem  _

- _Given all policy functions, the bond price function $q(b', y)$ satisfies the lenders' zero-profit condition_

\

= Introducing Climate-Resilient Instruments 
\

DPCs and CAT bond payouts are activated following a hurricane, only if the cost of damage (or the climatic characteristics) of the disaster exceed a pre-defined threshold (Centre for Disaster Protection, 2023; Cleary Gottlieb, 2022). This requirement is satisfied by the condition that the multiplicative distortion associated with the hurricane shock process at a given period lowers output, which means that $h < 1$. As such, the materialization of hurricane damage will be given by an indicator variable $s_H$.

To clearly signal hurricane states which lead to a trigger of a pause clause or a CAT bond, we define an indicator variable $s_H$ which captures whether hurricane damage is severe enough to lower output in a given period. This aligns with the tyupical trigger structure of climate-contingent instruments, where payouts are activated only if economic damage surpasses a threshold. Importantly, $s_H = 1$ does not occur every time a hurricane hits with probability $pi_H$, but only when it causes output loss. Formally:
$
  s_H = cases(
    1 #h(0.5cm) "if" h < 1,
    0 #h(0.5cm) "if" h = 1
  )
$
which implies that:
- if no hurricane occurs, then $h = 1$ and $s_H = 0$;
- if a hurricane occurs and results in no observable output loss, then $h = 1$ and $s_H = 0$;
- if a hurricane occurs and reduces output, then $h < 1$ and $s_H = 1$;
Using the law ot total probability, the expected value of $s_H$ will thus be:
$
  #math.bb("E") [s_H] =  #math.bb("P") (s_H = 1) = pi_H dot #math.bb("P") (h < 1 | "hurricane")
$
By the defintion of the $min$ operator, $h < 1$ only if:
$
  macron(h) dot exp(𝓁) < 1 #h(0.5cm) ⇔ #h(0.5cm) 𝓁 < - log(macron(h))
$
So
$
  #math.bb("E") [s_H] = pi_H dot #math.bb("P") ( 𝓁 < - log(macron(h)))
$

\

== Debt Pause Clauses (DPCs)
\

A pause clause in this framework consists of a deferral of coupon payments by one or two periods, given the pre-agreed upon duration of relief. During the relief period, interest will accrue at contractual rates on the asset position at the risk-free rate $r$ in order to compensate investors during the deferral period. Additionally, all deferrals need to be NPV neutral. In practice, all deferred interest and coupon amounts would be capitalized into principal (Cleary Gottlieb, 2021). In this framework, this dynamic is represented by a shift in the promised cashflow by one or two periods, rescaled by the approriate interest accrual term. 

\

=== Modeling the cashflow sequence under a DPC contract
\

For a plain vanilla bond, a bond issued at time $t$ implies a promised cashflow sequence of:
- *At t+1:* $1$
- *At t+2:* $1-psi$
- *At t+3:* $(1-psi)^2$
- *At t+4:* $(1-psi)^3$
#h(0.5cm) ...

Under a one-period pause clause contract and assuming the materialization of a hurricane shock at period $t+1$, a bond issued at time $t$ implies a promised cashflow sequence of:
- *At t+1:* no payment owed due to deferral
- *At t+2:* $(1+r) times 1$ 
- *At t+3:* $(1+r) times (1-psi)$
- *At t+4:* $(1+r) times (1-psi)^2$
#h(0.5cm) ...

Under a two-period pause clause contract and assuming the materialization of a hurricane shock at period $t+1$, a bond issued at time $t$ implies a promised cashflow sequence of:
- *At t+1:* no payment owed due to deferral
- *At t+2:* no payment owed due to deferral
- *At t+3:* $(1+r)^2 times 1$ 
- *At t+4:* $(1+r)^2 times (1-psi)$
#h(0.5cm) ...

To ensure that both DPC designs are NPV neutral, we can compare the present value of the promised cashflow sequence attached to each bond, assuming an identical intial investment by lenders for all three types. Given that lenders are assumed to be risk-neutral and that bond pricing satisfies a zero-profit condition, we assume that the discount rate equals the risk-free rate.

\
*For a plain vanilla bond*
$
  "PV"^("Vanilla") (r) = sum^(infinity)_(j=1) frac((1-psi)^(j-1), (1+r)^j)
$

#box[*For a one-period pause clause*
$
  "PV"^(1"PC") (r) & =  frac(0, 1+r) + frac(1+r, (1+r)^2)  + frac((1+r)(1+psi), (1+r)^3) + frac((1+r)(1+psi)^2, (1+r)^4) +... \
  & = 0 + frac(1, 1+r)  + frac(1+psi, (1+r)^2) + frac((1+psi)^2, (1+r)^3) + ... \
  & = sum^(infinity)_(j=1) frac((1-psi)^(j-1), (1+r)^j)
$]

\
#box[*For a two-period pause clause*
$
  "PV"^(2"PC") (r) & =  frac(0, 1+r) + frac(0, (1+r)^2)  + frac((1+r)^2, (1+r)^3) + frac((1+r)^2(1+psi), (1+r)^4) +... \
  & = 0 + 0+ frac(1, 1+r)  + frac(1+psi, (1+r)^2) + ... \
  & = sum^(infinity)_(j=1) frac((1-psi)^(j-1), (1+r)^j)
$]
\
Therefore $ "PV"^("Vanilla") (r) = "PV"^(1"PC") (r) = "PV"^(2"PC") (r) $

This confirms that under risk-neutral pricing, both DPC designs are NPV neutral.

\
=== The DPC resource constraint
\

In the event of the materialization of hurricane damage in a given period, the DPC cashflow sequence imposes no coupon payment. In this framework, this is equivalent to not decreasing the bond position by coupon-decay rate $psi$. Additionally, interest will accrue from the deferred payment. Therefore, the current bond position in a hurricane state is $(1+r)b$ in the absence of a new issuance and in no default states. As such, the next period bond position will be defined as #box[$b' = (1+r)b - i$], where $i >0$ represents new bond issuance. Therefore, the resource constraint in a relief period is defined as follows:
$
  c = y dot h + 0 - q(b', y, h)[b' - (1+r)b]
$

Given the recursive nature of the problem, the same resource constraint will apply in the case of a two-period pause clause.

\
=== One-Period Debt Pause Clause (1PC)
\

The key modification of the benchmark model in the case of a 1PC relies in accounting for the activation of a pause clause in case of signficant hurricane damage. The general government value function is modified to account for the possibility of an alternative repayment branch in the case of a signficant hurricane shock. In the event of the materialization of hurricane damage, the goverment will automatically be set on the course of a relief period as specified in the DPC contract. As such, in the case of a 1PC, the government will be in either of two situations at the beginning of each period. If the pause clause trigger is not activated ($s_H = 0$), then the government will face the baseline choice between the standard value of repayment and the value of default. However, if the pause clause trigger is activated ($s_H = 1$), then the government will choose between the the standard value of default and the value of entering a relief state. In the pause state interest accrues on the bond’s resale value despite the suspension of coupon payments, which are expected to resume in the following period. Formally, let $V^("o1") (b,y,h)$ be defined as:
$ V^("o1") (b,y,h) = (1-s_H) dot max{V^R (b,y,h), V^D (y,h)} + s_H dot max{V^("1PC") (b,y,h), V^D (y,h)} $
where $V^("1PC") (b,y,h)$ is the value of repayment under a one-pause clause contract. 

\
 The value function under a 1PC can be formally defined as follows:
$
  V^("1PC") (b,y,h) = max_(b') {u(y dot h - q(b', y)[b' - (1+r)b]) + beta #math.bb("E")_(y', h')[V^("o1") (b', y', h')]}
$

\

_1PC pricing with risk-neutral investors._ #h(0.5cm) Investors value sovereign bonds according to their expected discounted payoff in the next period. As such, in the presence of a one-period pause clause, which is probabilistically activated by a climate shock, there are two pricing branches to consider. 
- The first branch, or *no activation branch*, relates to the case in which no clause activation is expected in the next period ($s_H ' = 0$). In this case, investors price the bond according to the standard repayment expectations. The price will this reflect both the next-period coupon and the expected resale value of the bond (or which summarizes the entire stream of expected future coupon repayments).
- The second branch, or *activation branch*, represents the anticipation of a clause activation in the next period ($s_H ' = 1$). In this scenario, investors price the bond under the expectation that no coupon will be paid, and that interest will accrue on the resale value over the pause period. As such, only the resale value of the bond will be priced, compounded at the risk-free rate.
Formally, the bond price satisfies:

$
  q(b', y) = frac(1, 1+r) dot #math.bb("E")_(y', h' | y) [ & underbrace((1-s_H ') dot (1 - d(b', y', h')) dot [1 + (1 - psi) dot q(b'', y')], "No Future DPC Activation Branch")\ & + underbrace(s_H ' dot (1 - d(b', y', h')) dot [0 + (1+r)dot q(b'', y')], "Future DPC Activation Branch")]
$

This pricing framework assumes that investos have full information over the hurricane shock process, and can thus correctly incorporate its probabilistic nature into the expectation. Therefore, investors form rational expectations over the probability of a DPC activation and internalize the accrual of interest on the resale value in the next-period.

\
=== Two-Period Debt Pause Clause (2PC)
\

The framework of the 2PC adopts the same general principles as the extension for a 1PC. As for a design with only one relief period, the government choice value function for a 2PC, $V^("o2") (b,y,h)$, will reflect two potential states. A state in which no pause clause is triggered ($s_H = 0$), in which case the government will choose between the standard value of repayment and the value of default, and a state in which a pause clause is activated ($s_H = 1$). In the DPC state, the goverment will have to choose between the standard value of default and the value of entering a two-period relief state. Formally:
$ V^("o2") (b,y,h) = (1-s_H) dot max{V^R (b,y,h), V^D (y,h)} + s_H dot max{V^("2PC") (b,y,h), V^D (y,h)} $
where $V^("2PC") (b,y,h)$ is the value of repayment under a two-pause clause contract. 

\

The main distinction between the 1PC framework and the 2PC relies in the the definition of the value of the relief period in a two-pause clause contract. In a dynamic programming framework, $V^("2PC") (b,y,h)$  will be defined recursively through the expected continuation value function of the 1PC, because the government expects a second period of relief, during which no repayment is imposed and interest will accrue again. This defintion implies the following simplifying assumption: as part of the 2PC contract, no default is possible during the second relief period. As captured by the definition of $V^("o2") (b,y,h)$, the government can only choose to default when a hurricane first hits (as soon as the clause is about to be activated), or in the standard case when no hurricane damage is recorded. However, once the government chooses not to default and to adopt the value of a 2PC contract, no default is allowed in the following period of relief. As such, the value of a 2PC contract is formally defined as:
$
  V^("2PC") (b,y,h) = max_(b') {u(y dot h - q(b', y, h)[b' - (1+r)b]) + beta #math.bb("E")_(y', h')[V^("1PC") (b', y', h')]}
$

\

_2PC pricing with risk-neutral investors._ #h(0.5cm) Similarly to the case of a 1PC, investors value sovereign bonds according to their expected discounted payoff in the next period and to the probabilistic activation of the clause by a climate shock. However, investors will also have to take into account the fact that pricing a 2PC will depend on the current state of activation of the clause. Indeed, in the case of a current damaging hurricane shock ($s_H = 1$), investors will expect that relief will be imposed in the next period, regardless of the hurricane status. On the other hand, if no current hurricane shock is registered, then no pause clause is currently triggered, which means that investors may expect that the next period could either be a relief period or a repayment period. For further clarity, let's distinguish between these two possibilities.

*1. No currently active pause clause ($s_H = 0$).*  
\
In this scenario, investors can anticipate two potential pricing branches, similarly to the 1PC pricing scenario. The first one implies no activation of the pause clause in the next period ($s_H ' = 0$), in which case, investors will price the expected next-period coupon payment and the expected resale value of the bond in a decaying-coupon LT bond framework. In the second case in which a pause clause is expected in the next period ($s_H ' = 1$), investors will price the bond under the expectation that no coupon will be paid and that interest will accrue on the resale value of the bond. Formally:

$
  q(b', y; s_H = 0) = frac(1, 1+r) dot #math.bb("E")_(y', h' | y) [ & underbrace((1-s_H ') dot (1 - d(b', y', h')) dot [1 + (1 - psi) dot q(b'', y')], "No Future DPC Activation Branch")\ & + underbrace(s_H ' dot (1 - d(b', y', h')) dot [0 + (1+r)dot q(b'', y')], "Future DPC Activation Branch")]
$
\

*2. The pause clause is currently active and triggerred ($s_H = 1$).* 
\
In the case where a pause clause has been triggered in the current period, investors anticipate that the next period will also be a relief period, as implied by the two-period pause clause contract, which mandates two consecutive periods of suspension. As such, regardless of whether a damaging hurricane shock will materialize ($s_H ' = 1$) or not ($s_H ' = 1$), investors will price the bond under the expectation that no coupon will be serviced and that interest will accumulate on the bond’s resale value. Additionally, this pricing framework assumes that a subsequent hurricane will not trigger a new pause clause, as the current one is already active. #box[Therefore, the pricing under $s_H = 1$ is defined as follows:

$
  q(b', y; s_H = 1) = frac(1, 1+r) dot #math.bb("E")_(y', h' | y) [ & underbrace((1-s_H ') dot (1 - d(b', y', h')) dot [0 + (1+r)dot q(b'', y')], "No Future DPC Activation Branch")\ & + underbrace(s_H ' dot (1 - d(b', y', h')) dot [0 + (1+r)dot q(b'', y')], "Future DPC Activation Branch")]
$]

\
Both cases can then be joined in a general pricing equation for a two-period pause clause, taking into account the distinction between between pricing anticipations in the case of no current DPC activation, as well as in the scenario of an already undertaken 2PC. Formally:
$
  q(b', y) = underbrace((1-s_H) dot q(b', y; s_H = 0), "No Current Active DPC") + underbrace(s_H dot q(b', y; s_H = 1), "Currently Active DPC")
$

It is worth noting that the resale value in the next period, $q(b'', y')$, remains uniformly defined across current shock scenarios. This is because, regardless of today's hurricane state, the recursive pricing structure ensures that next-period investors will condition their pricing on the realized hurricane state, thus adjusting their expectations accordingly to account for clause activation or not.

\


_Discussion of key assumption._ #h(0.5cm) While the 2PC framework captures key features of a two-period relief contract, it does so without explicitly augmenting the state space to track the pause duration. In particular, once the government activates a 2PC in response to a hurricane, the model does not record that the economy transitions into a second, predetermined period of relief. Instead, this continuation is enforced implicitly through the recursive structure.

As a result, the two-period relief is only guaranteed in expectation, since the model lacks a dedicated transition state that distinguishes the second pause period from standard periods. Consequently, while the one-period pause clause is faithful to the real-world application of the clause, the current implementation of a two-period pause clause only approximates the original structure for tractability reasons, at the cost of underestimating the effective benefits of the clause. However, this still allows to obtain conservative estimates of the benefits of such a design. Future work could augment the state space to precisely track pause duration through an additional hurricane-related state variable.

\

== Catastrophe Bonds (CAT)
\

=== Discussion of core assumptions
\

We now turn to the case of CAT bonds, another class of climate-contingent instruments, which unlike pause clauses, transfer natural disaster risk to the lenders through an insurance-like mechanism. CAT bonds are essentially distinct instruments from standard sovereign bonds. While DPCs are embedded directly into sovereing bonds, directly modifying their coupon payment structure in the event of a disaster, CAT bonds are issued in parallel and do not modify the cashflow of the plain-vanilla bonds instruments explored in the benchmark model. 

Another fundamental difference lies in the fact that CAT bonds are not issued by the government itself. In fact, invesors purchase these instruments directly from a third-party institution, which could either be an SPV or the World Bank acting as the issuer on behalf of the sovereign. As such, the government's involvement in CAT bonds is limited to a set of insurance-like financial flows:
- In periods where the hurricane damage threshold is not breached, the government pays a regular premium to investors set at issuance.
- In states where the hurricane trigger is activated, investors forfeit the principal, while the government receives the corresponding payout and is exempt from paying any premium for that period.

Overall, this framework replicates the structure of a standard insurance contract, through which the insured party, the government, makes regular premium payments during normal times in exchange for compensation in disaster states. 

CAT bonds are thus modeled exclusively through this insurance logic, without the explicit representation of the SPV or the World Bank as financial intermediaries. Importantly, CAT bonds do not contirbute to the government's outstanding debt stock. They are best understood as one-period insurance contracts which are renewed each period and imply either a payout or a premium payment depending on the realization of the disaster trigger. This repeated renewal structure serves as a tractable proxy for multi-year CAT bond programs observed in practice. The premium is defined as the spread of the CAT bond and is priced at the beginning of each period. 

Finally, it is worth emphasizing that the CAT/insurance contract also applies in the default states. As such, investors perceive CAT bonds as instruments uncorrelated with the sovereign’s macroeconomic fundamentals and price their premiums based solely on the exogenous hurricane risk. This reflects a simplifying assumption aligned with the fact that CAT bonds are not part of the sovereign's debt stock and are therefore not subject to default or restructuring negociations. Moreover, empirical evidence suggests that sovereigns are unlikely to default on obligations involving multilateral institutions such as the World Bank (Wicht, 2025; Munoz, 2023).

Nevertheless, the assumption that CAT bond flows continue during autarky may overstate their hedging benefits, particularly in severe economic crises where a sovereign might renege on CAT bond obligations alongside default on conventional debt. This opens the door to an important extension of the framework that would allow for sovereign default on CAT bond premium payments during periods of debt distress. Such a modification would fundamentally alter the valuation of CAT bonds by investors, as it would imply a pricing framework that also incorporates the sovereign’s macroeconomic fundamentals. This, in turn, would undermine CAT bonds' appeal as risk-diversifying assets that, under the current setup, are designed to be uncorrelated with sovereign risk.


\
=== CAT Bond modeling framework
\

_CAT bond premium._ #h(0.5cm) Premium rates are defined by the spread of a CAT bond, $Pi^("CAT")$, which is determined at issuance (OECD, 2024). The spread corresponds to the difference between the yield on the country's CAT bond and the risk-free rate. The country-specific CAT bond yield is calculated as the inverse of the bond’s discounted price, $1 + r^("CAT") = frac(1, q^("CAT"))$. Formally:
$
 Pi^("CAT") & = r^("CAT") - r  = frac(1, q^("CAT")) - 1 - r 
$

Given that investors are risk-neutral and that CAT bonds are uncorrelated with sovereign fundamentals, the CAT bond price can be modeled directly as the expected loss, corresponding to the full principal, based solely on the probability of the trigger event #footnote[In a model with risk-averse investors, CAT bond pricing would also take into account lenders' risk premia in addition to the measurement of expected loss]. As a one-period bond, CAT bond price represents the discounted expected payoff of investors given the probability of an activation of a damaging hurricane trigger. 
$
  q^("CAT") = frac(1, 1+r) dot #math.bb("E") [1 - s_H]
$

Note that, in this framework, CAT bonds are modeled as a sequence of independent one-period contracts, effectively approximating the multi-period structure of CAT bonds observed in practice. This simplifies implementation while retaining the core insurance logic. Additonally, since hurricane shocks are assumed to be exogenous and empirically calibrated to match observed hurricane frequency and average loss severity, the expectation $#math.bb("E") [s_H]$ remains constant across periods in the baseline framework. As a result, the CAT bond premium is also constant, varying only when the frequency or intensity of hurricane-related losses is altered. This possibility is explored in the climate change scenario analysis presented in the quantitative evaluation section of the paper.

It is also important to highlight the fact that the effective premium paid by the government corresponds to the product of the premium rate $Pi^("CAT")$ and the CAT bond amount issued $B^("CAT") (b)$, such that $"Premium" = Pi^("CAT") dot B^("CAT") (b)$. Premiums are only paid in non-trigger periods ($s_H = 0$).

The size of the CAT bond $B^("CAT") (b)$ is expressed relative to the government's debt stock. This allows to capture the extent to which sovereign obligations are insured against hurricane shocks. For instance, setting $B^("CAT") (b) = b$ would imply full coverage of the asset position, meaning that in the event of a damaging hurricane ($s_H = 1$), the government receives a payout equal to its debt service obligations through the CAT relief mehcnaism. This modeling choice allows the CAT bond to effectively hedge debt repayment risk in hurricane states, at the cost of proportionally higher premium payments in non-trigger periods ($s_H = 0$). Formally:

$ 
  B^("CAT") (b) = alpha dot abs(b) 
$ 
where $0<alpha<1$, with $alpha=1$ refers to 100% insurance coverage


\

_Resource constraints._ #h(0.5cm) The key financial flows associated with CAT bonds are embedded directly into the model's resource constraints. Specifically, the benchmark resource constraints are both modified to reflect that the government pays a premium when no hurricane trigger is activated ($s_H = 0$), and received a payout when the trigger is activated ($s_H = 1$). Formally, resource constraints are defined as follow:
- Repayment branch
$ 
  c = y dot h + b - q(b', y) [b' - (1-psi)b] - Pi^("CAT") dot B^("CAT") (b)dot (1-s_H) + B^("CAT") (b)dot s_H
$
where $B^("CAT") (b)$ represents the amount of CAT bond issued

- Default branch
$ 
  c = y^("def") dot h - Pi^("CAT") dot B^("CAT") (b) dot (1-s_H) + B^("CAT") (b) dot s_H
$

\

_Recursive formulation._ #h(0.5cm) Since CAT bonds are parallel instruments not directly issued by the government, they do not fundamentally alter the recursive structure of the government’s optimization problem, nor the associated bond pricing equation. Their only effect is to modify the level of resources available to the government across states of the world. As such, except for a modification of the resource constraints, the model remains within the plain-vanilla long-term bond framework, and the government's value functions keep the same structure as in the benchmark model. Formally:
$ V^o (b,y,h) = max{V^R (b,y,h), V^D (y,h)} $
where:
- The value of repayment $V^R (b,y,h)$ satisfies the following functional equation:
$
  V^R (b,y,h) = max_(b') {& u(y dot h + b - q(b', y) [b' - (1-psi)b] - Pi^("CAT") dot B^("CAT") (b) dot (1-s_H) + B^("CAT") (b) dot s_H) \ & + beta #math.bb("E")_(y', h')[V^o (b', y', h')]}
$
- The value of default $V^D (y,h)$ satisfies the following functional equation:
$
  V^D (y,h) = & u(y^("def") dot h - Pi^("CAT") dot B^("CAT") (b) dot (1-s_H) + B^("CAT") (b) dot s_H) \ & + beta #math.bb("E")_(y', h') [theta V^o (0, y', h') + (1-theta) V^D (y', h')]
$

#box[Similarly, the bond pricing equation remains unchanged from the benchmark model, as investors continue to price the same plain-vanilla sovereign bonds. CAT bonds do not modify the bond's payment structure and therefore do not affect its valuation under risk-neutral pricing.
$
  q(b', y) = frac(1, 1+r) dot #math.bb("E")_(y', h' | y) [underbrace((1 - d(b', y', h')) dot 1, 1^("st") "term" ) + underbrace((1 - d(b', y', h')) dot (1 - psi) dot q(b'', y'), 2^("nd") "term" )]
$

where, conditional on no default:
- the first term represents the discounted expectation of the next-period coupon payment
- the second terms captures the discounted expecation of the next-period resale value of the asset  
]

\

== Welfare evaluation framework

\

In order to evaluate whether DPCs and CAT bonds improve welfare, we compute welfare gains relative to the baseline using a consumption-equivalent welfare metric, following the methodology adopted by Mallucci (2022). 

_Conceptual Framewrok_ #h(0.5cm) Let $c^("benchmark")$ denote the consumption path under the benchmark model, meaning an economy exposed to climate risk but without any climate-contingent instrument. Let $c^("instrument")$ represent the equilibrium consumption path incorporating a specific disaster-relief instrument (either DPC or CAT bond). To compare welfare across these two setting, we define the consumption-equivalent welfare gain $Delta$ as the percentage increase in consumption that would make a household indifferent between the benchmark and the climate-contingent enhanced economy. Formally, $Delta$ solves for:
$
  V(c^("benchmark") dot (1+ Delta)) = V(c^("instrument"))
$
where $V(dot)$ denotes the expected lifetime utility function, and $Delta$ represents the adjustment needed in the benchmark economy to equate household welfare in the climate-contingent instrument scenario.

_Application under CRRA Preferences_ #h(0.5cm) This framework is adapted to the CRRA preferences specificed in the model economy, $u(c) = frac(c^(1-gamma), 1-gamma)$ with $gamma$ being the coefficient of household risk aversion. In the quantitative implementation, utility is computed over state-contingent consumption paths using simulations. Therefore, the average lifetime utility in each case is directly obtained from the model. Specifically, for each alternative instrument design, we compute the mean of the simulated lifetime utility across all states of the world, denoted $V^("instrument")$, and compare it to the corresponding average utility under the benchmark model, denoted $V^("benchmark")$. These values are defined as follows:
$
  V^("benchmark") = #math.bb("E") [ sum^infinity_(t=0) beta^t u(c_t ^("benchmark")) ]
$
and 
$
  V^("instrument") = #math.bb("E") [ sum^infinity_(t=0) beta^t u(c_t ^("instrument")) ]
$
Under CRRA, 
$
  V(c^("benchmark") dot (1+ Delta)) = #math.bb("E") [ sum^infinity_(t=0) beta^t frac(((1+ Delta)dot c_t ^("benchmark"))^(1-gamma), 1-gamma) ] = (1+ Delta)^(1-gamma) dot V^("benchmark")
$
Therefore,
$
  (1+ Delta)^(1-gamma) dot V^("benchmark") = V^("instrument") \
  (1+ Delta)^(1-gamma) = frac(V^("instrument"), V^("benchmark")) \
  Delta = (frac(V^("instrument"), V^("benchmark")))^(frac(1, 1-gamma)) - 1
$

A positive value of $Delta$ indicates that climate-contingent instruments impove welfare, thus providing adequate relief in disaster states which limits lifetime household consumption losses. However, a negative $Delta$ would imply that these instruments reduce welfare, potentially by increasing borrowing costs or diverting fiscal resources away from household consumption and toward relief efforts, ultimately leaving households worse off in the long run.

\

= Quantitative Evaluation
\

This model is solved numerically using value function iteration over a discretized state space that includes income, hurricane shocks, and long-term debt. Default probabilities are updated iteratively through a soft-max operator, which smooths the choice between repayment and default to ensure numerical stability. Bond prices are computed in a fixed-point loop, consistent with investors’ expectations of future payoffs given default incentives. After convergence, the model is simulated using a Markov chain that tracks the joint evolution of income and hurricane shocks, allowing for the computation of time series moments over simulated paths.

_Soft-max choice rule_ #h(0.5cm) To ensure the convergence of the value function iteration, I adopt a soft-max operator as in Mallucci (2022), who follows the quantitative approach implemented by Dvorkin et al. (2021). The approach consists in incorporating Type-1 Extreme Value shocks, first introduce by McFadden (1977), into the goverment's optimization problem. The goal of these shocks is to smooth the government's policy functions and to mitigate sharp feedback loops between borrowing decisions and the endogenous price function, to ensure convergence in a long-term and state-contingent default framework. 
Specifically, the government's decision over future debt levels is modeled as a multinomial discrete choice, where each option is slightly perturbed by an additive i.i.d. extreme value shock. Let $V^("nd") (y, h, b; b'_j)$ refer to the continuation value associated with choosing the next-period debt level $b'$, conditional on repayment. Then, the probability $pi_j (y, h, b)$ of selecting a particular level $b'_j$ from the debt grid is given by:
$
  pi_j (y, h, b) = frac(exp((V^("nd")_j (y, h, b; b'_j)) / rho_("EV")), sum^(N_b)_("s=1") exp((V^("nd")_s (y, h, b; b'_s))/ rho_("EV")))
$
where $rho_("EV") > 0$ approaximates the deterministic choice as it tends to 0. The probabilistic rule we use reflects the idea that small changes in fundamentals or expectations might lead the government to pick slightly different debt levels, as it is often observed in practice, and not necessarily the one with the highest value. Therefore, the $pi_j (y, h, b)$ function assigns a higher probability to next-period debt options $b'_j$ with higher expected values, but all debt level options technically have a strictly positive probability of being chosen as well. As the smoothing parameter  $rho_("EV")$ goes to 0, the choice becomes nearly deterministic and the government will almost always pick the option with the highest value.
\
Each continuation value $V^("nd") (y, h, b; b'_j)$ is defined as:
$
  V^("nd") (y, h, b; b'_j) = u(y dot h - b + q(y, b'_j)dot [b'_j - (1- delta)b]) + beta #math.bb("E")_(y',h', b'_j) [V(y', h', b'_j)]
$
where $V$ is the governemnt's value function between default and no-default.
Another soft-max rule is used regarding the decision to default. The probability of default is given by:
$
  d^*(y,h,b) = frac(exp((V^d (y,h)) / rho_("EV")), exp((V^d (y,h)) /rho_("EV")) + exp((V^("nd") (y,h,b)) /rho_("EV")))
$

where $V^d (y,h)$ is the value of default. Probabilistic default also allows to ensure that policy and values functions are smooth, thus facilitating the convergence of the numerical solution.

\

== Parametrization
\

The parameters used to calibrate this model are directly taken from Mallucci (2022), who reports precisely the empirical estimation needed to calibration a sovereign default model with hurricane risk. The estimations are based on Jamaican data spanning 1980 to 2019 at annual frequency.
All empirically estimated parameters are reported in @Table1. As indicated by Mallucci (2022), I assume that the relative risk aversion parameter $gamma$ is equal to 2, which is standard in the sovereign defautl literature. The probability to rejoin markets after default $theta$ is set to $frac(1,3)$, while the risk-free rate $r$ is equal to 0.0451 as in Mallucci (2022). The risk-free rate corresponds to the average annual T-bill rate between 1980 and 2019. I assume that the LT decay parameter $psi$ reflects the average duration of Jamaican bonds in that same period, rescaled using the Macaulay definition of duration explored in section 2. On the other hand the parameters representing the probability of a major hurricane and the average associated output losses during the 1980 and 2019 period in Jamaica are also computed by Mallucci (2022) using data from the National Oceanic and Atmospheric Administration (NOAA). Finally, all parameters related to the income process or the hurricane shock ($rho_y$, $sigma_y$, $mu_𝓁$, and $sigma_𝓁$) are all estimated by Mallucci (2022) using World Bank data.

\

#show figure: set block(breakable: true)

#figure(
  kind: "table",
  supplement: "Table",
  caption: [Empirically estimated parameters],

block[
  #table(
    columns: 3,
    align: (x, y) => if x == 0 { left } else { center },
    stroke: none,
    inset: 6pt,

    // Manual horizontal lines
    table.hline(y: 0, stroke: 0.8pt),
    table.hline(y: 1, stroke: 0.8pt),
    table.hline(y: 10, stroke: 0.8pt),

    table.header(
      [*Parameter*], [*Value*], [*Source/Statistic*]
    ),

    // Data rows
    [*Relative risk aversion - $gamma$*], [2], [Literature standard],
    [*Probability to rejoin markets - $theta$ #h(0.5cm)*], [$frac(1,3)$], [Mallucci (2022)],
    [*Risk-free rate - r*], [0.0451], [T-bill rate (1980-2019)],
    [*LT decay parameter - $psi$ *], [0.0564], [MDTS Jamaica],
    [*Probability of a major hurricane - $pi_H$ #h(2.5cm)*], [0.103], [NOAA],
    [*Income process autocorrelation coefficient - $rho_y$*], [0.96], [World Bank],
    [*Income shock process std. deviation - $sigma_y$*], [0.026], [World Bank],
    [*Hurricane shock average loss - $mu_𝓁$*], [0.023], [World Bank],
    [*Hurricane shock loss std. deviation - $sigma_𝓁$*], [0.02], [World Bank],

    // Footer
    table.footer(
      table.cell(
        colspan: 3,
        align: left,
        inset: 4pt,
        emph("All sources were directly used and reported by Mallucci (2022). The above references to their primary origin are indicated for completeness. --- NOAA refers to the National Oceanic and Atmospheric Administration. --- MDTS refers to the Medium-Term Debt Management Strategy of Jamaica "),
        
      )
    )
  )
]
) <Table1>

\

In order to coherently calibrate the model, the discount factor parameter $beta$ and the output costs parameter $lambda$ are both calibrated to match two moments of the Jamaican economy: an average spread of 519 basis points and a 0.49 external debt-to-GDP ratio. These parameters are reported in @Table2.

\

#show figure: set block(breakable: true)

#figure(
  kind: "table",
  supplement: "Table",
  caption: [Calibrated parameters],

block[
  #table(
    columns: 3,
    align: (x, y) => if x == 0 { left } else { center },
    stroke: none,
    inset: 6pt,

    // Manual horizontal lines
    table.hline(y: 0, stroke: 0.8pt),
    table.hline(y: 1, stroke: 0.8pt),
    table.hline(y: 3, stroke: 0.8pt),

    table.header(
      [*Parameter*], [*Value*], [*Traget Statistic*]
    ),

    // Data rows
    [*Discount factor - $beta$*], [0.925], [Debt-to-GDP ratio],
    [*Output costs parameter - $lambda$ #h(0.5cm)*], [0.725], [Average spread],

    // Footer
    table.footer(
      table.cell(
        colspan: 3,
        align: left,
        inset: 4pt,
        emph(""),
        
      )
    )
  )
]
) <Table2>

\

Finally, in addition to the standard parameters set for the benchmark model, We also define three different values of $alpha$, the CAT bond parameter which refers to the amount of coverage of the CAT relative to the sovereign debt stock. These values allow us to test for the varying impact of CAT bonds on default risk, borrowing costs, and welfare depending on the size of the CAT bond relative to the debt stock. The three values are chosen as follows:
1. *$alpha = 0.55$* - CAT bonds representing 55% of the debt stock allow us to test the impact of having a CAT bond contract which implies a payout equivalent to more than half of the debt stock in case of a hurricane, in exchange for paying proportionally signficant premiums. 
2. *$alpha = 0.0155$* - CAT bonds representing 1.55% represent a much more modest CAT bond size. This value matches empirical observations more closely. In 2021, the World Bank issued a USD 185 million CAT bond on behalf of Jamaica for hurricane protection (World Bnak, 2021). In the same year, Jamaica's external debt stock amounted to USD 11,928.28 million (Caribbean Policy Development Center, 2023).
3. *$alpha = 1.00$* - CAT bonds representing 100% of the debt stock allow us to test the impact of having a full coverage CAT bond contract which implies a payout equivalent to the entire debt stock in case of a hurricane, in exchange for paying proportionally signficant premiums. 



\

== Results - Baseline

\

=== Benchmark Model Analysis

\

This section first explores the trajectory of policy functions. In all figures, output incorporates both income and hurricane shocks. Low output realizations correspond to states in which either or both hurricane and income shocks are strong, while high output realizations refer to states in which there was a positive income shock and no hurricane damage recorded. All figures below effectively capture both the minimum effective output state and the maximum effective output state in the simulation process.

@Figure1 illustrates the bond price schedule $q(b', y)$ as a function of next-period debt position $b'$, conditional on the two distinct realizations of effective output. The bond price schedule shows a downward-sloping relationship with debt. Indeed, hhigher borrowing levels $b'$ are associated with greater price discounts in both high and low output states. This confirms that the model captures a higher risk of default as debt levels rise. More importantly, this dynamic is much more pronounced in low output states, during which the government faces tighter borrowing constraints. As such, this reflects the fact that in adverse states, the risk of default is heightened. This analysis aligns with the model's assumptions and is consistent with findings from the quantitative sovereign default literature (Arellano, 2008), demonstrating the credibility of this model framework. The sharp drop in bond prices for larger debt positions in the low-output state also highlights the endogenous borrowing limits imposed in the model. For low output states, bond prices reach the null value at very low levels of borrowing, signalling a much larger default set than in the high output states. Overall, both macroeconomic and hurricane shocks, through their joint effect on output, could signficantly alter the endogenous borrowing capacity of the government.


#figure(
  image("../graphs/BondSchedule_Benchmark_RN.png", width: 75%),
  caption: [Bond Price Schedule - Benchmark Model.],
) <Figure1>

\

@Figure2 on the other hand plots the government's value function $V^o (b,y,h)$ across different debt positions $b$, once again in both high and low output states. Value functions in both states are declining with high levels of indebtedness. Nevertheless, utility seems to be consistently higher in high-output states, reflecting better fiscal capacity and access to credit markets. The flat segments in both states correspond to regions in which the government's debt position does not impact the value function, signalling an autarky state. Flat segments thus reflect levels of borrowing for which the government is effectively cut off from credit markets, potentially due to prohibitively high interest rates reflected by correspondingly null bond prices at similar debt levels in @Figure1. The figure also highlights the fact that the government is excluded from markets at much lower levels of debt in low output states compared to high output states. This feature highlights the role of disaster risk in amplifying default risk and distorting intertemporal smoothing through indebtedness. When a hurricane strikes, lowering output and increasing borrowing needs, the government's marginal value of consumption is high, but access to credit is hindered, reflecting the core mechanism driving the climate crisis-sovereign debt doom loop.

#figure(
  image("../graphs/ValueFunction_Benchmark_RN.png", width: 75%),
  caption: [Value Functions - Benchmark Model.],
) <Figure2>

\

=== Comparative Simulations: Benchmark vs. Climate-Contingent Debt Instruments

\

@Figure3 plots the bond price schedules of all the climate-contingent debt instruments explored in this paper against the benchmark model. Overall, bonds price schedules follow close trajectories to the benchmark model in their respective high or low output realizations. However, in both case, the relative impact of each climate-contingent instrument depends on the level of indebtedness. For low levels of debt, the CAT bond (with a relative size corresponding to 55% of the debt stock), offers a slightly higher price than benchmark, while the two DPC designs enforce a discount on the bond price. These effects are more pronounced in low output states. This relfects the fact that for modest levels of borrowing, an insurance-like instrument enhances the government's ability to smooth consumption in adverse states. In contrast, DPCs reduce the expected investor payoff by postponing debt service while providing limited relief, as debt is alread low, which therefore implies a minor impact on the fiscal burden. 

However, at higher debt levels, espeically in the high output state, while bond price decline for all instruments, the DPCs seem to offer higher bond prices and defer the default debt threshold, particularly under the two-period relief design. This suggests that DPCs may only be valuable at elevated levels of borrowing, for which the magnitude of relief becomes significant relative to the fiscal burden (larger amounts of payments paused) and effectively frees up much more fiscal space than in in low levels of debt positions. On the ther hand, CAT bonds have a limited impact for higher debt levels, as the insurance payout may not sufficiently offset the heightened default risk stemming from debt servicing in the eyes of investors. 

For low of output states, however, the effects on bond prices across all instruments are largely indistinguishable at high levels of indebtedness, indicating the limited capacity of climate-contingent instruments to provide effective relief under severe macroeconomic conditions and disaster stress.

\

#figure(
  image("../graphs/BS_Comparison_RN.png", width: 125%),
  caption: [Bond Price Schedule - Benchmark Model vs. Climate-Contingent Instruments.],
) <Figure3>

\

@Figure4 represents a sensitivity analysis for CAT bonds. It illustrates how varying the size of the CAT bond affects bond prices across output states. While the differences are very subtle, two observations can be made. First, larger CAT bond shares seem to lead to slightly higher bond prices, particularly at moderate debt levels. This suggests that at low levels of indebtedness, a higher proportion of debt insured against hurricane risk marginally enhances fiscal relisience in the eyes if investors, thus slightly reducing perveived default risk. Second, at higher levels of indebtedness, there is limited dispersion across specifications. CAT bonds do not seem to improve borrowing conditions when debt is already high, likely because the additional insurance feature contributes to an already elevated fiscal burden in non-hurricane states.


#figure(
  image("../graphs/BS_CAT_Share_RN.png", width: 125%),
  caption: [Bond Price Schedule - Varying CAT Bond Size.],
) <Figure4>

\

We now turn to a discussion of the quantitative predictions of the model. The simulated moments reported in @Table3 are computed from a 10,000-period simulation of the model. The table compares the benchmark economy with five alternative specifcations incorporating climate-contingent instruments (two DPC designs and three CAT bond specifcations). 

First, the results confirm a successful calibration of the benchmark model. The benchmark model yields an average spread of approximately 517 basis points and a debt-to-GDP ratio of 49%, both jointly targeted through the calibration of the discount factor $beta$ and the output cost $lambda$. These simulated moments closely align with the empirical moments reported in Mallucci (2022), namely an average spread of 519 basis points and a 49% of debt-to-GDP ratio. Additionally, the simulation delivers a default frequency of 4.5%, which remains close to the 5.1% default risk measured empirically (Mallucci, 2022).

\

#figure(
  kind: "table",
  supplement: "Table",
  include "../output/group_sim_RN.typ",
  caption: [Simulated Moments - Benchmark vs. Climate-Contingent Instruments.],
) <Table3>

\

The introduction of DPC instruments (1P PC and 2P PC) increases both spreads and default frequencies, while marginally raising debt leves. This reflects the fact that postponing payments is associated with a higher borrowing capacity during relief periods, which consequently may raise investor concerns about long-term solvency. In contrast, CAT bonds generally reduce both spreads and default frequency, particularly at high levels of coverage of the debt stock. In fact, the CAT bond of a size equivalent to a 100% of the debt stock yields the lowest spread, close to 300 basis points below the benchmark average spread, and the lowest default frequency at 4.1%, suggesting improved fiscal reslience and reduced borrowing costs. 

Overall, while DPCs may provide intertemporal flexibility and temporarily expand fiscal space, they appear to do so at the cost of higher borrowing costs and increased default risk. By comparison, CAT bonds, partilarly of the largest size, seem to offer a more effective framework for reducing sovereign risk and improving financing conditions under hurricane risk. 

\

=== Welfare Analysis
\

@Table5 and the accompanying @Figure5 reflect the fact that all instruments yield welfare losses relative to the benchmark. This suggest that none of the instruments succeeds in improving household consumption under hurricane risk. However, the maginitude of these losses varies signficantly across instruments. 

The DPC designs result in the largest welfare losses, reflecting higher borrowing patterns associated with higher spreads and default risks, all of which reduce overall consumption smoothing by raising borrowing costs. 



\

#figure(
  kind: "table",
  supplement: "Table",
  include "../output/welfare_gains.typ",
  caption: [Welfare Gains - Benchmark vs. Climate-Contingent Instruments.],
) <Table5>

\

In contrast, CAT bonds exhibit much smaller welfare losses, especially for the smallest CAT issuance size. This pattern highlights a key advantage of the CAT bond design: by directly offsetting hurricane shocks through payouts without distorting sovereign bond payment structures, CAT bonds improve resilience while minimizing intertemporal trade-offs. Neverthelss, they still imply welfare losses as the premium paid at every state reduces the amount of resources allocated to long-term household consumption. It is worth noting that the intermediate size of the CAT bond delivers the worst welfare outcome among the three CAT instruments, likely due to the fact that as it implies large premiums costs with relatively modest payouts in hurricane states compared to the largest CAT bond.

Finally, the attentive reader will note that these results might only be valid under risk-neutrality of investors and the assumption of a lack of correlation between CAT premium payments and default decisions. Future research could explore such a specification. 
\

#figure(
  image("../graphs/Welfare_vs_CAT_Share_RN.png", width: 70%),
  caption: [Welfare Gains - Benchmark vs. Climate-Contingent Instruments.],
) <Figure5>

\

== Results - Climate Change Scenario

\

In order to assess the long-term effectiveness of climate-contingent instruments, we replicate the same baseline quantitative simulations under a climate change scenario. Effectively, hurricane-related paramters are adjusted to reflect an intensification of climate change risks. Hurricane frequency is increased by 29.2% following Bhatia et al. (2018) and hurricnae damage is increased by 48.5% as in Mejia (2016). These statistics were originally reported in Mallucci (2022) and were taken directly to conduct a similar climate change stress test on the instruments analyzed in this paper.

Overall, the patterns oberved in the baseline simulations remain consistent, though the the magnitude of effects is notably amplified. @Figure6 shows that bond price schedules maintain their downdard-sloping structure with respect to debt. Bond prices remain higher with CAT bonds at lower levels of indebtdenss and lower under DPCs for small debt positions. On the other hand, for higher debt levels, epsecially in high output states, bond prices under DPC designs, especially the 2PC, rise above the benchmark. These effects are much more pronounced than in the baseline. Similar conclusions can be drawn from @Figure7 about the effect of a variation in CAT bond coverage.

@Table7 confirms these patterns in simulated moments. Spreads and default frequencies increase across all specifications, but CAT bonds, especially at the largest size, continue to provide more effective relief dynamics than DPCs. Turning to welfare outcomes (@Table9 and @Figure8), we observe a fundamental shift: whereas all instruments induced losses under baseline conditions, in the climate-intensified environment, the largest CAT bond delivers a net welfare gain of 0.05%. This suggests that under more frequent and severe shocks, the insurance-like design of CAT bonds becomes not only cost-effective but welfare-enhancing. Similarly, welfare losses are also lower for DPC designs, especially the one-pause clause contract. This suggest that for higher levels of climate shocks, more designs could lead to welfare improvement. As such, as climate change continues to intensify, climate-contingent instuments will become more relevant for governments to improve welfare and benefit from effective relief conditions.

\

=== Comparative Simulations: Benchmark vs. Climate-Contingent Debt Instruments

\

#figure(
  image("../graphs/BS_Comparison_RN_Climate.png", width: 125%),
  caption: [Climate Change: Bond Price Schedule - Benchmark Model vs. Climate-Contingent Instruments.],
) <Figure6>

\

#figure(
  image("../graphs/BS_CAT_share_RN_Climate.png", width: 125%),
  caption: [Climate Change: Climate Bond Price Schedule - Varying CAT Bond Size.],
) <Figure7>

\

#figure(
  kind: "table",
  supplement: "Table",
  include "../output/group_sim_RN.typ",
  caption: [Climate Change: Simulated Moments - Benchmark vs. Climate-Contingent Instruments.],
) <Table7>


=== Welfare Analysis
\

#figure(
  kind: "table",
  supplement: "Table",
  include "../output/welfare_gains_climate.typ",
  caption: [Climate Change: Welfare Gains - Benchmark vs. Climate-Contingent Instruments.],
) <Table9>

\

#figure(
  image("../graphs/Welfare_vs_CAT_Share_Climate_RN.png", width: 70%),
  caption: [Climate Change: Welfare Gains - Benchmark vs. Climate-Contingent Instruments.],
) <Figure8>

\

= Conclusion
\

This paper examines whether and how climate-contingent sovereign debt instruments can enhance borrowing conditions, debt sustainability, and welfare in economies exposed to natural disasters. Using a quantitative sovereign default model calibrated to Jamaican data, we analyze the performance of disaster pause clauses (DPCs) and catastrophe (CAT) bonds under both baseline and climate-intensified scenarios. The model incorporates stochastic hurricane shocks as a multiplicative distortion of the income process, and embeds the two classes of climate-contingent instruments into the model to evaluate their effects on borrowing conditions, default risk, and household welfare.

Key findings show that while all instruments expand the government's borrowing capacity, they differ significantly in their implications for sovereign risk and welfare. DPCs lead to higher spreads and default frequencies, driven by elevated borrowing levels and investor concerns over delayed repayments.DPCs seem to provide effective relief relative to the benchmark only at high levels of indebtedness in high-output state only, where the combination of substantial deferred payments and favorable economic conditions yields some relief relative to the benchmark. Nevertheless, although they offer intertemporal relief, DPCs consistently generate welfare losses under baseline conditions as higher borrowing costs crowd out consumption, undermining the government's ability to smooth household welfare over time.

In contrast, CAT bonds, especially at higher coverage levels, are associated with lower spreads and a reduced likelihood of default, due to their insurance-like structure that directly mitigates disaster-induced fiscal shocks.

Importantly, when simulating a climate change scenario with more frequent and severe hurricanes, the relative perofrmance of CAT bonds improves markedly. The largest CAT bond issuance covering 100% of the debt stock yields a net welfare gain, indicating that under more intense climate stress, the benefits of insurance outweigh the costs of its premiums. This is consitent with the fact that climate change intensification implies more disaster periods, and thus more payouts and less premium payments. DPCs also exhibit milder welfare losses in a climate change scenario, suggesting that both instruments become more relevant as disaster risk increases. As such, while the climate-contingent instruments may currently imply signficant costs, whether through higher borrowing spreads or insurance premiums that limit their overall effectiveness, their relevance is expected to grow as the likelihood and severity of disasters increase.

It is worth noting that these results are conditional on the risk-neutral framework and the assumption that CAT bond payouts are uncorrelated with broader macroeconomic conditions. The effects of each instrument could be reevaluated in future work under the assumption of risk-averse investors to capture more accurately sovereign pricing dynamics and their impact on soverieng risk, especially in the face of disaster risk. An early theoretical extension incorporating investor risk-aversion is presented in the appendix.


\

= Appendix
\

== Solution algorithm
\


== Benchmark model with risk-averse investors 
\


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

