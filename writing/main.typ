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
$ log(y_t) = rho log(y_(t-1)) + epsilon^y_t $
where $epsilon^y_t ~^(text("iid")) 𝒩(0, sigma^2_y)$ and $abs(rho)<1$

In this framework, the output depends not only on the income process and the associated exogenous business cycle fluctuations and macoreocnomic shocks, but also on hurricane risk. In order the represent the impact of hurricane risk on output, it is introduced as a multiplicative distortion of income. Effectively, hurricane schok $h_t$ directly scales output each period, such that realized output is:
$ x_t = y_t dot h_t $
Formally, the hurricaner shock process is defines as:
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
Economically, the truncation operator reflects the fact that even when a hurricane hits, it might not cause observable damage to economic activities and thuis be equal to 1. Additionally, it also reflects the uncertainty revolving around the trigger of climate-contingent instruments. Parametric triggers adopted in many designs of both DPCs and CAT bonds are only activated if a certain threshold is met under very specific criteria (World Bank, 2022). Therefore, even if a rare and major hurricane hits, it may not activate payouts. This conservative modeling approach preserves the log-normal shape of disaster risk while maintaining interpretability and tractability in both standard and contingent debt environments.

\

In each period of the model, the government makes two key decisions. 
1. First, it chooses whether to default or not. The choice of default has two major implications for the sovereign
  - If default is chosen, the government suffers from an associated cost on output, represented by an endowment loss function. Following Arellano (2008), the default cost on output function takes an asymmetric form:
  $ y^("def") = cases(
    hat(y) = (1 - lambda) #math.bb("E") (y) #h(1.02cm) "if" y > hat(y),
    y #h(3.5cm) "if" y <= hat(y)
  ) 
  $ 
  #h(0.5cm) where $0< lambda <1$ represents the endowment loss
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

_Pricing Framework._ #h(0.5cm) In this model economy, we assume that investors are risk-neutral.  This assumption allows for tractability and to isolate the impact of the design of climate-contingent instruments on default risk when compared to the literature. Therefore, governments choose next-period debt issuance given a price level which will be set by lenders who can purchase or sell bonds at the risk-free rate $r$. Investors are assumed to possess perfect information about the economy’s output process, including the materialization of macroeconomic and hurricane shocks. Therefore, they determine the bond price function $q(b', y, h)$ based on the size of of new debt issuance $b'$, as well as in terms of the observed level of income and hurricane shock at every period, given that the government's incentives to default will depend on all three elements.

\

_Resource Constraints._ #h(0.5cm) Following convention, a negative bond position $b'<0$ implies that the government entered into a debt contract.

In the repayment branch of the model, the government repays its debt and uses borrowing to smooth consumption. As such, the resoucre constraint following a repayment decision is:
$ c = y dot h + b - q(b', y, h) [b' - (1-psi)b] $
\
 
In the default branch, the governemnt does not repay its debts, suffers from default output costs, and is excluded from international markets. However, it may still be subject to a hurricane shock. Thereofre, its resource constraint becomes:
$ c = y^("def") dot h $

\

_Timing of decisions._ #h(0.5cm) Within each period, the government first starts with asset #box[position $b$]. It observes the income and hurricane shock and consequently decides whether to repay or to default on its debt. If the government chooses to repay, then taking $q(b', y, h)$ as given, it selects the optimal size of next-period asset position $b'$ to maximize household utility, and consumption subsequently materializes.

\

= Recursive Formulation
\

We define a recursive equilibrium in which the government may choose to default on its debt. In order to take into account the impact of hurricane shocks on total output and subsequent decisions and policy functions, we augment the state space compared to the standard sovereing default literature to include the hurricane shock state variable $h$. Therefore, state variables are:
- current bond position $b$ 
- current realization of the income process $y$
- current realization of the hurricane shock process $h$
Given the state space, choice variables include next-period asset position choice for the government $b'$, as well as household #box[consumption $c$]. The equilibrium will be defined by the policy functions associated with the two choice variables, as well as by the bond price #box[schedule $q(b', y, h)$].

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
  V^R (b,y,h) = max_(b') {y dot h + b - q(b', y, h) [b' - (1-psi)b] + beta #math.bb("E")_(y', h')[V^o (b', y', h')]}
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
  q(b', y, h) = frac(1, 1+r) dot #math.bb("E")_(y', h') [underbrace((1 - d(b', y', h')) dot 1, 1^("st") "term" ) + underbrace((1 - d(b', y', h')) dot (1 - psi) dot q(b'', y', y'), 2^("nd") "term" )]
$

It equals the expected discounted value of the next-period coupon payment (first term) and the next-period resale value of the asset (second term), both conditional on no default. It is interesting to notice that if $psi = 1$, the asset would be priced like a one-period bond. 

\
*Definition 2.* _Recursive Equilibrium_ #h(0.5cm)

_ The  recursive equilibrium for a sivereign default model with hurricane risk is defined as the of value functions $V^o (b,y,h)$, $V^R (b,y,h)$, and $V^D (y,h)$, as well as the set of policy functions for consumption $c(b, y, h)$, government next-period asset position #box[$b'(b, y, h)$], default sets $D(b)$, and price schedule $q(b', y, h)$, such that: _

-  _Given all policy functions, household consumption  $c(b, y, h)$ satisfies the resource constraints_

-  _Given the bond price schedule $q(b', y, h)$, next-period asset position #box[$b'(b, y, h)$], the default sets $D(b')$, and the associated default rule $d(b', y', h')$ solve the dynamic programming problem  _

- _Given all policy functions, the bond price function $q(b', y, h)$ satisfies the lenders' zero-profit condition_

\

= Introducing Climate-Resilient Instruments 
\



\

= Quantitative Evaluation
\


== Simulation Results - Baseline

This document summarizes the main simulated moments and welfare comparisons across different model specifications evaluated in the sovereign default framework with climate risk.

=== Risk-Neutral Models
#include "../output/group_sim_RN.typ"

#image("../graphs/BondSchedule_Benchmark_RN.png", width: 70%)
#image("../graphs/BS_Comparison_RN.png", width: 100%)
#image("../graphs/BS_CAT_Share_RN.png", width: 100%)

=== Welfare Gains

Below are the consumption-equivalent welfare gains (in %) for alternative model specifications relative to their respective benchmark.

#include "../output/welfare_gains.typ"
#image("../graphs/Welfare_vs_CAT_Share_RN.png", width: 70%)

== Simulation Results - Climate Change

=== Risk-Neutral Models
#include "../output/group_sim_RN_climate.typ"

#image("../graphs/BondSchedule_Benchmark_RN_Climate.png", width: 70%)
#image("../graphs/BS_Comparison_RN_Climate.png", width: 100%)
#image("../graphs/BS_CAT_share_RN_Climate.png", width: 100%)

=== Welfare Gains

Below are the consumption-equivalent welfare gains (in %) for alternative model specifications relative to their respective benchmark.

#include "../output/welfare_gains_climate.typ"
#image("../graphs/Welfare_vs_CAT_Share_Climate_RN.png", width: 70%)


  




\

= Conclusion
\




\

= Appendix
\

== Benchnmark model with risk-averse investors 
\


== Solution algorithm
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

