---
title: "Tree Growth, Contraction and Recovery: Disentangling Soil and Atmospheric Drought Effects"
echo: false
# jupyter: python3
section-divs: true
toc: true
keep-md: true
---

* authors: Erez Feuer ${ }^{1}$ । Yakir Preisler ${ }^{2,3,4}$ । Eyal Rotenberg ${ }^{4}$ । Dan Yakir ${ }^{4}$ । Yair Mau ${ }^{1}$ <br>${ }^{1}$ Institute of Environmental Sciences, The Hebrew University of Jerusalem, Rehovot, Israel | ${ }^{2}$ Institute of Plant Science - Agricultural Research Organization Volcani Institute, Rishon LeZion, Israel | ${ }^{3}$ Department of Organismic and Evolutionary Biology, Harvard University, Cambridge, Massachusetts, USA | ${ }^{4}$ Earth and Planetary Science Department, Weizmann Institute of Science, Rehovot, Israel
* Plant, Cell & Environment, 2025
* Correspondence: Yair Mau (yair.mau@mail.huji.ac.il)
* Received: 2 February 2025 | Revised: 26 April 2025 | Accepted: 28 April 2025
* Keywords: compound drought | dendrometer | dry forest | growth rate | recovery | resistance
* How to cite:

  > Feuer, E., Preisler, Y., Rotenberg, E., Yakir, D. and Mau, Y. (2025), Tree Growth, Contraction and Recovery: Disentangling Soil and Atmospheric Drought Effects. Plant, Cell & Environment, 48: 6427-6439. https://doi.org/10.1111/pce.15604


#### Abstract

We investigate how soil and atmospheric droughts jointly impact tree growth and recovery dynamics in a semi-arid pine forest, leveraging high-resolution stem diameter variation data and an irrigation experiment. The irrigated plot, where soil drought was mitigated, served as a benchmark to isolate the effects of atmospheric drought and distinguish them from the compound drought conditions experienced by control trees. Using a suite of tools based only on stem diameter variation, we identified growth modes that vary in accordance with soil water availability. Control trees showed negligible growth during the dry season but rapidly recovered with the onset of the wet season, matching the baseline growth rates of the irrigated trees, suggesting minimal compromise in hydraulic functioning. Our main finding is that heatwaves consistently depress stem-expansion rates, regardless of treatment. However, during the dry season, this negative impact diverges sharply between the treatments. Because irrigated trees benefit from a hydraulic buffer supplied by ample soil water and thus retain a positive growth baseline, the depression merely slows their expansion, whereas control trees already near zero are driven into net contraction. These findings offer new understanding of how trees balance growth, contraction, and recovery under varying drought conditions, revealing the pivotal role of soil water in shaping drought responses across seasons. As climate change intensifies the frequency and severity of drought events, this knowledge is critical for anticipating shifts in tree growth and resilience.


## 1 | Introduction

Large tree-mortality events have been recorded across the globe for many decades (Senf et al. 2018; Yu et al. 2019; Powers et al. 2020; Hammond et al. 2022). Atmospheric and soil droughts are two major stressors impacting tree growth and survival, often linked to shifts in rainfall patterns and intensifying atmospheric dryness (Breshears et al. 2013; Trenberth et al. 2014; McDowell et al. 2022). Atmospheric drought relates to periods when the air is hot and dry,
and it is usually quantified by high vapour pressure deficit (VPD) values. Trees' response to high VPD values is often associated with decreased tree carbon reserves, decreased growth, and higher risk of hydraulic failure, among others (Novick et al. 2024). Soil drought denotes periods of time of low soil water content, usually brought about by low precipitation. In the coming decades, we expect worsening of these two kinds of droughts, regarding their intensity, duration and frequency characteristics, posing an even greater threat to tree survival (Meehl and Tebaldi 2004; Dai 2013; Perkins-

[^0]Kirkpatrick and Gibson 2017; Chiang et al. 2021; Dore 2005; Xu et al. 2019). Still worse, the compounding of soil and atmospheric droughts-when both occur together-creates a more complex and intensified stress regime, highlighting the need for a deeper understanding of their combined impacts on ecosystems (Zhou et al. 2019; Yin et al. 2023; Shekhar et al. 2024).

As drought conditions intensify, trees increasingly rely on internal water reserves to sustain essential physiological functions. Drawing on these reserves enables trees to maintain critical processes like photosynthesis, transpiration and osmoregulation while preventing hydraulic failure and loss of turgor (Meinzer et al. 2009; Steppe et al. 2015; Preisler et al. 2022). As soils dry and canopy transpiration outpaces root water uptake, trees draw on internal water reserves, which gradually deplete. This decline in water status restricts growth, reduces carbon sequestration and increases vulnerability, eventually raising the risk of mortality (Steppe et al. 2015; Peters et al. 2021; McDowell et al. 2022). Thus, water storage stands out as a crucial component, supporting tree functioning in the face of escalating drought pressures.

The dynamics of stem growth and internal water storage have been increasingly studied through continuous, high-resolution stem diameter measurements using dendrometers. Dendrometers offer the advantage of real-time monitoring, providing insights into both water status and growth (Zweifel et al. 2016). Dentrometry-based metrics can reveal how water storage supports immediate tree functioning while also illustrating the long-term depletion of water reserves (De Swaef et al. 2015). For instance, analysis of stem diameter variations was used to derive early warning indicators of tree death (Preisler et al. 2020; Andriantelomanana et al. 2024). Zweifel et al. (2016) proposed two metrics: irreversible stem expansion (GRO), which quantifies the historical maximum stem diameter and indicates growth through wood formation, and tree water deficit (TWD), defined as the difference between GRO and the actual stem diameter, which reveals temporary stem shrinkage as trees tap into stored water reserves. This framework has provided useful concepts to talk about tree growth (Zweifel and Häsler 2001), water potential (Dietrich et al. 2018), stomatal conductance (Ziegler et al. 2024), water use strategies (Sánchez-Costa et al. 2015) and the effects of elevated VPD on stem shrinkage (Salomón et al. 2022).

However, a significant question remains largely unanswered: how to disentangle the influence of atmospheric and soil drought on plant growth and resilience (Novick et al. 2024). These two types of drought often occur together, compounding their effects (Yin et al. 2023). Consequently, the same negative effects on trees associated with high VPD are also associated with low soil water content, making it difficult to determine the individual contribution of each factor to the overall stress on tree growth. Zweifel et al. (2005) proposed a phenomenological model to deal with this question, showing that physiological responses to VPD depend on soil water content. Preisler et al. (2023) found that when eliminating soil drought, even under extreme VPD conditions ( $>5 \mathrm{kPa}$ ), Aleppo pine trees will maintain high assimilation despite the extreme conditions. Additionally, a recent study by Vargas Zeppetello et al. (2023) suggests that VPD has been overstated in its impact over ecosystem evapotranspiration, and that soil moisture is the most relevant state variable to understand surface water
conductance. These findings underscore the need to reevaluate the relative roles of atmospheric and soil drought, with growing evidence pointing to soil moisture as a key driver of plant resilience and ecosystem function.

Our goal here is to reveal how tree growth is impacted by soil and atmospheric droughts. We analyzed stem diameter variations from an irrigation experiment in a semi-arid pine forestan expansion of the experiment covered by Preisler et al. (2023). We developed new methods for heatwave characterization and introduced a suite of tools for assessing growth and resilience. These methods aim to deepen our understanding of tree functioning under complex drought conditions and to provide insights into the fate of forested ecosystems in a warming and more variable climate.

## 2 | Methods

## 2.1 | Study Site and Experimental Design

The study was conducted at the Yatir forest, a semi-arid forest located at the northern edge of the Negev desert in Israel $\left(31.345^{\circ} \mathrm{N}, 35.052^{\circ} \mathrm{E}, 550-700 \mathrm{~m}\right.$ elevation). The managed forest, predominated by Aleppo pine (Pinus halepensis), was planted in the 1960s. The climate in this region is Mediterranean, characterized by hot and dry summers (mean July temperature: $25^{\circ} \mathrm{C}$ ) and mild, wet winters (mean January temperature: $10^{\circ} \mathrm{C}$ ) with mean-annual rainfall 229 mm (calculated for the years 2000-2022), concentrated in months December-May. The forest is subjected to several dry and short heatwaves throughout the year, where VPD can reach values of up to 6.5 kPa (Tatarinov et al. 2016).

Two adjacent plots were established: a control plot with natural soil moisture levels and a plot that received additional irrigation. These plots, which are separated by a 30 -metre-wide buffer zone, have similar topographic and ecological features, including slope, tree density and tree age. Out of the $20-30$ trees in each plot, 7 in the control plot and 6 in the irrigation plot were equipped with band dendrometers. Irrigation began on 14 May 2017, with water supplied daily via drip irrigation according to the monthly average potential evapotranspiration (PET) data from the Israel Meteorological Service. In 2020 and 2021, the irrigation rate was reduced to $80 \%$ and $50 \%$ of PET, respectively. Additional details on the experimental site at the Yatir forest can be found in previous publications (Grünzweig et al. 2007; Tatarinov et al. 2016; Preisler et al. 2019, 2023). Unlike the agricultural context, where irrigation is primarily used to boost yields, the aim of this setup was twofold. First, it allowed us to distinguish between the effects of compound droughts in the control plot and those of atmospheric droughts alone in the irrigated plot, where soil drought was mitigated. Second, the irrigated plot served as a soil drought-free benchmark against which the growth of the control trees could be compared.

## 2.2 | Season Classification

The precipitation regime in the Yatir forest imposes a clear seasonal pattern in soil moisture throughout the year
(Preisler et al. 2019). In order to capture qualitative differences of tree behaviour as a function of soil drought, we divided the year into four seasons: wetting, wet, drying and dry. The wetting season starts on the first rainfall event of the hydrological year, and ends when precipitation reaches 35 mm , which is approximately the rain needed to pass the transpirable soil water content threshold for the Yatir forest (Klein et al. 2014; Preisler et al. 2019). The wet season follows, lasting until the date corresponding to $80 \%$ of that year's total precipitation. We found that $80 \%$ is approximately the time of divergence of growth rate between the trees in the control and irrigated plots, as described in Section 3. The drying season then begins, lasting for 60 days. Finally, the dry season follows, lasting until next year's wetting season.

## 2.3 | Heatwave Classification and Characterization

In this study, we use dendrometer data to assess whole tree water status. Water status is the outcome of tree water balance, whose input is soil water uptake and output is transpiration. Transpiration's major drivers are elevated atmospheric demand events, characterized by high VPD values, hereafter simply 'heatwaves'. When discussing heatwaves, we have two main goals: identifying their duration, and attributing to each of them a severity score (see Rez et al. (2024) for an extended discussion).

As will be shown in Section 3, there are rich seasonal dynamics to the tree water status. In order to fully capture these dynamics, we chose to classify season-specific heatwaves by analyzing instantaneous VPD percentiles rather than absolute values (Robinson 2001). We calculated VPD percentiles using 26 years of available $10-\mathrm{min}$ frequency weather data for the nearby meteorological station (Shani station; Israel Meteorological Service). The calculation was done by pooling (aggregating) all VPD values from a 2-week window around $1-\mathrm{h}$ intervals (Fischer and Schär 2010). For example, if the VPD percentile at 10:30 on 14 April 2019 is 80, it means that the VPD value at that time is in the 80th percentile of all VPD values from 10:00-11:00 in the 7-21 April span in the years 1997-2023. This method allows us to capture the shifts in VPD relative to the distribution with sub-daily resolution. Time periods that exhibited VPD percentile values above 50 , allowing for up to a 6-h tolerance in dips below 50, are considered potential 'heatwave events'. This pooling of heatwaves separated by short intervals is called the inter-event time method, and it is standard in droughtidentification practices in hydrology (Tallaksen et al. 1997). We are left with a large number of identified potential events, with interesting edge cases. There will be short events that last for just a few hours but are intense (high VPD percentiles), and other much longer events of many days, whose VPD percentile values hover just above 50 . In order to prioritize VPD percentile strength over long duration, we computed each event's severity as

$$
\begin{equation*}
\text { severity }=\int_{t_{1}}^{t_{2}}\left(\frac{\text { VPD percentile }}{50}-1\right)^{\phi} d t \tag{1}
\end{equation*}
$$

where time, and therefore severity, are in days. The time instants $t_{1}$ and $t_{2}$ denote the beginning and end of a given event. A full day at VPD percentile $=50$ will yield a severity of 0 , while a full day at VPD percentile $=100$ will yield a severity of 1 . The parameter $\phi$
controls how much more the high-VPD percentile values count with respect to lower values. For $\phi=1$, VPD percentile $=100$ counts twice as much as 75, while for $\phi=2$ it counts four times as much. In this paper, we chose $\phi=2.5$, and potential heatwave events will be considered as such when their severity surpasses the threshold of 0.03 . To be sure, there will always be some arbitrariness in defining a heatwave event, but we tried to strike a balance between complexity and generality. In order to be more strict or lax regarding one's definition of a heatwave event, it suffices to choose other values for $\phi$ and the severity threshold. See Figure S1 for a representation of heatwaves and their severity during an 8 -month interval. Normalized severity is defined as the severity divided by the duration of the event (i.e., divided by $t_{2}-t_{1}$ ), therefore, it is also interpreted as the mean daily heatwave severity.

## 2.4 | Flux Measurements

Flux measurements were performed using the eddy covariance technique. An instrumented tower operates at the centre of Yatir Forest since 2000, following Euroflux methodology (Aubinet et al. 1999; Grünzweig et al. 2003). The system uses a 3D sonic anemometer (Gill R-50; Gill Instruments, Lymington, UK) and a closed-path infrared gas analyser (LI-7000, LI-COR, Lincoln, NE, USA) to measure $\mathrm{H}_{2} \mathrm{O}$ and $\mathrm{CO}_{2}$ fluxes. The tower is also equipped with a full meteorological station, providing measurements of air temperature, relative humidity, precipitation and wind speed. Raw data were analyzed with the use of EddyPro software (Li-Cor, Lincoln, NE, USA) in a half-hour time step. Outliers and spikes were detected and removed with the use of the double-differenced time series, using the median of absolute deviation about the median (Papale et al. 2006). Gap filling was performed with the marginal distribution sampling (MDS) methodology and flux partitioning was based on the night-time fluxes method (Reichstein et al. 2005). The above post-processing analyses were performed with the use of the REddyProc R-package (Wutzler et al. 2018).

## 2.5 | Dendrometer Measurements

Each tree in this study was equipped with a band dendrometer (EMS, Brno, Czech Republic) at breast height ( 1.3 m ) measuring variations in stem circumference. These measurements were divided by $\pi$ to obtain variations in diameter at breast height (DBH). In this study, we aimed to identify shifts in DBH dynamics driven by atmospheric events, beyond the usual daily expansion and contraction of the trunk. To isolate this broader trend, we applied a 1-day rolling average, effectively filtering out the daily signal while retaining the underlying temporal pattern. From DBH alone, we derive a number of useful metrics: absolute growth (GRO), absolute growth rate (GRO rate), TWD, resistance ratio $(\Omega)$, Tree REecovery indeX (T-REX) and DBH slope, to be detailed below. The Python code that computes these metrics is available at https://doi.org/10.5281/zenodo.15382092.

### 2.5.1 | GRO

The absolute growth is the historic maximum DBH, called GRO in the zero-growth model proposed by Zweifel et al. (2016).

![](./images/95fb60ad-f5ab-42da-9d2a-c7bd5b362d35-04_981_1277_108_394.jpg)
FIGURE 1 | Calculation of Tree REcovery indeX (T-REX). T-REX captures daily trunk recovery ability, rising by 1 for every day with increased shrinkage and resetting when expanding to a prior state. Walk-through: The dotted grey line shows the GRO curve (Zweifel et al. 2016), which can be understood as the historical maximum diameter. Whenever the tree diameter (black line) coincides with GRO, T-REX equals zero. Whenever the stem contracts over a span of 1 day (red blocks), T-REX is incremented by one (thus T-REX's unit is 'day'). Upon stem expansion (blue blocks), T-REX either stays the same or goes down in value. Its updated value is the same as the T-REX for the previous day with equal diameter at breast height (DBH) (see dashed grey arrows). [Color figure can be viewed at wileyonlinelibrary.com]

### 2.5.2 | Growth Rate

Growth rate is a non-negative quantity, defined as the smoothed time derivative of the GRO, obtained by a 45-day SavitzkyGolay differentiation filtering of order one. Because GRO consists of plateau periods interrupted by sudden jumps, smoothing is necessary to minimize sharp spikes in the derivatives, resulting in a more stable, easy to interpret time series. It is important to note that growth rate relates solely to the derivative of GRO, that is, it considers only the dynamics of the tree stem. To be sure, different parts of the tree, such as needles and stem, have their own seasonal growth patterns (Maseyk 2006; Maseyk et al. 2008).

### 2.5.3 | TWD

TWD was calculated as the difference between the GRO and the DBH (Zweifel et al. 2016).

### 2.5.4 | DBH Slope

The DBH slope represents the average rate of change in stem diameter over a given time window, serving as an indicator of expansion or shrinkage. It is calculated as the slope of a leastsquares linear fit.

### 2.5.5 | $\Omega$

The resistance ratio ( $\Omega$ ) is the proportion of days (unitless), within a given time window, that registered tree diameter expansion. As such, $\Omega$ ranges between 0 and 1 . High $\Omega$ values signify a tree's ability to withstand disturbances over that period, while low values indicate susceptibility. We calculated $\Omega$ for all trees using a rolling window of 45 days.

### 2.5.6 | T-REX

T-REX evaluates tree recovery abilities from stem contractions. T-REX is calculated thus. First, the GRO and TWD are downsampled to daily frequency using the first value of each day. T-REX is zero whenever the DBH coincides with the GRO (i.e., TWD is zero). It is incremented by 1 for each day in which the TWD increases, therefore, the units of T-REX are day. If TWD decreases, T-REX takes the value it had when TWD last reached this level. A step-by-step demonstration of the calculation using a synthetic DBH time series is illustrated in Figure 1. T-REX values represent the effective number of days a tree has experienced stem shrinkage since it last registered absolute growth. An increasing T-REX indicates sustained contraction and a lack of recovery, whereas a rapid decline reflects a return to growth and successful recovery. As such, T-REX serves as a recovery index: higher values denote lower recovery capacity. Under similar environmental stress, trees with higher T-REX
values are those that recovered less along the way. We propose a recursive algorithm for computing the T-REX in the Supporting Information, this algorithm was used for all T-REX calculations throughout this study.

## 2.6 | Growth Modes

We classified tree growth into six modes, shown in Figure 2. The modes are determined for a given time window by their $\Omega$ and T-REX values. We differentiate between two main cases: modes with an increasing GRO (left half of the figure) and those with a stagnant GRO (right half). Among the increasing-GRO modes, as $\Omega$ decreases, there is a gradual shift from full growth, to disrupted growth, and then to spurt growth. We use the term full growth to describe stable and uninterrupted growth, while disrupted growth reflects active growth with transient setbacks, and spurt growth captures brief bursts of growth following prolonged periods of zero growth. Conversely, in stagnant-GRO modes, changes in the T-REX slope-from positive, to nearzero, to negative-reflect a transition from contraction to standstill, and finally to recovery. We refer to contraction as a phase of ongoing shrinkage, standstill as a state where contraction and expansion alternate without net growth-reflecting a balance between water loss and partial replenishment-and recovery as a period of expansion that restores previously lost volume, without yet reaching the point of renewed growth.

## 2.7 | Atmospheric Events and Response

The complete climatic time series was segmented and categorized into four types of atmospheric events: heatwave, post-heatwave, rain and post-rain. We have already discussed heatwave classification above. Rain events begin when precipitation is first recorded and end when it stops. Rain events occurring on the same day or
on contiguous days were merged into a single rain event, starting with the first precipitation and ending with the last in that combined period. All periods following a heatwave or rain event that were not otherwise classified were labelled as post-heatwave and post-rain, respectively. We quantified the tree's response to these short atmospheric events using the DBH slope.

## 2.8 | Statistical Analyses

### 2.8.1 | Linear Mixed-Effects Model

The connection between heatwave severity and DBH slope was determined using a linear mixed-effects model. In this model, heatwave normalized severity, treatment (control or irrigated), and season were chosen as fixed effects, and individual tree IDs were included as a random effect. We examined both the twoway and three-way interactions involving heatwave normalized severity. We focused on only two seasons-the dry and the wet-as they represent the extremes in soil moisture conditions and exhibit less variability within each season. We chose the wet season as the default season because, during that time, water is generally available in the soil and similar across both plots. As the name suggests, control was used as the default treatment in this analysis. Fit was done using the statsmodels Python package. Marginal and conditional $R^{2}$ were calculated according to Nakagawa and Schielzeth (2013).

### 2.8.2 | Permutation Test

Quantifying the difference between the DBH slope of the control and irrigated groups requires special care. The responses of all trees to all atmospheric events are not independent-they consist of the responses of a few unique trees to many unique events, which are identical across all trees.

![](./images/95fb60ad-f5ab-42da-9d2a-c7bd5b362d35-05_831_1771_1583_146.jpg)
FIGURE 2 | Growth mode classification. Each column illustrates an example of a growth mode, based on 1 month of real data. Rows show the DBH trend (solid black) and GRO (dotted grey), as well as the corresponding $\Omega$ (blue) and T-REX (red) values for that 1-month window. [Color figure can be viewed at wileyonlinelibrary.com]

To compare the responses between trees in the control and irrigated plots, we used the median of the differences in their responses across all atmospheric events. Specifically, for each unique event (e.g., rain or heatwave), we first calculated the median response of the trees in the control plot and the median response of the irrigated trees. We then computed the difference between these two medians for each event. After obtaining the differences for all events, we took the median of those differences to quantify the overall response difference between the two groups. Our null hypothesis was that this median difference would be zero, meaning that the median responses of irrigated and control trees would be the same across all atmospheric events.

Since each atmospheric event affects all trees in both groups, responses for a single event are dependent because they come from the same trees. To account for this dependency, we computed $p$-values using an exact permutation test. In this test, we shuffled the treatments of the trees across all atmospheric events. This means that each permutation shuffles the treatment of all 13 trees ( 7 control and 6 irrigated), and this new labelling is applied to all atmospheric events. This approach preserves the dependence structure within each tree and accurately reflects how consistent tree responses affect all comparisons.

The number of valid permutations was the total number of permutations, excluding permutations within the same group, as this would produce identical results. The exact number can be calculated using the binomial coefficient, in this study $-n_{c}=7$ control trees and $n_{i}=6$ irrigated trees, that is $\binom{n_{c}+n_{i}}{n_{c}}=1716$. We then adjusted the $p$ values using the Benjamini-Hochberg procedure to account for the false discovery rate (Benjamini and Hochberg 1995).

## 3 | Results

## 3.1 | Growth Rate

Irrigated trees exhibited growth rates strongly linked with average temperatures and sunlight hours: maximum growth rates occurred when temperatures were high and the photoperiod was long, and vice versa (see Figure 3). As the amount of irrigation decreased, the spread in growth rates among irrigated trees also decreased. In 2021, when irrigation was further reduced from $80 \%$ to $50 \%$ of PET, growth rates noticeably declined, with the peak mean growth rate being roughly half of that observed in previous years with higher irrigation levels.

Trees in the control plot showed peak growth rates during the wet season with relatively low temperatures and light hours but high water availability. During that time, growth rates were comparable to the mean growth rates of the irrigated trees. The peak in growth rates coincided with the peak in Net Ecosystem Productivity (NEP), as measured by the adjacent flux tower. During the drying and dry periods, as soil water availability decreased, control growth rates declined to near-zero. This decline also corresponded with the NEP trend. The dry season of 2020 was unique, as control growth rates were higher than the previous years. That year also had elevated precipitation levels of 341 mm . Whenever the wetting period started, within a window of $1-2$ months, the growth rates of the control trees rose to match those of the irrigated trees, and remained similar until the drying period.

A closer look at the growth differences and similarities between the control and irrigated plots is provided in Figure 4 using the $\Omega$ and T-REX metrics. The resistance ratio $\Omega$ of irrigated trees mirrors their growth rate trend, with high values (near 1) during the dry season and lower values (around 0.5) during the wet season. In contrast, the control plot maintained $\Omega$ values

![](./images/95fb60ad-f5ab-42da-9d2a-c7bd5b362d35-06_581_1266_1551_401.jpg)
FIGURE 3 | Growth rates of trees in the irrigated and control plots vary seasonally, responding to temperature, photoperiod and water availability. Irrigated trees are by design not water-limited, peaking with high temperatures and long photoperiods, while control trees show water-limited growth, peaking during the wet season with high water availability. (a) Climate and irrigation data for the Yatir forest. Black numbers above the panel indicate annual precipitation for each hydrological year. Irrigation treatment started on 14 May 2017, and was set to the monthly average PET. In 2020 and 2021, irrigation was decreased to $80 \%$ and $50 \%$ of PET, respectively. The temperature curve represents the 30 -day rolling mean of the air temperature at 2 meters. The sunlight curve indicates the number of daylight hours per day, with a minimum of 10 h and a maximum of 14 h . (b) Growth rates of irrigated and control trees, shown as the GRO rate. Curves represent the derivative of the 45-day rolling mean of the GRO, with thin lines indicating individual trees and thick lines representing their mean (control: $n_{c}=7$, irrigated: $n_{i}=6$ ). NEP data were acquired from the flux tower in Yatir, representing the entire Yatir forest, which is growing under the same conditions as the control trees. Wetting, wet, drying and dry seasons are determined according to the precipitation regime as described in Section 2. [Color figure can be viewed at wileyonlinelibrary.com]

![](./images/95fb60ad-f5ab-42da-9d2a-c7bd5b362d35-07_1298_1767_108_148.jpg)
FIGURE $4 \mid$ Resistance ratio, T-REX and growth mode dynamics. The top 3 panels show the dynamics of GRO rate, $\Omega$ and T-REX. Thin lines indicate individual trees; thick lines represent the mean (control: $n_{c}=7$, irrigated: $n_{i}=6$ ). GRO rate and $\Omega$ were calculated using a 45-day rolling window. The bottom panels show growth mode dynamics for irrigated and control trees. Stagnant-GRO modes were defined as periods when mean T-REX exceeded 7 days and ended once it dropped below 2 days. To better capture the onset, these modes were backdated by 7 days from the threshold crossing. Colour shading (orange to blue) reflects the T-REX slope over the 45-day window. All other days were classified as increasingGRO modes, with shading from white to green representing increasing $\Omega$ values. [Color figure can be viewed at wileyonlinelibrary.com]

around 0.5 over the entire 5 -year period. On a seasonal scale, however, trees in both plots showed coinciding $\Omega$ values during the wet season. Notably, in the later years of the experiment (2020 and 2021), when irrigation amounts were reduced, the $\Omega$ values of the irrigated plot decreased, approaching those of the control plot.

T-REX showed strong seasonal fluctuations in the control plot, with high values during the dry season (reaching above 30 ) and low values during the wet season (near 0 ). The opposite pattern was observed in the irrigated plot, where T-REX peaked during the wet season and was negligible during the dry. Here too, the two treatments showed similar T-REX values during the wet season. The relatively wet hydrological year of 2020 was followed by an anomaly in which T-REX registered low values for control trees during the dry season.

Constructing a time series of growth modes reveals a clear picture of how each plot responded over the course of the experiment (see Figure 4). Irrigated trees remained in increasing-GRO modes for most of the year, typically showing
full growth during the dry season and shifting towards spurt growth in the wet season. As irrigation levels declined, full growth became less frequent. In contrast, control trees exhibited minimal growth throughout the year. They spent most of the time in stagnant-GRO modes-cycling through contraction during the dry season, followed by standstill, and then recovery during the wetting and wet seasons-showing only brief periods of active growth.

## 3.2 | Seasonal Responses to Atmospheric Events

Aiming at revealing correlations between growth dynamics and both seasons and atmospheric events, we analyzed the statistics of change in DBH slope during these events, as shown in Figure 5, and as detailed in Section 2. Each panel shows probability distributions of the DBH slope for each treatment (control in yellow, irrigated in blue), for all combinations of seasons and atmospheric events, excluding the rain and postrain events in the dry season, due to insufficient data for a meaningful statistical analysis. Stem expansion and contraction

![](./images/95fb60ad-f5ab-42da-9d2a-c7bd5b362d35-08_1631_1778_104_146.jpg)
FIGURE 5 | Control and irrigated trees respond indistinguishably during the wet season across all atmospheric conditions. The figure compares the distribution of the DBH slope across all atmospheric events (heatwave, post-heatwave, rain, post-rain) and seasons (wetting, wet, drying, dry) between control and irrigated trees. As detailed in the legend in the bottom right, probability densities for irrigated trees are coloured blue, and control are coloured yellow, both plotted in the vertical direction, and arranged in a configuration similar to violin plots. The median values are marked with a black line, while the interquartile range is shaded with a higher colour saturation. The fraction of number of samples to number of events is indicated over each distribution. Each panel, labeled with a lowercase letter from a-n, showcases a unique combination of atmospheric event and season to facilitate reference in the text. [Color figure can be viewed at wileyonlinelibrary.com]

correspond to positive and negative DBH slope values, respectively.

Across most combinations of seasons and atmospheric conditions, the control and irrigated trees showed statistically distinct DBH slope distributions (see Table S1). However, during the wet season, under all atmospheric conditions, the two treatments were not significantly different, with consistently high $p$ values indicating similar responses. A similar lack of difference was also observed during post-rain events in the drying season. During rainfall events, both control and irrigated trees exhibited stem expansion across all seasons. The irrigated trees
generally showed higher median expansion rates than the control trees. Under heatwave conditions, control trees consistently showed negative median DBH slope values, indicating stem contraction. The irrigated trees under heatwaves, in contrast, mostly contracted during the wetting and wet seasons but expanded during the drying and dry seasons. When comparing heatwave and post-heatwave conditions within each treatment group, DBH slope values were consistently higher in the postheatwave period. In the dry season, the DBH slope distribution during and post-heatwaves showed a notably narrow interquartile range (IQR) in control trees, while the irrigated trees displayed a broader IQR.

![](./images/95fb60ad-f5ab-42da-9d2a-c7bd5b362d35-09_956_1525_104_271.jpg)
FIGURE 6 | More severe heatwaves are associated with decreasing DBH slopes. (a and b) Linear mixed model regression curves for wet and dry seasons and both treatments. Mean daily heatwave severity, treatment and season were chosen as fixed effects, and individual trees were included as a random effect. Dots represent the response of individual trees to each heatwave. Coefficients for regression curves can be seen in Table S2. (c-e) Illustration of the impact of heatwaves on DBH slope, for two individual trees (one control and one irrigated). (c) VPD time series with shading indicating heatwave severity. Periods classified as heatwaves are also marked with a light grey background across ( $\mathrm{c}-\mathrm{e}$ ) to provide contextual alignment. DBH time series for an irrigated (d) and a control (e) tree. The light shaded coloured lines denote half-hourly DBH data, while the thicker lines show the DBH trend, without the daily fluctuations. Black lines indicate the linear best fit for DBH during two distinct periods, one when a heatwave occurred, marked with a star, and one post-heatwave, marked with a circle. For the irrigated tree, the DBH slope was $104.2 \mu \mathrm{~m} \cdot$ day ${ }^{-1}$ post-heatwave and $36.6 \mu \mathrm{~m} \cdot$ day $^{-1}$ during the heatwave. For the control tree, the DBH slope was $6.9 \mu \mathrm{~m} \cdot$ day $^{-1}$ post-heatwave and $-10.2 \mu \mathrm{~m} \cdot$ day $^{-1}$ during the heatwave. [Color figure can be viewed at wileyonlinelibrary.com]

## 3.3 | Heatwave Impact

To assess how heatwave severity affects stem expansion and contraction, we employed a linear mixed-effects regression model. In this model, the DBH slope during heatwaves was modelled as a function of normalized heatwave severity, season (wet or dry), and treatment (control or irrigated), with individual trees included as a random effect. We focused on the wet and dry seasons, as they represent the two extremes of soil moisture availability, providing a clear contrast. The full model results are presented in Table S2. Marginal and conditional $R^{2}$ values were 0.20 and 0.23 , respectively.

For both seasons and treatments, higher normalized heatwave severity was associated with increased stem contraction rates, as indicated by negative DBH slopes of greater magnitude (Figure 6a,b). The regression slope did not show statistically significant differences across seasons or treatments. In contrast, the intercept varied significantly: it was higher in the dry season for both treatments, with a much stronger increase observed for the irrigated plot. During the wet season (Figure 6a), control and irrigated trees exhibited similar responses-mild stem contraction during weaker heatwaves, with contraction rates increasing as heatwave severity intensified. In the dry season (Figure 6b), control trees followed a similar pattern, but
irrigated trees displayed a qualitatively different response: their stems continued to expand during heatwaves, and greater heatwave severity only reduced the rate of expansion rather than reversing it into contraction.

To illustrate this point, Figure 6d,e show the stem diameter change of a representative irrigated tree and control tree over a 45-day period during the dry season. To provide context, Figure 6c displays the corresponding VPD time series, with heatwave periods shaded according to their severity. When no heatwaves occur (e.g., the period marked with a black circle), both trees exhibit stem expansion, consistent with the pattern shown in Figure 5n. In contrast, during heatwaves (e.g., the period marked with a black star), the irrigated tree continues to expand-albeit at a reduced rate-while the control tree exhibits stem contraction, in agreement with the results shown in Figure 5 m .

## 4 | Discussion

## 4.1 | Growth Rates

The comparison between the growth rates in the control and irrigated plots raises a few interesting patterns.

First, the harsh environmental conditions in the Yatir forest result in high stem growth rates during the wet (and colder) season. This contrasts with the typical seasonal growth pattern observed in pine trees (Maseyk 2006; Maseyk et al. 2008; Rotenberg and Yakir 2010), where peak growth generally occurs during the warm season. Interestingly, the irrigation experiment brings the pine trees closer to this usual growth pattern. Although phenology is not the main focus of this paper, it is important to note that not all tissues in the control trees grow best in the wet season. For instance, needles in control trees have been observed to reach their highest growth rates in June (Maseyk 2006; Maseyk et al. 2008).

Second, we see that the growth of trees in the control plot seems to be primarily water-limited, while irrigated trees are not (Littell et al. 2008; Dudney et al. 2023). For the irrigated trees, water limitation became evident in 2021 when irrigation was reduced to $50 \%$ of PET, which, although sufficient to support growth during the drying and dry seasons, led to diminished $\Omega$ values and growth rates, shifting from the typical full growth to disrupted or even spurt growth modes. In contrast, control trees exhibit a clear waterlimited response. During the drying and dry seasons, they shift into a stagnant-GRO mode, characterized by growth rates declining to near zero. During this period, T-REX initially rises (contraction mode), then stabilizes at a plateau (standstill mode) that persists as long as no precipitation occurs. This plateau coincides with the lowest xylem water potential values recorded throughout the year (Preisler et al. 2022). We hypothesize that during this phase, trees adopt an extremely conservative water-use strategy to avoid the risk of irreversible hydraulic failure. The stagnant-GRO mode implies minimal to no actual stem growth, though some limited growth may still occur even under hydraulic deficit conditions (Zweifel et al. 2016). Pine forests across a wide climatic range can exhibit plasticity in their growth patterns (Rotenberg and Yakir 2010), adapting the timing of their peak carbon assimilation to the most favourable conditions. Findings from the irrigation experiment indicate that individual pine trees also have this plasticity, enabling fast adaptation to favourable conditions within weeks or months (Preisler et al. 2023). This is evidenced by the fast divergence between irrigated and control trees at the onset of the irrigation experiment, see Figures 3 and 4.

Third, the analysis of the time series shows no evidence of irreversible damage to the control trees' ability to grow following the prolonged dry season, during which they remain in standstill mode. As the wetting period begins, T-REX declines (recovery mode), and within $3-4$ weeks, the trees transition into increasing-GRO mode, with growth rates rising to match those of the irrigated trees. This pattern is corroborated by measurements of net photosynthesis and transpiration reported by Preisler et al. (2023). If there were some impairment in plant hydraulics such as high percent loss of conductivity (PLC), we would expect sub-optimal growth rates compared to the irrigated trees, which serve as a standard for trees with minimized hydraulic damage. Wagner et al. (2022) showed that the hydraulic damage to the trees in the Yatir forest is mainly in their needles and does not reach high embolism levels.

Fourth, we observed a clear alignment between the growth rates of the trees in the control plot and the flux tower NEP trends. Generally, when growth rates are positive, NEP suggests that the forest acts as a carbon sink, while near-zero growth rates indicate a shift
towards the forest acting as a carbon source. This qualitative agreement reinforces our decision to use the rate of change in GRO as a proxy for actual tree growth in the Yatir forest.

The year of 2020 provided two interesting deviations from the patterns above, which we attribute to the above-average precipitation of the 2020 hydrological year. This year registered 63\% greater precipitation than the average of the 20 preceding years, putting it in the 95th percentile. The first deviation is that most trees in the control plot showed unusual positive growth rates during the dry period. We hypothesize that higher than average soil water availability could have sustained positive growth rates even during the dry season. The second deviation is that although irrigated trees were provided only with $80 \%$ of PET, their growth rates seem comparable to previous years. Here, two hypotheses come to mind: higher soil water availability could have offset the decreased irrigation amounts, or irrigation at $80 \%$ of PET simply does not trigger water limitation responses.

Lastly, we would like to raise our choice of dividing the year into seasons based on precipitation dynamics, instead of doing so based on measured soil water availability. In the spirit of this paper, we strived to extract maximal insight from easily measurable variables. In this sense, precipitation rates are a simpler measure than soil moisture content, since the interpretation of the latter depends on site-specific factors such as soil surface, depth of measurement, soil texture and its spatial heterogeneity, soil stoniness, etc. (Preisler et al. 2019). This choice is validated by the alignment between season classification and observed growth modes. In irrigated trees, full growth occurs during the dry season, and spurt growth during the wet. In control trees, we generally observe increasing-GRO modes during the wet season, contraction during the drying season, standstill during the dry season and recovery during wetting. The time series of growth modes offers an effective and intuitive summary of the trees' qualitative state. Importantly, this approach is independent of the absolute DBH length units and relies solely on timedependent metrics ( $\Omega$ and T-REX). We propose that such a framework will be especially useful for comparing tree states across individuals of different sizes, species and environments.

## 4.2 | Seasonal Responses to Atmospheric Events

The convergence of DBH slope distributions between control and irrigated trees during the wet season-across all atmospheric conditions-underscores the capacity of the two cohorts to exhibit similar growth dynamics when both soil and atmospheric conditions are similar (see Figure 5e-h). This alignment supports our earlier interpretation of comparable growth rates under high soil moisture availability and reinforces the idea of tree plasticity: when water is not limiting, even trees subjected to contrasting long-term treatments respond similarly. The consistent divergence in drier seasons, on the other hand, highlights the central role of soil water availability in shaping differences in growth responses.

Rainfall events consistently triggered stem expansion across all seasons and treatments, likely reflecting a combination of growth and rapid water uptake (see Figure 5c,g,k). The elevated DBH slopes during these events highlight the trees' ability to
grow and quickly restore internal water reserves. Some of the observed expansion may also result from bark swelling due to wetting, independent of actual growth (Oberhuber et al. 2020).

Outside the wet season, irrigated trees generally exhibited higher DBH slopes than control trees, reflecting the effect of increased soil water. This pattern held even during rain events, where the same rainfall had different outcomes. We hypothesize that in the irrigated plot, the water was readily available for uptake, while in the control plot, part of it may have served to replenish depleted soil storage potentially explaining the slightly lower slopes (see Figure 5c,k).

DBH slopes were consistently higher in the post-heatwave periods compared to the heatwave periods in the same season, reflecting relief from atmospheric stress. These post-heatwave conditionscharacterized by below-median VPD-were generally more favourable for tree growth across both treatments. Importantly, high atmospheric demand during heatwaves imposes a toll on trees regardless of soil water status. However, the nature of this tollwhether it leads to reduced growth rates or a transition to contraction-depends on soil moisture availability and season. These findings raise important questions about the role of heatwave severity (not considered in the analysis presented in Figure 5) in shaping DBH slope responses, particularly in driving the transition from expansion to contraction-an issue explored in more detail in the following subsection.

## 4.3 | Heatwave Impact

The regression analysis reveals a consistent pattern: as the mean daily heatwave severity becomes more intense, trees show increasingly reduced DBH slopes, indicating slower growth or faster contraction. This trend was similar across both treatments and seasons, suggesting that the effect of atmospheric stress on stem dynamics operates independently of soil water status. Specifically, increases in the mean daily severity of a heatwave were associated with proportional reductions in DBH slope, regardless of whether trees were in wet or dry conditions. While the model explained only a modest share of the overall variance (conditional $R^{2}$ of 0.23)-pointing to the role of additional influencing factorsthe negative relationship between heatwave severity and DBH slope was statistically robust (see Table S2).

The differences in intercepts from the regression model help explain the contrasting DBH slope patterns observed during heatwaves in the wet and dry seasons (Figure 5e,m). In the wet season, both control and irrigated trees exhibited similar responses, with overlapping DBH slope distributions (Figure 5e) and comparable sensitivity to increasing heatwave severity (Figure 6a). In contrast, during the dry season, irrigated trees maintained positive DBH slopes-indicative of continued stem expansion-while control trees, that experienced compound drought, showed mild contraction (Figure 6b). This divergence can be attributed to the elevated intercept observed for irrigated trees in the dry season, reflecting a higher baseline growth rate. We hypothesize that growth is the key factor driving this difference: in the dry season, irrigated trees continue to grow actively due to long photoperiod combined with high soil water availability, allowing them to absorb the impact of heatwaves through a reduction in growth rate rather than a full
transition to contraction. As mean daily heatwave severity increases, this expansion slows but rarely reverses. In contrast, control trees experience little to no growth during the dry season and thus lack the buffer of ongoing expansion, making them more susceptible to contraction under compound drought. This highlights the critical role of baseline growth dynamics in mediating stem responses to extreme atmospheric conditions.

This pattern is clearly illustrated in the example shown in Figure 6c-e. Over a 45-day period during the dry season, both a representative irrigated tree and a control tree exhibit stem expansion in the absence of heatwaves (black circle), reflecting background (post-heatwave) conditions. However, during heatwaves (black star), their responses diverge sharply: the irrigated tree maintains stem expansion, though at a slower rate ( $36.6 \mu \mathrm{~m} \cdot$ day $^{-1}$ vs. $104.2 \mu \mathrm{~m} \cdot$ day $^{-1}$ ), while the control tree shifts to contraction. This case highlights the buffering capacity of high baseline growth in irrigated trees, which allows them to remain in expansion mode even under stress. In contrast, the control tree, with minimal baseline growth (DBH slope of $6.9 \mu \mathrm{~m} \cdot$ day $^{-1}$ ), lacks this buffer and responds to atmospheric demand with net stem shrinkage. These individual trajectories reinforce the broader findings: soil water availability does not eliminate the negative effect of heatwaves, but it significantly alters the outcome-slowing growth instead of reversing it.

## 4.4 | Last Considerations

The analysis of DBH slope across seasons and atmospheric events (see Figures 5 and 6) also included the later years of the irrigation experiment, 2020 and 2021, when irrigated trees received $80 \%$ and $50 \%$ of PET, respectively. Notably, the 2020 hydrological year also exhibited growth rate anomalies, likely related to unusually high precipitation (see Figure 3). Despite these factors, the analysis still identified clear cases where trees in the control and irrigated plots differed significantly, highlighting the robustness of the observed patterns.

In this study, we focused on dry heatwaves, a common feature of Mediterranean climates. To characterize these heatwaves, we prioritized VPD over temperature, as VPD more directly reflects the atmospheric demand for water. Our analysis centred on the impact of VPD on tree water status and growth. However, extreme temperatures, which we did not investigate in this study, pose a significant threat to tree health and functioning. It is important to acknowledge that our findings do not necessarily apply in cases of extreme heat. High temperatures alone can cause irreversible damage to tree tissues, including mortality (Wahid et al. 2007; Teskey et al. 2015; Still et al. 2023).

## 5 | Conclusion

In this study, we explored how pine trees respond to the pressures of soil and atmospheric droughts, with a particular focus on stem growth dynamics. By leveraging continuous dendrometer measurements from an irrigation experiment in a semiarid Mediterranean forest, we disentangled the roles of soil water availability and atmospheric demand in shaping tree behaviour across seasons and atmospheric events.

Our findings highlight the importance of soil water in sustaining growth and modulating responses to short-term atmospheric drought. When soil moisture was not limiting, treesregardless of long-term treatment-exhibited similar growth dynamics, underscoring their physiological plasticity. In contrast, under soil drought, trees displayed divergent responses: irrigated trees maintained growth during heatwaves, while control trees experienced contraction.

To capture and interpret these dynamics, we utilized a suite of dendrometer-based metrics-GRO rate, $\Omega$ and T-REX-that together provide a robust framework for assessing growth, contraction and recovery. Notably, $\Omega$ and T-REX rely solely on stem diameter measurements and are unit-independent, making them broadly applicable across species, sizes, and measurement systems. GRO rate tracks irreversible stem expansion, $\Omega$ quantifies resistance through the fraction of time spent expanding, and T-REX captures recovery ability through the effective number of contraction days since irreversible growth last occurred. Together, these tools offer a multidimensional view of tree growth modes.

As climate change intensifies the intensity, duration and frequency of droughts, there is a growing need to better understand how trees respond to shifting water availability. This study offers a new lens for interpreting high-resolution stem diameter variation data, revealing how growth dynamics-expansion, contraction, and recovery-unfold across a range of soil and atmospheric conditions. These insights enhance our ability to monitor tree functioning in real time, offering potential early warning indicators of stress and supporting efforts to track tree growth across natural, agricultural and urban environments.

## Acknowledgements

E.F. was supported by a PhD scholarship from the Israel Ministry of Environmental Protection and the Israel Council for Higher Education. D.Y. and E.R. were supported by grants from the Israel Science Foundation (ISF, Grant 2481/22), the Weizmann Institute SAERI/IES and the Keren Kayemet L'Israel (KKL-JNF, Grant 714798). Y.M. acknowledges the support of the Research Center for Agriculture, Environment and Natural Resources of the Hebrew University of Jerusalem. The authors would like to thank Jonathan Friedman and Niv DeMalach for useful discussion.

## Conflicts of Interest

The authors declare no conflicts of interest.

## Data Availability Statement

Data and code are available at <https://doi.org/10.5281/zenodo.15382092>. Additional data will be provided upon request.

## References

Andriantelomanana, T., T. Améglio, S. Delzon, H. Cochard, and S. Herbette. 2024. "Unpacking the Point of no Return Under Drought in Poplar: Insight From Stem Diameter Variation." New Phytologist 242, no. 2: 466-478.

Aubinet, M., A. Grelle, A. Ibrom, et al. 1999. " Estimates of the Annual Net Carbon and Water Exchange of Forests: The Euroflux Methodology." In Advances in Ecological Research 30, 113-175. Elsevier.

Benjamini, Y., and Y. Hochberg. 1995. "Controlling the False Discovery Rate: A Practical and Powerful Approach to Multiple Testing." Journal of the Royal Statistical Society: Series B (Methodological) 57, no. 1: 289-300.

Breshears, D., H. Adams, D. Eamus, et al. 2013. "The Critical Amplifying Role of Increasing Atmospheric Moisture Demand on Tree Mortality and Associated Regional Die-Off." Frontiers in Plant Science 4: 4.

Chiang, F., O. Mazdiyasni, and A. AghaKouchak. 2021. "Evidence of Anthropogenic Impacts on Global Drought Frequency, Duration, and Intensity." Nature Communications 12, no. 1: 2754.

Dai, A. 2013. "Increasing Drought Under Global Warming in Observations and Models." Nature Climate Change 3, no. 1: 52-58.

De Swaef, T., V. De Schepper, M. W. Vandegehuchte, and K. Steppe. 2015. "Stem Diameter Variations as a Versatile Research Tool in Ecophysiology." Tree Physiology 35, no. 10: 1047-1061.

Dietrich, L., R. Zweifel, and A. Kahmen. 2018. "Daily Stem Diameter Variations Can Predict the Canopy Water Status of Mature Temperate Trees." Tree Physiology 38, no. 7: 941-952.

Dore, M. H. 2005. "Climate Change and Changes in Global Precipitation Patterns: What Do We Know?" Environment International 31, no. 8: 1167-1181.

Dudney, J., A. M. Latimer, P. van Mantgem, et al. 2023. "The EnergyWater Limitation Threshold Explains Divergent Drought Responses in Tree Growth, Needle Length, and Stable Isotope Ratios." Global Change Biology 29, no. 15: 4368-4382.

Fischer, E. M., and C. Schär. 2010. "Consistent Geographical Patterns of Changes in High-Impact European Heatwaves." Nature Geoscience 3, no. 6: 398-403.

Grünzweig, J., I. Gelfand, Y. Fried, and D. Yakir. 2007. "Biogeochemical Factors Contributing to Enhanced Carbon Storage Following Afforestation of a Semi-Arid Shrubland." Biogeosciences 4, no. 5: 891-904.

Grünzweig, J., T. Lin, E. Rotenberg, A. Schwartz, and D. Yakir. 2003. "Carbon Sequestration in Arid-Land Forest." Global Change Biology 9, no. 5: 791-799.

Hammond, W. M., A. P. Williams, J. T. Abatzoglou, et al. 2022. "Global Field Observations of Tree Die-Off Reveal Hotter-Drought Fingerprint for Earth's Forests." Nature Communications 13, no. 1: 1-11.

Klein, T., E. Rotenberg, E. Cohen-Hilaleh, et al. 2014. "Quantifying Transpirable Soil Water and Its Relations to Tree Water Use Dynamics in a Water-Limited Pine Forest." Ecohydrology 7, no. 2: 409-419.

Littell, J. S., D. L. Peterson, and M. Tjoelker. 2008. "Douglas-Fir Growth in Mountain Ecosystems: Water Limits Tree Growth From Stand to Region." Ecological Monographs 78, no. 3: 349-368.

Maseyk, K. 2006. "Carbon and Oxygen Isotope Composition of Phloem Sap Sucrose as an Indicator of Canopy Photosynthesis." PhD thesis, Weizmann Institute of Science.

Maseyk, K. S., T. Lin, E. Rotenberg, J. M. Grünzweig, A. Schwartz, and D. Yakir. 2008. "Physiology-Phenology Interactions in a Productive Semi-Arid Pine Forest." New Phytologist 178, no. 3: 603-616.

McDowell, N. G., G. Sapes, A. Pivovaroff, et al. 2022. "Mechanisms of Woody-Plant Mortality Under Rising Drought, $\mathrm{CO}_{2}$ and Vapour Pressure Deficit." Nature Reviews Earth \& Environment 3, no. 5: 294-308.

Meehl, G. A., and C. Tebaldi. 2004. "More Intense, More Frequent, and Longer Lasting Heat Waves in the 21st Century." Science 305, no. 5686: 994-997.

Meinzer, F. C., D. M. Johnson, B. Lachenbruch, K. A. McCulloh, and D. R. Woodruff. 2009. "Xylem Hydraulic Safety Margins in Woody Plants: Coordination of Stomatal Control of Xylem Tension With Hydraulic Capacitance." Functional Ecology 23, no. 5: 922-930.

Nakagawa, S., and H. Schielzeth. 2013. "A General and Simple Method for Obtaining $R^{2}$ From Generalized Linear Mixed-Effects Models." Methods in Ecology and Evolution 4, no. 2: 133-142.

Novick, K. A., D. L. Ficklin, C. Grossiord, et al. 2024. "The Impacts of Rising Vapour Pressure Deficit in Natural and Managed Ecosystems." Plant, Cell \& Environment 47, no. 9: 3561-3589.

Oberhuber, W., M. Sehrt, and F. Kitz. 2020. "Hygroscopic Properties of Thin Dead Outer Bark Layers Strongly Influence Stem Diameter Variations on Short and Long Time Scales in Scots Pine (Pinus sylvestris L.)." Agricultural and Forest Meteorology 290: 108026.

Papale, D., M. Reichstein, M. Aubinet, et al. 2006. "Towards a Standardized Processing of Net Ecosystem Exchange Measured With Eddy Covariance Technique: Algorithms and Uncertainty Estimation." Biogeosciences 3, no. 4: 571-583.
Perkins-Kirkpatrick, S., and P. Gibson. 2017. "Changes in Regional Heatwave Characteristics as a Function of Increasing Global Temperature." Scientific Reports 7, no. 1: 1-12.

Peters, R. L., K. Steppe, H. E. Cuny, et al. 2021. "Turgor-A Limiting Factor for Radial Growth in Mature Conifers Along an Elevational Gradient." New Phytologist 229, no. 1: 213-229.

Powers, J. S., G. Vargas G, T. J. Brodribb, et al. 2020. "A Catastrophic Tropical Drought Kills Hydraulically Vulnerable Tree Species." Global Change Biology 26, no. 5: 3122-3133.

Preisler, Y., J. M. Grünzweig, O. Ahiman, et al. 2023. "Vapour Pressure Deficit Was not a Primary Limiting Factor for Gas Exchange in An Irrigated, Mature Dryland Aleppo Pine Forest." Plant, Cell \& Environment 46, no. 12: 3775-3790.

Preisler, Y., T. Hölttä, J. M. Grünzweig, et al. 2022. "The Importance of Tree Internal Water Storage Under Drought Conditions." Tree Physiology 42, no. 4: 771-783.

Preisler, Y., F. Tatarinov, J. M. Grünzweig, et al. 2019. "Mortality Versus Survival in Drought-Affected Aleppo Pine Forest Depends on the Extent of Rock Cover and Soil Stoniness." Functional Ecology 33, no. 5: 901-912.

Preisler, Y., F. Tatarinov, J. M. Grünzweig, and D. Yakir. 2020. "Seeking the 'Point of no Return' in the Sequence of Events Leading to Mortality of Mature Trees." Plant, Cell \& Environment 44, no. 5: 1315-1328.

Reichstein, M., E. Falge, D. Baldocchi, et al. 2005. "On the Separation of Net Ecosystem Exchange Into Assimilation and Ecosystem Respiration: Review and Improved Algorithm." Global Change Biology 11, no. 9: 1424-1439.

Rez, L., J. E. Missik, G. Bohrer, and Y. Mau. 2024. "Stem Water Content Is Crucial to Support Fruit Tree Functioning During Heatwaves in a Mediterranean Climate." Preprint, bioRxiv.

Robinson, P. J. 2001. "On the Definition of a Heat Wave." Journal of Applied Meteorology and Climatology 40, no. 4: 762-775.

Rotenberg, E., and D. Yakir. 2010. "Contribution of Semi-Arid Forests to the Climate System." Science 327, no. 5964: 451-454.

Salomón, R. L., R. L. Peters, R. Zweifel, et al. 2022. "The 2018 European Heatwave Led to Stem Dehydration but not to Consistent Growth Reductions in Forests." Nature Communications 13, no. 1: 28.

Sánchez-Costa, E., R. Poyatos, and S. Sabaté. 2015. "Contrasting Growth and Water Use Strategies in Four Co-Occurring Mediterranean Tree Species Revealed by Concurrent Measurements of Sap Flow and Stem Diameter Variations." Agricultural and Forest Meteorology 207: 24-37.

Senf, C., D. Pflugmacher, Y. Zhiqiang, et al. 2018. "Canopy Mortality Has Doubled in Europe's Temperate Forests Over the Last Three Decades." Nature Communications 9, no. 1: 1-8.

Shekhar, A., L. Hörtnagl, E. Paul-Limoges, et al. 2024. "Contrasting Impact of Extreme Soil and Atmospheric Dryness on the Functioning of Trees and Forests." Science of the Total Environment 916: 169931.

Steppe, K., F. Sterck, and A. Deslauriers. 2015. "Diel Growth Dynamics in Tree Stems: Linking Anatomy and Ecophysiology." Trends in Plant Science 20, no. 6: 335-343.

Still, C. J., A. Sibley, D. DePinte, et al. 2023. "Causes of Widespread Foliar Damage From the June 2021 Pacific Northwest Heat Dome: More Heat Than Drought." Tree Physiology 43, no. 2: 203-209.

Tallaksen, L. M., H. Madsen, and B. Clausen. 1997. "On the Definition and Modelling of Streamflow Drought Duration and Deficit Volume." Hydrological Sciences Journal 42, no. 1: 15-33.

Tatarinov, F., E. Rotenberg, K. Maseyk, J. Ogée, T. Klein, and D. Yakir. 2016. "Resilience to Seasonal Heat Wave Episodes in a Mediterranean Pine Forest." New Phytologist 210, no. 2: 485-496.

Teskey, R., T. Wertin, I. Bauweraerts, M. Ameye, M. A. McGuire, and K. Steppe. 2015. "Responses of Tree Species to Heat Waves and Extreme Heat Events." Plant, Cell \& Environment 38, no. 9: 1699-1712.

Trenberth, K. E., A. Dai, G. Van Der Schrier, et al. 2014. "Global Warming and Changes in Drought." Nature Climate Change 4, no. 1: 17-22.

Vargas Zeppetello, L. R., K. A. McColl, J. A. Bernau, et al. 2023. "Apparent Surface Conductance Sensitivity to Vapour Pressure Deficit in the Absence of Plants." Nature Water 1, no. 11: 941-951.

Wagner, Y., F. Feng, D. Yakir, T. Klein, and U. Hochberg. 2022. "In Situ, Direct Observation of Seasonal Embolism Dynamics in Aleppo Pine Trees Growing on the Dry Edge of Their Distribution." New Phytologist 235, no. 4: 1344-1350.

Wahid, A., S. Gelani, M. Ashraf, and M. R. Foolad. 2007. "Heat Tolerance in Plants: An Overview." Environmental and Experimental Botany 61, no. 3: 199-223.

Wutzler, T., A. Lucas-Moffat, M. Migliavacca, et al. 2018. "Basic and Extensible Post-Processing of Eddy Covariance Flux Data With REddyProc." Biogeosciences 15, no. 16: 5015-5030.

Xu, C., N. G. McDowell, R. A. Fisher, et al. 2019. "Increasing Impacts of Extreme Droughts on Vegetation Productivity Under Climate Change." Nature Climate Change 9, no. 12: 948-953.

Yin, J., P. Gentine, L. Slater, et al. 2023. "Future Socio-Ecosystem Productivity Threatened by Compound Drought-Heatwave Events." Nature Sustainability 6, no. 3: 259-272.

Yu, K., W. K. Smith, A. T. Trugman, et al. 2019. "Pervasive Decreases in Living Vegetation Carbon Turnover Time Across Forest Climate Zones." Proceedings of the National Academy of Sciences 116, no. 49: 24662-24667.

Zhou, S., Y. Zhang, A. Park Williams, and P. Gentine. 2019. "Projected Increases in Intensity, Frequency, and Terrestrial Carbon Costs of Compound Drought and Aridity Events." Science Advances 5, no. 1: eaau5.

Ziegler, Y., R. Grote, F. Alongi, T. Knüver, and N. K. Ruehr. 2024. "Capturing Drought Stress Signals: The Potential of Dendrometers for Monitoring Tree Water Status." Tree Physiology 44, no. 12: tpae140.

Zweifel, R., M. Haeni, N. Buchmann, and W. Eugster. 2016. "Are Trees Able to Grow in Periods of Stem Shrinkage?" New Phytologist 211, no. 3: 839-849.

Zweifel, R., and R. Häsler. 2001. "Dynamics of Water Storage in Mature Subalpine Picea abies: Temporal and Spatial Patterns of Change in Stem Radius." Tree Physiology 21, no. 9: 561-569.

Zweifel, R., L. Zimmermann, and D. Newbery. 2005. "Modeling Tree Water Deficit From Microclimate: An Approach to Quantifying Drought Stress." Tree Physiology 25, no. 2: 147-156.

## Supporting Information

Additional supporting information can be found [here](https://onlinelibrary.wiley.com/action/downloadSupplement?doi=10.1111%2Fpce.15604&file=pce15604-sup-0001-SuppMat.pdf){target="_blank"}.


