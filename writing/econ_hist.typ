#set par(justify: true)
#set page(numbering: "1" )
#set par(
  first-line-indent: 2em,
  spacing: 0.65em,
  justify: true,
)
#show link: underline

#import "@preview/diverential:0.2.0": *


#align(center, text(17pt)[
  *Economic History* \ *Research Proposal* \ \ _Output-Indexed Bonds for Efficient Debt Management:
Evidence from France in the 1950s
_ \ 
], )

#grid(
  columns: (1fr),
  align(center)[ \
    Ali Benramdane \
  ]
)
\
\
\

= 1. Abstract - Overview of the proposal
\

GDP-linked or other output-indexed bonds can theoretically constitute key tools for sovereign debt stabilization by reducing debt payments during downturns and increasing them during booms. Despite their potential, only a limited number of such instruments have been issued, predominantly in the context of debt restructuring episodes in emerging markets. This scarcity not only restricts the scope for empirical evaluation of their potential merits but also raises doubts about their broader effectiveness as tools for debt management in the eyes of practitioners and academics alike. The proposed research will aim to fill this analytical gap by analyzing a historically overlooked case: the issuance of a French industrial production-linked bond issued in 1956. The analysis will follow three axes. First, it will estimate the risk premium associated with the bond. Second, it will evaluate the impact of industrial production shocks on the sovereign’s debt trajectory before and after the bond’s issuance using a SVAR model. Finally, it will simulate potential trajectories of debt-to-GDP ratios under different levels of debt indexation by applying a stochastic debt sustainability model. Overall, this methodology will provide a comprehensive evaluation, calibrated on French data, of the effectiveness of an output-indexed bond in stabilizing sovereign debt levels compared to plain vanilla instruments.

#pagebreak()
= 2. Motivation and Research Question 
\

Extensive theoretical research sought to explore the benefits of output-index bonds, with notable contributions from Borensztein and Mauro (2004) and Blanchard et al. (2016). Proponents for issuing such instruments have centered their reasoning around the contingent nature of their design, which links interest payments (and/or principal repayment) directly to a sovereign’s economic performance. This feature has the advantage of providing a solid hedge against macroeconomic shocks, as debt servicing levels would increase following economic booms and decrease during economic downturns. As such, by adhering to a formula for debt repayments attached to an output index pre-specified in the debt contract, the issuing government can achieve greater fiscal flexibility while compensating investors during episodes of sustained growth. Overall, these instruments promise a built-in insurance policy for governments and are often presented as quasi-providential tools in the context of mounting debt challenges. Accordingly, output-index bonds have been the object of renewed interest following the COVID-19 crisis and the issuing rise in fiscal deficits across advanced and emerging economies. 

Yet, despite seemingly overwhelming benefits, very few governments have historically relied on these instruments. The economic literature has identified only a limited number of issuances, which have mainly followed episodes of debt restructurings in emerging markets. Blanchard et al. (2016) mention instruments issued by Bulgaria (1994), Argentina (2005), Greece (2012) and Ukraine (2015). More strikingly, they state that no GDP-linked bond can be accounted for across advanced economies. This issuance puzzle mainly holds two implications of interest:

\

1.	The scope for an empirical evaluation of the impact of output-index bonds on debt sustainability remains limited, especially in advanced economies. As a result, the focus of recent research has been to explore the reasons behind this issuance paradox. For instance, Roch and Roldán (2023) and Igan et al. (2022) have attributed the scarcity of these instruments to persistent novelty and uncertainty risk premia associated with their contingent design in the presence of risk-averse lenders. On the other hand, an alternative stream of the literature has sought to quantitatively assess their potential impact on sovereign debt trajectories by calibrating their models on hypothetical instruments (Mouabbi et al. 2024, Martin et al. 2021). 
2.	The scarcity of real-world examples and empirical evidence raises doubts among practitioners and policy makers about the broader effectiveness of these instruments as tools for debt management.
\

This research proposal aims to directly fill this empirical gap and provide a first empirical assessment of the effectiveness of issuing output-index bonds for debt sustainability by exploring an overlooked historical episode. In their paper “State-Contingent Government Debt: a New Database” (2022), Gonçalo Pina highlights the existence of a French bond with payments linked to industrial production, issued in 1956. This design is analogous to more comprehensive GDP-linked/output-index instruments, and provides an opportunity to empirically measure the impact of such an issuance on France’s debt trajectory up to 1971, the instrument’s maturity date. Therefore, the primary contribution of this proposal consists of leveraging data from this under-explored French contingent instrument, using it as a proxy for output-index bonds, to address the following *research question*: 

\
#align(center)[Does empirical evidence suggest that output-indexed bonds are an effective tool for debt stabilization in advanced economies?]

\

= 3. Data 
\
Key features of France’s industrial production-linked bond can be summarized as follows:
- *Date of issuance*: 1956
-	*Maturity*: 15 years
-	*Annual payment structure* $ = "Coupon of" 5% + 5% × ("IP"_(t-1) - "IP"_1955)$
-	*Share of total debt issuance*: 19%

\

The French bond linked to industrial production was issued in 1956 amid France’s post-war reconstruction efforts and subsequent period of economic boom coined as _Les Trente Glorieuses_. Thus, in a context of sustained economic activity and industrialization of the economy, industrial production emerges as a compelling proxy for economic growth. Additionally, another argument in favor of the significance of the instrument for the analysis lies in the fact that it represented 19% of total debt issuance in 1956, making it a non-trivial component of French debt with a consequential impact on the country’s debt trajectory.

Detailed information on the instrument’s characteristics can be found in government sources, such as _Le Journal Officiel_, as well as archival publications from newspapers such as _Le Monde_. Data on the industrial production index can be found in the publications of France’s national statistics bureau _INSEE_. Finally, yield and price data can be collected from the _Data for Financial History Database_ published by Pierre-Cyrille Hautcœur. However, this database currently offers only partial secondary market data digitized for this instrument. It might thus be necessary to look through additional sources to collect more comprehensive and precise data. These could include asking for access to archival documents from financial institutions such as the _Bourse de Paris_, currently part of Euronext.
\
= 4. Methodology
== 4.1. Overview
\

This research proposal centers around three key methodological components to provide a comprehensive evaluation, calibrated on French data, of the effectiveness of an output-indexed bond in stabilizing sovereign debt levels compared to plain vanilla instruments. First, it will estimate the risk premium associated with the bond. Second, it will evaluate the impact of industrial production shocks on the sovereign’s debt trajectory before and after the bond’s issuance using a SVAR model. Finally, it will simulate potential trajectories of debt-to-GDP ratios under different levels of debt indexation by applying a stochastic debt sustainability model. 
\
== 4.2. Estimating the risk premium - a stylized fact
\

The first step in the analysis will be to provide an overview of the risk premium associated with the French industrial production-linked bond. The rationale behind this step is to empirically quantify the uncertainty premium associated with the contingent instrument, as modeled in the literature. The risk premium $"RP"_(i,t)$ will be computed based on secondary market data from issuance to maturity. It will be defined as the difference between the instrument’s ex-post return $r^("industrial")_(i,t)$ and the return of a plain vanilla bond $r^("safe")_(i,t)$, issued by France in a similar time frame and with a comparable maturity. 
$
"RP"_(i,t) = r^("industrial")_(i,t) - r^("safe")_(i,t)
$
Ex-post returns will be computed following the methodology employed by Jordà, Schularick, et al. (2019), defining ex-post returns as composed of two main components: the yield and the capital gain from the change in the price of the bond.

This equation will enable tracking the evolution of the risk premium over the 15 years between issuance and maturity, identifying variations linked to macroeconomic instability—such as the increased fiscal deficit caused by the Algerian War and inflationary episodes of the 1950s and 1960s—and assessing whether the premium consistently remains positive. Such findings would support the existence of a persistent uncertainty or novelty premium as suggested by the literature.
\
== 4.3. Empirical strategy - SVAR model
\

The second step of the analysis will be to explore a more causal relationship, that between the issuance of the industrial production-indexed bond and debt stability. This goal will be achieved using a structural vector autoregressive analysis (SVAR), modeling the impact of a shock on industrial production debt trajectory before and after the issuance of the instrument. To ensure comparability across time periods, the pre-issuance period will cover 1946-1956, while the post-issuance period will extend through 1966. Both time periods can roughly be categorized as part of the post-WWII reconstruction and industrialization of France. Control variables will be added in the model to account for extraordinary shocks to the economy, potentially including the Algerian war-related spendings. The main equations of the model can be summarized as follows:

\
- *Reduced from equation:*
$
bold(y_t)= sum^L_(I=1) A_I bold(y_(t-I)) + bold(u_t)
$

where:
\
-- $bold(y_t)$: is a vector of variables 
\
--	$bold(u_t)$: error terms
\
--	$A_I$: $n times n$ matrices

\

- *Order of endogenous variables:*

-- $y^1_t:$ Industrial Production
\ 
-- $y^2_t:$ GDP growth
\ 
-- $y^3_t:$ Inflation rate
\ 
-- $y^4_t:$ Primary balance
\ 
-- $y^5_t:$ Industrial production-linked bond yields
\ 
-- $y^6_t:$ Nominal bond yields
\ 
-- $y^7_t:$ Debt-to-GDP ratio

\

In an SVAR model, a variable is not allowed to respond contemporaneously to structural shocks to variables that are ordered after it. Consequently, the order of variables is theoretically grounded to match as closely as possible expected direct economic relationships. For instance, industrial production is allowed to affect GDP growth directly, and bond yields are impacted by variables such as GDP growth and primary balance. Yet, the reciprocal direct relationships between these variables are not permitted in this framework. For the sake of our analysis, the debt-to-GDP ratio responds to shocks in all variables but does not impact any of them directly. While this ordering might overlook some feedback effects between certain variables, it provides a valid framework for the analysis. 

\
- *Structural shocks assumption:*
\

In order to achieve a rigorous identification strategy, the model will seek to identify structural shocks, defined as vectors of uncorrelated structural shocks $e_t$ such that:
$ bold(u_t) = B bold(e_t) $
and 
$ E[bold(e_t) bold(e'_t)] = I $
where $B$ is the Cholesky decomposition of $"Var"(bold(u_t))$

\
For instance, examining the following equation decomposing the error term associated with debt-to-GDP ratio, $e^1_t$ can be interpreted as a shock on industrial production which can directly impact the variable $y^7_t:$
\
$ u^7_t = b_(7,1)e^1_t + b_(7,2)e^2_t + b_(7,3)e^3_t + b_(7,4)e^4_t + b_(7,5)e^5_t + b_(7,6)e^6_t + b_(7,7)e^7_t $

\

The central assumption behind this framework is that an effective contingent instrument should have a stabilizing impact on a sovereign’s debt-to-GDP ratio. While a shock on production should worsen growth outlooks, decrease revenues, and lead to a higher fiscal deficit and higher debt-to-GDP ratio in the context of plain vanilla borrowing instruments, output-linked bonds should free up some budgetary space for the sovereign and mitigate the associated increase in borrowing. As such, this can be monitored by looking at the impulse response functions (IRFs) generated using the SVAR model. Suppose the instrument was efficient in acting as a hedge against macroeconomic shocks. In that case, one can expect to notice a larger response of debt-to-GDP ratio in the IRF prior to 1956 compared to the IRF after issuance, suggesting a less volatile debt trajectory in the presence of the contingent instrument.

While following a rigorous identification process, this strategy may suffer from two key weaknesses. First, the two time periods compared in the context of the analysis are relatively short (ten years each), considering the usage of monthly data for macroeconomic variables. Furthermore, the scope of the impact of output-indexed instruments is limited to only one instrument, which constituted 19% of debt issuance in 1956. Supposing that the two IRFs produce no significant differences between the two time periods, one could argue that a higher level of indexation of total government debt might have led to a different outcome. To address these concerns, the analysis will rely on a modeling strategy calibrated on French data for added flexibility.
\
== 4.4. Modeling strategy - Stochastic Model of Debt Sustainability
\

The final axis of this three-pronged approach will consist of a stochastic model of debt sustainability to simulate debt trajectories with varying levels of government debt-indexation. The paper will present an extension of the model developed by Gosh et al. (2013), which allows the measurement of the maximum level of debt that a sovereign can sustain before credibly risking sovereign default. The main innovation of this proposal will be to introduce the possibility of output-indexed debt. The model will then be calibrated using data spanning the issuance to maturity period of the 1956 French bond. Different simulations will be made based on the level of indexation to evaluate the extent to which output indexation may increase the debt limit and make sovereign debt more sustainable in the event of shocks to output. 

\
- *Original equations following Gosh et al. (2013):*
\
-- _Government budget constraint_

\
$ d_(t+1) - d_t = (r_t - g_(t+1))d_t - s_(t+1) $
\
\
-- _Government’s fiscal reaction function_

\
$ s_(t+1) = mu + f(d_t) + epsilon_(t+1) $
\
where: $d_t$ is one-period debt (as % of GDP), $r_t$ is the real interest rate on debt, $g_(t+1)$ is real GDP growth, $s_(t+1)$ is the primary balance, $f(d_t)$ is the government response to lagged debt, while $mu$ captures all other determinants of $s_(t+1)$ and $epsilon_(t+1)$ is an independent and
identically distributed (i.i.d.) shock to the primary balance

\
- *Extensions:*
\
-- _Debt-to-GDP ratio is now allowed to include a share of indexed debt:_

\
$ d_t = omega d^("nom")_t + (1-omega)d^("output")_t $

\
-- _There are differentiated interest rates for plain vanilla bonds $ r^("nom")_t$, and output-index bonds, $ r^("output")_t$, which integrate shocks to output:_

\
$ r^("nom")_t "for nominal debt" $
$ r^("output")_t = k + g_t + theta^("ouput")_t $
$ g_t = g^* + u_t $
\
where: $d^("nom")_t$ is nominal debt, $d^("output")_t$ is indexed debt, $0 <= omega <= 1$ is a parameter for the share represented by $d^("nom")_t$ in total government debt-to-GDP ratio, $k$ is the fixed coupon, $theta^("ouput")_t$ is the output-indexed bond risk premium, $g^*$ is trend growth, and $u_t "∼" ^"iid" "N(0, σ)"$ represents a shock on output

#pagebreak()
= 5. References


\
- Blanchard, O., Mauro, P., and Acalin, J. (2016), "The case for growth indexed bonds in advanced economies," Peterson Institute Policy Brief PB16–2.
\
- Borensztein, E., and Mauro, P. (2004), "The case for GDP indexed bonds," Economic Policy, 19(38): 166-216.
\
- Data For Financial History database Database, Paris School of Economics, version 05/01/2025. Hautcœur, P.-C., and A. Riva. The Data for Financial History (DFIH) Database. WP XXX. Paris: Paris School of Economics, 2018.
\
- Ghosh, A.R., Kim, J.I., Mendoza, E.G., Ostry, J.D., and Qureshi, M.S. (2013), "Fiscal Fatigue, Fiscal Space and Debt Sustainability in Advanced Economies," Economic Journal, 123: F4-F30. https://doi.org/10.1111/ecoj.12010.
\
- Igan, D., Kim, T., and Levy, A. (2022), "The premia on state-contingent sovereign debt instruments," BIS Working Papers 988, Bank for International Settlements.
\
- Jordà, Ò., Knoll, K., Kuvshinov, D., Schularick, M., and Taylor, A.M. (2019), "The Rate of Return on Everything, 1870–2015," The Quarterly Journal of Economics, 134(3): 1225–1298. https://doi.org/10.1093/qje/qjz012.
\
- Martin, F.E., Meldrum, A., Yan, W. (2021), "No-Arbitrage pricing of GDP-Linked bonds," Journal of Banking & Finance, 126: 106075. https://doi.org/10.1016/j.jbankfin.2021.106075.
\
- Mouabbi, S., Renne, J.P., Sahuc, J.G. (2024), "Debt-stabilizing properties of GDP-linked securities: A macro-finance perspective," Journal of Banking & Finance, 162: 107131. https://doi.org/10.1016/j.jbankfin.2024.107131.
\
- Ostry, J.D., and Kim, J. (2018), "Boosting Fiscal Space: The Roles of GDP-Linked Debt and Longer Maturities," IMF Departmental Paper No. 18/04.
\
- Pina, G. (2022), "State-Contingent Government Debt: a New Database," Credit and Capital Markets – Kredit und Kapital, 55(1): 35-66.
\
- Roch, F., and Roldán, F. (2023), "Uncertainty Premia, Sovereign Default Risk, and State-Contingent Debt," Journal of Political Economy Macroeconomics, University of Chicago Press, 1(2): 334-370.
