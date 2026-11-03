---
title: "Losses Outlast Gains in Northern Hemisphere Tree Growth Under Climate Change"
echo: false
# jupyter: python3
section-divs: true
toc: true
keep-md: true
---

::: {.paper-authors}
Erez Feuer^1^, Stefan Klesse^2^, Guy Amir^3^, Nadav Peleg^4,5^, Yair Mau^1^
:::

::: {.paper-affil}
^1^ Institute of Environmental Sciences, The Hebrew University of Jerusalem, Rehovot, Israel &nbsp;&middot;&nbsp; ^2^ Swiss Federal Institute for Forest, Snow and Landscape Research WSL, Birmensdorf, Switzerland &nbsp;&middot;&nbsp; ^3^ Department of Computer Science, Cornell University, Ithaca, NY, USA &nbsp;&middot;&nbsp; ^4,5^ University of Lausanne, Lausanne, Switzerland
:::

---

::: {.paper-meta}
Preprint &middot; bioRxiv &middot; 2026 &middot; doi: [10.64898/2026.09.06.749676](https://doi.org/10.64898/2026.09.06.749676)

Correspondence: Erez Feuer (erez.feuer@mail.huji.ac.il), Yair Mau (yair.mau@mail.huji.ac.il)
:::

> **How to cite:** Feuer, E., Klesse, S., Amir, G., Peleg, N. and Mau, Y. (2026). Losses Outlast Gains in Northern Hemisphere Tree Growth Under Climate Change. bioRxiv. https://doi.org/10.64898/2026.09.06.749676

---

#### Abstract

Under climate change, will forests grow more or less? The answer differs from place to place, obscuring the overall direction. Here we trace it by learning nonlinear climate–tree-growth relationships from 4,110 Northern Hemisphere tree-ring chronologies recorded since 1902, spanning more than 12 million ring-width measurements, and projecting them through the twenty-first century under CMIP6 scenarios. Projected growth declines, and gains and losses are temporally asymmetric: once losses emerge, they are rarely reversed (90% retained), whereas gains fade (56% retained). This asymmetry holds in every well-sampled region and strengthens under higher forcing. The decline itself is driven by warming and rising atmospheric water demand, whose broadly negative contribution outweighs precipitation-driven gains. Across the Northern Hemisphere, growth does not just move between gains and losses; it is drawn steadily downward.

## Introduction

Forests are a major component of the terrestrial carbon cycle and influence climate through both carbon storage and biophysical feedbacks ([6](#ref-6), [43](#ref-43)). In turn, climate change reshapes the thermal and hydrological conditions under which forests grow, shifting both average climate and extremes, with consequences for growth, physiological function and survival ([1](#ref-1), [36](#ref-36), [8](#ref-8)). These outcomes are neither uniformly positive nor negative; thus, the response of tree growth to climate change remains difficult to generalize.

This difficulty arises because climate–tree-growth relationships typically follow nonlinear response curves ([10](#ref-10), [15](#ref-15), [4](#ref-4), [53](#ref-53)). The impact of climate change — the change in growth it produces — depends not only on the magnitude of a climate shift but also on where along the response curve that shift occurs, so the same change can produce positive, negative, large, or small impacts (Fig. 1a). In multidimensional climate space, this starting point includes the state of other climate variables: a change in one dimension can have different impacts depending on the background climate (Fig. 1b). Together, these relationships define a context-dependent response surface across which progressive climate shifts translate into impacts on growth that may change in magnitude or direction over time (Fig. 1c).

How these impacts evolve depends on the balance among the three principal climatic controls on tree growth: air temperature, precipitation, and atmospheric water demand ([51](#ref-51), [4](#ref-4), [20](#ref-20), [19](#ref-19)). Where low temperature or a short growing season limits growth, warming can enhance it; but as warming continues, rising atmospheric water demand can carry the same forests from this energy-limited regime toward water limitation, where further warming suppresses growth ([15](#ref-15), [4](#ref-4), [50](#ref-50), [49](#ref-49)). Precipitation affects growth through its contribution to water supply, but realized water availability depends on both supply and atmospheric demand; when this balance shifts toward deficit, it can suppress growth ([25](#ref-25), [56](#ref-56)). Rising atmospheric water demand, expressed as increasing vapor pressure deficit (VPD), can suppress growth by driving water loss and stomatal closure, with the strongest effects during droughts ([40](#ref-40), [20](#ref-20), [55](#ref-55), [38](#ref-38)). Because climate change shifts these three controls simultaneously, the open question is how their effects combine, whether they offset, amplify, or reverse one another, to determine the overall growth response.

Global projections of vegetation response to climate change already exist, but they largely target carbon uptake or canopy greenness rather than directly measured tree growth, from which they are often decoupled ([9](#ref-9), [18](#ref-18)). For growth itself, as captured by tree-ring measurements, the literature has largely followed two paths. Regional and continental studies have projected growth under climate scenarios, in some cases capturing nonlinear responses, but resolving these relationships in detail only for particular regions or species ([31](#ref-31), [15](#ref-15), [10](#ref-10), [28](#ref-28), [29](#ref-29), [35](#ref-35)). Broad cross-continent tree-ring syntheses have described growth sensitivity to climate, focusing on linear relationships within historical climate ([4](#ref-4), [56](#ref-56)). These lines of work have stayed apart: where coverage has been broad, the response has been treated linearly or left unprojected; where it has been modeled nonlinearly or projected forward, the scope has remained regional or continental. Our aim here is to bring them together, i.e., to characterize nonlinear climate–tree-growth response surfaces across a broad, multi-biome tree-ring network, and to project how twenty-first-century climate change moves forests across them.

We compiled a broad, multi-biome dataset of 4,110 Northern Hemisphere ring-width index (RWI) chronologies, drawn primarily from the International Tree-Ring Data Bank (ITRDB) ([39](#ref-39)) with additional European beech records ([29](#ref-29)), representing more than 12 million tree-ring observations. As climatic predictors, we used precipitation, maximum temperature, and VPD from the observed CRU TS v4.09 record ([21](#ref-21)), each represented by four 3-month summaries over the annual window most influential for ring formation ([44](#ref-44)). We estimated empirical climate–tree-growth response surfaces with XGBoost, fitting RWI against these predictors for 1902–1980 and allowing nonlinearities and interactions to be learned from the observations rather than prescribed. We then applied the model to observed climate and CMIP6 projections under SSP2-4.5, with the high-forcing SSP5-8.5 as a limiting case, estimating growth impacts as changes in predicted RWI relative to the 1902–1980 baseline.

Because our response variable is detrended RWI, the model diagnoses climate-driven changes in radial growth rather than absolute wood production or carbon uptake ([3](#ref-3), [9](#ref-9)). We find that projected climate change decreases growth overall, with losses outlasting gains across regions through the twenty-first century. Decomposing these responses shows that the decline is driven primarily by a broadly negative warming–demand contribution that often outweighs positive water-supply contributions.

![](./images/figure1.png)

**Figure 1 | Nonlinear climate–tree-growth responses shape divergent growth trajectories under identical climate shifts.** Schematic of the conceptual framework linking nonlinear climate–tree-growth relationships to the growth impact of climate change. **(a)** The impact of a climate shift — the change in predicted growth it produces — depends on where it occurs along a nonlinear response curve: the same shift can raise growth on a rising portion of the curve or lower it beyond an optimum. **(b)** In multidimensional climate space, impact also depends on the background state of other climate variables, so an identical shift in one dimension can produce positive, neutral, or negative responses under different background conditions. **(c)** Viewed through time as growth relative to baseline, the same response geometry yields different trajectories: sustained gains, transient gains that return toward baseline, or sustained losses.

## Projected growth declines and broadens

To evaluate the combined impact of change across all climate predictors, we applied the model to 30-year climate windows extending from observed CRU TS climate into CMIP6 projections. Throughout, we summarize responses on a 1° grid, assigning each chronology to a grid cell and taking the median response within it, so that densely sampled regions do not dominate (Methods). Relative to the baseline, predicted RWI declined progressively through the twenty-first century (Fig. 2a). As projected climate change intensified, with binned-grid maximum-temperature anomalies reaching +3.7°C, statistically significant growth changes emerged predominantly below baseline: by late century (2071–2100), 37% of grid cells declined against 10% that gained (Fig. 2b).

The distribution in RWI change both decreased and widened, with its interquartile range increasing from 2.36 to 4.75 percentage points. This widening was asymmetric: both the lower and upper quartiles shifted toward greater losses, but the lower moved roughly three times farther than the upper (3.54 versus 1.15 percentage points). Under the high-forcing SSP5-8.5 scenario, these changes were amplified: the median declined further, and the upper quartile shifted below zero (Fig. S1a). The widening was also evident within individual CMIP6 models, rather than arising from intermodel disagreement (Fig. S2).

These late-century responses were spatially structured (Fig. 2c,d). We summarized regional responses for the seven IPCC AR6 reference regions with at least 95 mapped cells ([24](#ref-24)) (Fig. 2d). Decline was strongest and most consistent in the Mediterranean (MED) and in western and central Europe (WCE), where statistically significant negative responses made up 85% and 54% of mapped cells and median growth fell by 4.2% and 2.5%. Other regions showed weaker or mixed responses: in eastern North America (ENA) and northern Europe (NEU), significant positive and negative responses were comparably frequent. In several regions, including central North America (CNA), the change in most cells was not significant, with projected responses remaining within baseline variability. In other regions, most notably northern Central America (NCA), cells entered out-of-domain (OOD) climate space not represented during model training and were excluded to avoid unsupported extrapolation (see Methods); OOD conditions became considerably more widespread under SSP5-8.5 (Figs. S1b and S4).

Across the network, then, projected growth declined overall but unevenly: decisively in parts of Europe, weakly or mixed elsewhere, and within baseline variability across much of interior North America. These distributions, however, count cells at each point in time without following what becomes of any individual cell, and cannot show whether a given departure from baseline endures or reverses. We therefore tracked how each cell evolved from the baseline through the end of the century.

![](./images/figure2.png)

**Figure 2 | Projected radial-growth responses decline and broaden asymmetrically under future climate change.** **(a)** Distributions of one-degree binned grid-cell median predicted relative ring-width index (RWI) change relative to the 1902–1980 baseline, calculated in rolling 30-year windows from 1981–2010 through 2071–2100 using observed CRU TS climate followed by CMIP6 SSP2-4.5 projections. Predicted RWI change is the percentage change in a chronology's XGBoost-predicted ring-width index in a target window relative to its 1902–1980 baseline (%ΔRWI), aggregated to grid cells; a value of −4% means growth 4% below baseline. Colors follow the map scale and indicate predicted RWI change; gray histogram components are in-domain cells whose change was not statistically significant after Benjamini–Hochberg FDR correction (q > 0.05), and colored components are statistically significant cells (q ≤ 0.05). **(b)** Rolling-window fractions of mapped grid cells with negative, neutral, or positive responses, with the binned-grid annual maximum-temperature anomaly relative to baseline on the right-hand axis. **(c)** Late-century map of binned median predicted RWI change. Colored cells are in-domain grid cells with statistically significant change; gray cells are in-domain but not significant, and black cells are outside the training climate domain. **(d)** Late-century in-domain grid-cell response distributions for AR6 reference regions with at least 95 mapped grid cells.

## Losses are retained while gains fade

To follow individual grid-cell trajectories, we tracked them from their first departure into a positive or negative state to the end of the century, retaining the last in-domain state for cells that subsequently left the training climate domain (Fig. 3a). Negative states rarely reverted: 90% remained negative by 2100 (95% CI 87–92%), against 56% (95% CI 49–62%) of positive states (Fig. 3b). Under high-forcing SSP5-8.5, the split sharpened further: negative retention rose to 97%, so that almost no decline reversed, while positive retention fell to 46% (Fig. S5b). Negative retention exceeded positive retention in all seven well-sampled AR6 regions (80–100% versus 0–77%; sign test P = 0.016), and a region-blocked bootstrap placed the full-network gap at 34 percentage points (95% CI 20–52).

This asymmetry arose from retention rather than entry: in eastern North America (ENA) and northern Europe (NEU), cells entered positive states more often than negative ones (43% versus 12% and 41% versus 31%, respectively), yet negative states were retained more often through 2100 (Fig. 3b). Following cells by time since their first entry rather than to a fixed date, the two sides diverged: negative states grew more persistent while positive states decayed, the gap widening steadily with time since entry (Fig. 3c). By 50 years after entry, 92% of negative states were retained against 58% of positive states under SSP2-4.5, and 97% against 47% under SSP5-8.5 (Fig. S5c). Losses therefore consolidate while gains fade with time since departure.

When either state was left, cells almost always returned to neutral rather than crossing to the opposite sign. Under SSP2-4.5, positive cells returned to neutral in 43% of cases and negative cells in 10%, while direct crossings from one sign to the other were rare in both directions (1% positive-to-negative and under 1% in the reverse direction) (Fig. 3a). This directional imbalance strengthened under high-forcing SSP5-8.5, where downward crossings rose to 14% and upward crossings fell to zero (Fig. S5a).

These unequal transition dynamics caused negative responses to accumulate while positive responses dissipated. We next trace these changes to their climatic origin.

![](./images/figure3.png)

**Figure 3 | Negative growth responses are retained while gains fade under SSP2-4.5.** Each grid cell is tracked from its first departure into a positive or negative state to its last in-domain state, following the rolling 30-year windows; cells that later leave the climate domain are held at that last state (Methods). **(a)** Cell-level transitions from the first non-neutral state to the last state, for the full network and the seven well-sampled AR6 reference regions. **(b)** Retention of first-entry positive and negative states: the fraction of cells still on the same side of the boundary at their last state, with point size scaled by the number of first-entry cells. **(c)** Retention as a function of time since first entry, for positive (blue) and negative (red) entries. Negative retention rises and positive retention falls as time since entry lengthens, widening the gap between them.

## Warming and VPD drive the losses

We decomposed projected changes into a water-supply contribution from precipitation and a warming–demand contribution from maximum temperature and VPD, and summarized them at the grid-cell level. Because maximum temperature and VPD are strongly correlated, their individual contributions could not be resolved reliably and were therefore grouped. For the end of the century (2071–2100), both water-supply and warming–demand contributions were expressed relative to baseline as changes in SHAP (Shapley additive explanations; see Methods) values (ΔSHAP; Fig. 4a). The two contributions were opposite in sign across most of the network: under SSP2-4.5, warming–demand was negative in 91% of grid cells while water-supply was positive in 79%.

We partitioned the contribution plane into five regimes: co-enhancement and co-suppression, where both contributions acted in the same direction; supply- and demand-driven responses, where opposing contributions yielded a positive or negative climate net; and neutral responses, where the change was not significant. Under SSP2-4.5, demand-driven loss was the most common non-neutral regime across the network, at 243 of 594 non-neutral grid cells (41%), and the leading negative regime in five of the seven well-sampled AR6 regions (Fig. 4b,c). Co-suppression dominated losses only in western North America (WNA) and the Mediterranean (MED), accounting for 87% of cells in the latter.

The balance of contributions within positive responses shifted with forcing, even though positive responses remained a similar fraction of the network (11% under SSP2-4.5 versus 10% under SSP5-8.5). Within these positive responses, the supply-driven fraction rose from 46% under SSP2-4.5 to 61% under SSP5-8.5, at the expense of co-enhancement, though a co-enhanced core persisted even under high forcing (Fig. S6b). Under stronger forcing, the surviving gains depended increasingly on water supply alone, offsetting a warming–demand contribution that had itself turned negative.

The decomposition identifies warming–demand as the broadly negative contribution underlying the projected decline, but not why the same climate change drives some responses up and others down. This divergence is clearest at the level of individual chronologies: it depends on where each chronology begins on the response surface and how projected change displaces it, which we examine next.

![](./images/figure4.png)

**Figure 4 | A negative warming–demand contribution drives the projected decline against a positive water-supply contribution.** For each grid cell, driver attribution is the change in each group's SHAP contribution from the baseline (ΔSHAP), expressed in the same percent-equivalent RWI units as the growth change itself. **(a)** Late-century (2071–2100) contribution plane under SSP2-4.5, partitioned into five regimes from the signs of the two contributions and the climate net: co-enhancement and co-suppression (both contributions of the same sign), supply-driven and demand-driven (opposing contributions with a positive or negative climate net), and neutral (in-domain but not statistically significant). **(b)** Late-century regime composition for the full sampled network and the seven well-sampled AR6 reference regions. **(c)** Geographic distribution of late-century regimes, shown as the modal regime within each 1-degree grid cell.

## Nonlinearities explain divergent impacts

To determine why projected climate change produced opposing responses among chronologies, we followed their baseline-to-late-century displacements across the learned climate–tree-growth surface. Four predictors (P4–6, D4–6, T7–9, and T10–12) accounted for approximately 53% of the summed absolute change in attribution among climate predictors by late century (Fig. S7). Their pairwise response surfaces, precipitation–VPD and VPD–temperature, therefore capture much of the geometry underlying the divergence (Fig. 5).

The regional precipitation–VPD surfaces present how contrasting outcomes emerge from the joint climate displacement rather than from either variable alone (Fig. 5a). In northwestern North America (NWN) and northern Europe (NEU), chronologies occupied the lower end of the VPD range, where projected increases in both precipitation and VPD moved them toward higher growth. In central North America (CNA) and eastern North America (ENA), precipitation also increased, but the accompanying rise in VPD carried chronologies across declining portions of the surface and outweighed the positive water-supply contribution. Western North America (WNA) and western and central Europe (WCE) spanned both rising and declining portions of the surface and consequently showed mixed responses. Mediterranean (MED) chronologies combined declining precipitation with increasing VPD, so both components of the displacement acted toward lower growth.

These regional contrasts demonstrate on the learned surface why local climate sensitivity is not equivalent to realized climate-change impact (Figs. 1 and 5a). Sensitivity is the steepness of the surface at a chronology's current climate. Impact is the growth change actually realized, and it depends not only on that steepness but on the direction and distance climate change carries the chronology across the surface. Western North America (WNA) makes the distinction clear: there, short displacements that cut straight across the response contours changed growth more than longer ones that ran nearly along them (Fig. 5a). Projected impact therefore depends on both displacement magnitude and its alignment with the local response gradient, and cannot be inferred from sensitivity alone.

The same dependence on starting climate and displacement direction structured the response to warming. Displacements across the D4–6 × T7–9 surface were predominantly associated with lower growth, with positive responses confined largely to its coldest and lowest-VPD edge (Fig. 5b). The D4–6 × T10–12 surface instead contained a broader rising region in colder, low-VPD climate space, where warming could increase growth before reaching a crest beyond which further warming and atmospheric demand reduced it (Fig. 5c). The growth effect of warming therefore depended on both the three-month window and the climate state from which the displacement began.

The bounded rising region of the D4–6 × T10–12 surface also provides a mechanism for the lower retention of gains. Chronologies beginning on its rising side can initially be displaced toward higher growth, but continued movement along the same broad climate trajectory carries them toward and eventually beyond the crest. The same progression can therefore produce an early gain followed by declining growth as warming and atmospheric demand intensify. Nonlinear response geometry thus links the concentration of gains in colder, low-demand climate space to their lower persistence under continued change.

Together, these two-dimensional surfaces show that projected climate impact emerges from the interaction between starting climate, the direction and magnitude of climate displacement, and the nonlinear response geometry crossed along the way. Within the learned climate–tree-growth relationships, this geometry shows how positive water-supply contributions can be outweighed by warming–demand losses, and how gains can emerge along part of a climate trajectory but weaken as displacement continues.

![](./images/figure5.png)

**Figure 5 | Projected growth impact depends on how climate change moves chronologies across the nonlinear surface.** Each panel is the model's learned growth response over a pair of climate predictors. Arrows indicate how groups of chronologies move through climate space, from their mean present-day climate (base) to their mean late-century climate (tip). Arrow color denotes the impact on growth, with red shades indicating declines and blue shades increases. Gray contour lines mark levels of equal predicted growth. Black dots mark the observed baseline climates of the underlying chronologies. **(a)** April–June VPD (D4–6) versus April–June precipitation (P4–6), shown separately for the seven well-sampled regions. **(b, c)** April–June VPD (D4–6) versus July–September (T7–9) and October–December (T10–12) maximum temperature, pooled across the full network. All panels show SSP2-4.5 late-century climate (2071–2100) relative to the 1902–1980 baseline.

## Discussion

Across a broad, multi-biome tree-ring network, twenty-first-century climate change is projected to decrease radial growth, but the central result is a temporal asymmetry: losses, once established, are rarely reversed, whereas gains fade. This asymmetry held in every well-sampled region in the Northern Hemisphere and strengthened under higher forcing. The combined effect of warming and rising atmospheric water demand was negative across most of the network and, in many regions, outweighed precipitation-driven gains, producing widespread losses.

These projections rest on an inherently non-mechanistic partial model: beyond climate, radial growth carries biological trends, disturbance, and other influences a climate model cannot capture ([12](#ref-12)). Our static predictors (species, elevation, and chronology identity) absorb non-climatic variation, so that the learned climate response need not account for it. A grouped permutation test confirms that this signal is climatic: when the climate–tree-growth link is broken with static structure left intact, model skill collapses to near zero (Methods; Fig. S9). The model learns this response directly from the data with gradient-boosted trees rather than through prescribed functional forms. Across many species and chronologies, it reproduces the expected redistribution of growth limitation from temperature toward water and atmospheric demand ([4](#ref-4), [20](#ref-20), [55](#ref-55), [41](#ref-41)). The projected changes are numerically small, a few percent of each chronology's baseline growth, but because ring width is detrended, they are departures from each chronology's own expected growth, not fractions of a larger total, and they recur as displacement continues. The model underestimates the amplitude of year-to-year climate responses, predicting within-chronology good-minus-bad-year contrasts about two-thirds as large as observed (Methods).

The provisional nature of gains has a structural origin. Regional studies have long reported warming-driven gains that later weaken or reverse in cold-limited and high-latitude forests ([15](#ref-15), [50](#ref-50), [35](#ref-35), [49](#ref-49)): warming relaxes a temperature limitation and growth rises, but only within a bounded region of climate space, beyond which continued displacement carries a chronology over the peak of its response into decline. Our network resolves these regional findings as one nonlinear response, gain and loss depending on where continued warming carries each chronology relative to the peak. Our decomposition finds other gains resting instead on water supply, sustained while the warming–demand contribution is already negative, consistent with observations of growth held up by precipitation where warming is adverse ([14](#ref-14), [34](#ref-34)). Across both, projected gains are provisional — sustained only where a favorable balance holds, and eroded as rising warming and atmospheric demand tip it.

Several boundaries constrain this interpretation. Detrended ring width records climate-driven changes in radial growth, not absolute wood production or carbon uptake, from which drought and allocation shifts can decouple it ([9](#ref-9), [26](#ref-26), [7](#ref-7)); it does, however, track the increment of above-ground woody biomass, the pool in which trees hold most of their carbon ([2](#ref-2), [45](#ref-45)). Our projections depend on the climate models and scenarios that drive them; we use twelve CMIP6 models spanning different families, which sample structural climate-model uncertainty, and headline the mid-range SSP2-4.5, closest to current emission trajectories ([22](#ref-22)), with high-forcing SSP5-8.5 as an upper bound. A deeper assumption is space-for-time substitution: as a chronology's climate changes, it moves into conditions the model has learned from other sites that experience them today ([28](#ref-28), [17](#ref-17)). Because ring width is standardized, the model uses relative growth within each chronology rather than absolute differences between chronologies. We hold species, elevation, and growth history fixed, project relative to each chronology's own baseline, and, because a data-driven model cannot reliably extrapolate beyond its training climate, withhold prediction beyond the training climate domain. Our network is geographically and taxonomically uneven and biased toward climate-sensitive sites ([27](#ref-27), [3](#ref-3)), with sparse coverage across much of the globe, so inference is strongest where sampling is densest. Finally, several processes lie outside the model altogether: we do not simulate CO2 fertilization, nor biotic and abiotic disturbances (such as fire and insect outbreaks), mortality, or species turnover ([46](#ref-46), [1](#ref-1), [36](#ref-36)), and our three-month predictors represent sub-seasonal extremes only indirectly, so brief events such as heatwaves, rainfall pulses and compound episodes are captured only in part.

Here we bring together three strengths that had developed apart: resolving climate–tree-growth responses in their nonlinear detail, measuring them across a broad, hemisphere-wide network, and projecting them into the future. Together they reveal that the growth of Northern Hemisphere trees is reduced more often than enhanced, and once reduced, it tends to persist. We looked here only at how growth responds to shifts in mean climate; how that combines with the many processes we set aside, from CO2 fertilization to the disturbances, mortality and extremes escalating under climate change, is a promising direction for future work.

## Methods

**Tree-ring data.** Tree-ring width measurements were obtained primarily from the NOAA International Tree-Ring Data Bank (ITRDB), supplemented by a European beech network ([29](#ref-29)). Within each source record, measurement series shorter than 20 years were excluded, and the remaining series were screened for crossdating consistency, detrended with a cubic smoothing spline using `dplpy` ([42](#ref-42)), and averaged with a biweight robust mean into standard ring-width index (RWI) chronologies. The spline had a 50% frequency-response cutoff at 50 years ([13](#ref-13)), so it removes the low-frequency growth trend while preserving the interannual variability on which the climate–tree-growth model is fit. Chronology years were retained from 1901 onward where sample depth was at least 10 series. After matching to climate data and applying the model-fitting filters described below, the final network comprised 4,110 Northern Hemisphere RWI chronologies from 70 species, representing more than 12 million ring-width measurements. Retained chronology-year observations had a median sample depth of 27 series (interquartile range, 19–39).

**Climate data and projections.** Observed climate was derived from CRU TS v4.09 monthly fields for 1901–2024 ([21](#ref-21)). Chronology coordinates were assigned to the nearest 0.5° CRU grid cell. From CRU TS, we extracted monthly mean daily maximum temperature (°C), total monthly precipitation (mm month⁻¹) and monthly vapor pressure (hPa). We derived monthly VPD (kPa) from monthly mean daily maximum temperature and monthly vapor pressure (see Supplementary Equations, below). Monthly values were aggregated into four non-overlapping three-month windows: January–March (months 1–3), April–June (4–6), July–September (7–9) and October–December (10–12). Maximum temperature and VPD were averaged within each window, whereas precipitation was summed.

Future climate data were obtained from 12 general circulation models (GCMs) in the NEX-GDDP-CMIP6 dataset under SSP2-4.5 and SSP5-8.5 ([48](#ref-48), [47](#ref-47)). Daily values were extracted at the nearest 0.25° NEX-GDDP-CMIP6 grid cell for each chronology and aggregated to monthly site series. Projected VPD was calculated from daily maximum temperature and relative humidity before monthly aggregation. We then bias-adjusted each model's monthly series to the CRU reference over 1950–2014 ([23](#ref-23)), separately for each model, site, calendar month and variable: additive monthly offsets for temperature and VPD, and multiplicative monthly factors for precipitation. Corrected monthly projections were aggregated to the same three-month predictors as the observed climate.

**Predictors and model fitting.** We trained an XGBoost regression model ([11](#ref-11)) to predict annual log-transformed RWI from three-month climate summaries, chronology context, and previous-year growth. The response variable was

$$
y_{c,t} = \log\left(\max(\text{RWI}_{c,t}, 0.05)\right),
$$

where the small floor of 0.05 prevents undefined values for zero RWI observations. The log transformation makes proportional changes symmetric around RWI = 1, so that halving and doubling RWI have equal magnitude and opposite signs. The fitted model can be written as

$$
\hat{y}_{c,t} = f_\theta\left(\mathbf{T}_{c,t}, \mathbf{P}_{c,t}, \mathbf{D}_{c,t}, y_{c,t-1}, \mathbf{z}_c\right), \tag{1}
$$

where $c$ indexes chronologies and $t$ the growth year. The vectors $\mathbf{T}$, $\mathbf{P}$ and $\mathbf{D}$ contain three-month summaries of maximum temperature, precipitation and VPD, $y_{c,t-1}$ is the previous-year log RWI, and $\mathbf{z}_c$ holds chronology identity, species identity and elevation. For each climate variable, predictors included current-year T1–3 and T4–6, P1–3 and P4–6, and D1–3 and D4–6, together with previous-year T7–9 and T10–12, P7–9 and P10–12, and D7–9 and D10–12. Together, these windows span July of the previous year through June of the growth year, a period over which climate–tree-growth relationships are often strongest ([44](#ref-44), [30](#ref-30)).

Ring-width chronologies carry not only a climate signal but also biological persistence, disturbance, and other non-climatic variation ([12](#ref-12)). The context predictors $\mathbf{z}_c$ (species, elevation, and chronology identity) absorb persistent non-climatic differences between chronologies, so that the learned climate response is not confounded by them, and the lag-1 term $y_{c,t-1}$ captures the strong year-to-year autocorrelation of ring width ([44](#ref-44)). Chronology and species identity were encoded as categorical predictors using XGBoost's native categorical handling rather than as ordinal numeric variables.

The data were divided chronologically into training (1902–1980), validation (1982–1990) and testing (1992–2024) sets, with lagged predictors constructed within each split. Species were retained only when represented by at least 10 training chronologies, 5 post-1980 chronologies, 200 training observations and 100 post-1980 observations. Model fitting was restricted to Northern Hemisphere chronologies, where the network is concentrated, so that the calendar-based predictor windows followed a common annual cycle. Applying the same criteria to the Southern Hemisphere retained only 69 chronologies and 840 observations after 1990, with records ending in 2012, so the Southern Hemisphere was excluded. We evaluated 48 randomly sampled hyperparameter combinations, using early stopping within each trial and selecting the model by validation RMSE. The selected model used 1,431 boosting rounds.

**Model validation and characterization.** Held-out predictive skill was evaluated on the 1992–2024 test set, where the model achieved R² = 0.257, Pearson r = 0.511 and RMSE = 0.257 across 50,849 chronology-year observations from 3,165 chronologies. Because the model also has access to chronology identity, species, elevation, and previous-year growth, a concern is that its apparent skill could come from this non-climatic structure rather than from a genuine climate–tree-growth relationship. We tested this with a climate-row permutation test: for each permutation, the 12 climate predictors were shuffled together as an intact block across training rows, while chronology identity, species identity, elevation and lagged growth were left unchanged, and the model was refitted for each of 1,000 permutations. The resulting null distribution had mean test R² = 0.023 (s.d. 0.003); none of the 1,000 permutations reached the observed R² = 0.257, giving empirical P < 0.001.

On the test set, precipitation is the model's largest single contributor by mean absolute SHAP (SHapley additive explanations) value ([32](#ref-32)), more than twice either temperature or VPD, followed by lag-1 growth, VPD, temperature, and the context predictors. Our analysis, however, is based on the baseline-relative change in attribution (ΔSHAP) rather than absolute importance: precipitation dominates the model's present-day predictions, whereas the projected late-century attribution change is led by previous-year maximum temperature (T7–9) and current-year VPD (D4–6).

**Projecting climate-driven growth responses.** Projecting ring-width chronologies forward poses two structural difficulties. First, chronologies are stationary by construction: de-trending removes low-frequency growth trends, so a chronology carries no projectable trend and its expected level is fixed rather than drifting. Second, ring-width series are strongly autoregressive, and the model uses previous-year growth $y_{c,t-1}$ as a predictor; under future climate no observed lag-1 value exists, and feeding the model its own predictions would either compound error or, given stationarity, collapse the series toward its mean. Naive year-by-year forecasting of RWI is therefore ill-posed.

We instead isolate the climate-driven component of the response by neutralizing the autoregressive predictor. For chronology $c$, year $t$, scenario $s$ and climate model $m$, the neutral-history prediction was

$$
\hat{y}^0_{c,t,s,m} = f_\theta\left(\mathbf{T}_{c,t,s,m}, \mathbf{P}_{c,t,s,m}, \mathbf{D}_{c,t,s,m}, 0, \mathbf{z}_c\right), \tag{2}
$$

where the lag-1 term is set to 0, corresponding to RWI = 1, the stationary expectation of a detrended chronology. All reported values are changes relative to each chronology's own historical baseline rather than absolute predicted RWI. For a target window $W$, we compared the neutral-history prediction over that window with the corresponding prediction over the baseline period $B$ (1902–1980):

$$
\Delta\text{RWI}_{c,W,s,m} = 100\left[\exp\left(\tilde{y}^0_{c,W,s,m} - \tilde{y}^0_{c,B}\right) - 1\right], \tag{3}
$$

where $\tilde{y}^0$ denotes the period median of annual neutral-history predictions of $\hat{y}^0$. The exponential converts log-RWI differences to proportional changes, so all results are reported as percentage change in RWI relative to baseline (%ΔRWI). Chronologies were assigned to 1°×1° latitude–longitude grid cells; within each cell and climate model we took the median chronology change over the target window, and for projected periods then took the median across models, giving one value per occupied cell. Projected windows were 30 years long, advancing from the observed period into the CMIP6 projections.

**Within-chronology validation.** For each test-period chronology, we used the neutral-history predictions to identify its years of high and low climate-driven growth, taking the upper and lower quartiles as the model's favorable and unfavorable years, and compared the observed growth difference between the two sets of years with the predicted difference. Across 2,541 chronologies, the observed and predicted contrasts were correlated (Pearson r = 0.80) and agreed in sign for 86% of chronologies, far above the 50% expected by chance (1,000-permutation null; P < 0.001). The observed contrasts were on average 1.5 times larger than predicted (fitted slope 1.54), so the model captures the pattern of climate-driven growth while understating its amplitude.

**Out-of-domain climate screening.** Projected climates can move into combinations of conditions not represented in the training data, where the model would extrapolate ([52](#ref-52)). We screened each prediction against the training climate cloud in the joint space of the twelve climate predictors ([37](#ref-37)). We standardized the twelve predictors over the training data and, in this standardized space, computed for each prediction its Euclidean distance to its $k$-th nearest training neighbor ($k=20$). A prediction was flagged as out-of-domain (OOD) when this distance exceeded the 99th percentile of the corresponding neighbor distances among the training data itself. We aggregated this row-level screen to grid cells in the same rolling 30-year windows used for the response projections; a cell was classified as out-of-domain when the model-median OOD fraction exceeded 50%. Predictions in out-of-domain cells were withheld from the reported responses.

**Statistical support.** We estimated the uncertainty of each cell's ΔRWI with a temporal bootstrap ([16](#ref-16)) of 5,000 replicates, resampling the years of the baseline and target windows with replacement. From each cell's 5,000 resampled ΔRWI values, we computed a two-sided bootstrap P-value for a change away from zero, and controlled the false discovery rate (FDR) across cells with the Benjamini–Hochberg procedure ([5](#ref-5)), applied separately within each scenario and window and over in-domain cells only. We treated cells with q ≤ 0.05 as significant.

**Climate-driver decomposition.** To attribute each projected growth change to the underlying climate variables, we decomposed the model's prediction with SHAP, computed with XGBoost's native tree-based method ([33](#ref-33)). We grouped the twelve climate features into a *water-supply* contribution, from the four precipitation predictors, and a *warming–demand* contribution, from the four maximum-temperature and four VPD predictors. For a feature group $G$, each group's ΔSHAP is its value in a $W=30$-year window relative to the chronology's $B=1902\text{–}1980$ baseline, taken as the median across the $M=12$ climate models, and each converted to a percent-equivalent RWI contribution matching the units of the growth projections. The signs of the supply and demand contributions place each in-domain, statistically significant cell into one of five regimes: co-enhancement, co-suppression, supply-driven, demand-driven, and neutral (see Results).

**Response-surface and attribution analysis.** Each response surface shows how predicted growth changes as we vary just two predictors at a time, leaving all other inputs to the model as they are, supplied by $N_c=350$ chronology-year observations drawn at random from the 1902–1980 reference period and averaged over. Projected climate change acts on this scalar field $\eta$ as a displacement field $\Delta\mathbf{q}$: each chronology is carried from its baseline position to its future position, and the impact of climate change is the change in the scalar field along this displacement,

$$
\Delta\eta = \eta(\text{end}) - \eta(\text{start}) \approx \nabla\eta \cdot \Delta\mathbf{q}, \tag{4}
$$

so it depends on both the local gradient of the surface and the direction and length of the displacement — distinct from sensitivity, the gradient alone.

### Supplementary equation: vapor pressure deficit

Vapor pressure deficit (VPD) was calculated from maximum temperature and atmospheric vapor pressure. Saturation vapor pressure was computed using a Bolton-style formulation,

$$
e_s(T_{\max}) = 6.112 \exp\left(\frac{17.67\, T_{\max}}{T_{\max} + 243.5}\right),
$$

where $T_{\max}$ is monthly maximum temperature in °C and $e_s$ is the saturated atmospheric vapor pressure in hPa. For observed CRU TS data, VPD was then calculated as

$$
\text{VPD} = 0.1 \max\left[e_s(T_{\max}) - e_a,\ 0\right],
$$

where $e_a$ is CRU TS vapor pressure in hPa and the factor 0.1 converts hPa to kPa. For NEX-GDDP-CMIP6 projections, daily VPD was calculated from daily maximum temperature and near-surface relative humidity RH as

$$
\text{VPD}_{m,d} = 0.1 \max\left[e_s(T_{\max,m,d})\left(1 - \frac{\text{RH}_{m,d}}{100}\right),\ 0\right],
$$

where $m$ indexes climate models and $d$ indexes days. Relative humidity was clipped to the interval 0–100% before calculating VPD. Daily VPD values were averaged to monthly means before bias correction and seasonal aggregation.

## Data and Code Availability

The tree-ring chronologies analysed in this study are publicly available from the International Tree-Ring Data Bank and the European beech network. Observed and projected climate data are publicly available from CRU TS v4.09 and NEX-GDDP-CMIP6, respectively. The derived data underlying each figure, together with the code to reproduce the analyses and figures, will be made available on GitHub and archived on Zenodo with a permanent DOI upon publication.

## References

[1]{#ref-1} Anderegg, W. R. L., et al. (2020). Climate-driven risks to the climate mitigation potential of forests. *Science*, 368(6497), eaaz7005.

[2]{#ref-2} Babst, F., et al. (2014). Above-ground woody carbon sequestration measured from tree rings is coherent with net ecosystem productivity at five eddy-covariance sites. *New Phytologist*, 201(4), 1289–1303.

[3]{#ref-3} Babst, F., et al. (2018). When tree rings go global: Challenges and opportunities for retro- and prospective insight. *Quaternary Science Reviews*, 197, 1–20.

[4]{#ref-4} Babst, F., et al. (2019). Twentieth century redistribution in climatic drivers of global tree growth. *Science Advances*, 5(1), eaat4313.

[5]{#ref-5} Benjamini, Y., & Hochberg, Y. (1995). Controlling the false discovery rate: a practical and powerful approach to multiple testing. *Journal of the Royal Statistical Society: Series B*, 57(1), 289–300.

[6]{#ref-6} Bonan, G. B. (2008). Forests and climate change: forcings, feedbacks, and the climate benefits of forests. *Science*, 320(5882), 1444–1449.

[7]{#ref-7} Brienen, R. J. W., et al. (2020). Forest carbon sink neutralized by pervasive growth-lifespan trade-offs. *Nature Communications*, 11, 4241.

[8]{#ref-8} Brodribb, T. J., Powers, J., Cochard, H., & Choat, B. (2020). Hanging by a thread? Forests and drought. *Science*, 368(6488), 261–266.

[9]{#ref-9} Cabon, A., et al. (2022). Cross-biome synthesis of source versus sink limits to tree growth. *Science*, 376(6594), 758–761.

[10]{#ref-10} Charney, N. D., et al. (2016). Observed forest sensitivity to climate implies large changes in 21st century North American forest growth. *Ecology Letters*, 19(9), 1119–1128.

[11]{#ref-11} Chen, T., & Guestrin, C. (2016). XGBoost: A scalable tree boosting system. *Proceedings of the 22nd ACM SIGKDD International Conference on Knowledge Discovery and Data Mining*, 785–794.

[12]{#ref-12} Cook, E. R. (1987). The decomposition of tree-ring series for environmental studies. *Tree-Ring Bulletin*.

[13]{#ref-13} Cook, E. R., & Peters, K. (1981). The smoothing spline: a new approach to standardizing forest interior tree-ring width series for dendroclimatic studies. *Tree-Ring Bulletin*.

[14]{#ref-14} D'Orangeville, L., et al. (2016). Northeastern North America as a potential refugium for boreal forests in a warming climate. *Science*, 352(6292), 1452–1455.

[15]{#ref-15} D'Orangeville, L., et al. (2018). Beneficial effects of climate warming on boreal tree growth may be transitory. *Nature Communications*, 9, 3213.

[16]{#ref-16} Efron, B. (1992). Bootstrap methods: another look at the jackknife. In *Breakthroughs in Statistics: Methodology and Distribution*, 569–593. Springer.

[17]{#ref-17} Evans, M. E. K., et al. (2025). Reconsidering space-for-time substitution in climate change ecology. *Nature Climate Change*, 15(8), 809–812.

[18]{#ref-18} Fatichi, S., Leuzinger, S., & Körner, C. (2014). Moving beyond photosynthesis: from carbon source to sink-driven vegetation modeling. *New Phytologist*, 201(4), 1086–1095.

[19]{#ref-19} Fatichi, S., Peleg, N., Mastrotheodoros, T., Pappas, C., & Manoli, G. (2021). An ecohydrological journey of 4500 years reveals a stable but threatened precipitation–groundwater recharge relation around Jerusalem. *Science Advances*, 7(37), eabe6303.

[20]{#ref-20} Grossiord, C., et al. (2020). Plant responses to rising vapor pressure deficit. *New Phytologist*, 226(6), 1550–1566.

[21]{#ref-21} Harris, I., Osborn, T. J., Jones, P., & Lister, D. (2020). Version 4 of the CRU TS monthly high-resolution gridded multivariate climate dataset. *Scientific Data*, 7(1), 109.

[22]{#ref-22} Hausfather, Z., & Peters, G. P. (2020). Emissions – the 'business as usual' story is misleading. *Nature*, 577(7792), 618–620.

[23]{#ref-23} Hempel, S., Frieler, K., Warszawski, L., Schewe, J., & Piontek, F. (2013). A trend-preserving bias correction – the ISI-MIP approach. *Earth System Dynamics*, 4(2), 219–236.

[24]{#ref-24} Iturbide, M., et al. (2020). An update of IPCC climate reference regions for subcontinental analysis of climate model data: definition and aggregated datasets. *Earth System Science Data Discussions*, 2020, 1–16.

[25]{#ref-25} Jiao, W., Wang, L., Smith, W. K., Chang, Q., Wang, H., & D'Odorico, P. (2021). Observed increasing water constraint on vegetation growth over the last three decades. *Nature Communications*, 12(1), 3777.

[26]{#ref-26} Kannenberg, S. A., et al. (2022). Drought-induced decoupling between carbon uptake and tree growth impacts forest carbon turnover time. *Agricultural and Forest Meteorology*, 322, 108996.

[27]{#ref-27} Klesse, S., et al. (2018). Sampling bias overestimates climate change impacts on forest growth in the southwestern United States. *Nature Communications*, 9(1), 5336.

[28]{#ref-28} Klesse, S., et al. (2020). Continental-scale tree-ring-based projection of Douglas-fir growth: Testing the limits of space-for-time substitution. *Global Change Biology*, 26(9), 5146–5163.

[29]{#ref-29} Klesse, S., et al. (2024). No future growth enhancement expected at the northern edge for European beech due to continued water limitation. *Global Change Biology*, 30(10), e17546.

[30]{#ref-30} Lee, C. C., & Dannenberg, M. P. (2023). Frequencies of multivariate air masses drive tree growth. *Journal of Geophysical Research: Biogeosciences*, 128(3), e2022JG007064.

[31]{#ref-31} Lloyd, A. H., Duffy, P. A., & Mann, D. H. (2013). Nonlinear responses of white spruce growth to climate variability in interior Alaska. *Canadian Journal of Forest Research*, 43(999), 331–343.

[32]{#ref-32} Lundberg, S. M., & Lee, S.-I. (2017). A unified approach to interpreting model predictions. *Advances in Neural Information Processing Systems*, 30.

[33]{#ref-33} Lundberg, S. M., et al. (2020). From local explanations to global understanding with explainable AI for trees. *Nature Machine Intelligence*, 2(1), 56–67.

[34]{#ref-34} Lundgren, A., Strengbom, J., Edvardsson, J., & Granath, G. (2025). Unpacking climate effects on boreal tree growth: An analysis of tree-ring widths across temperature and soil moisture gradients. *EGUsphere*, 2025, 1–27.

[35]{#ref-35} Martinez del Castillo, E., et al. (2024). Contrasting future growth of Norway spruce and Scots pine forests under warming climate. *Global Change Biology*, 30(11), e17580.

[36]{#ref-36} McDowell, N. G., et al. (2020). Pervasive shifts in forest dynamics in a changing world. *Science*, 368(6494), eaaz9463.

[37]{#ref-37} Meyer, H., & Pebesma, E. (2021). Predicting into unknown space? Estimating the area of applicability of spatial prediction models. *Methods in Ecology and Evolution*, 12(9), 1620–1633.

[38]{#ref-38} Mirabel, A., Girardin, M. P., Metsaranta, J., Way, D., & Reich, P. B. (2023). Increasing atmospheric dryness reduces boreal forest tree growth. *Nature Communications*, 14, 6901.

[39]{#ref-39} NOAA/WDS Paleoclimatology (2014). NOAA/WDS Paleoclimatology – ITRDB Data Bank. <https://www.ncei.noaa.gov/products/paleoclimatology/tree-ring>.

[40]{#ref-40} Novick, K. A., et al. (2016). The increasing importance of atmospheric demand for ecosystem water and carbon fluxes. *Nature Climate Change*, 6(11), 1023–1027.

[41]{#ref-41} Novick, K. A., et al. (2024). The impacts of rising vapour pressure deficit in natural and managed ecosystems. *Plant, Cell & Environment*.

[42]{#ref-42} OpenDendro (2025). *dplpy: Dendrochronology Program Library for Python*. <https://opendendro.org/python/>.

[43]{#ref-43} Pan, Y., et al. (2011). A large and persistent carbon sink in the world's forests. *Science*, 333(6045), 988–993.

[44]{#ref-44} Peltier, D. M. P., Barber, J. J., & Ogle, K. (2018). Quantifying antecedent climatic drivers of tree growth in the southwestern US. *Journal of Ecology*, 106(2), 613–624.

[45]{#ref-45} Poorter, H., Niklas, K. J., Reich, P. B., Oleksyn, J., Poot, P., & Mommer, L. (2012). Biomass allocation to leaves, stems and roots: meta-analyses of interspecific variation and environmental control. *New Phytologist*, 193(1), 30–50.

[46]{#ref-46} Seidl, R., et al. (2017). Forest disturbances under climate change. *Nature Climate Change*, 7, 395–402.

[47]{#ref-47} Thrasher, B., Wang, W., Michaelis, A., & Nemani, R. (2021). NEX-GDDP-CMIP6. Dataset.

[48]{#ref-48} Thrasher, B., Wang, W., Michaelis, A., Melton, F., Lee, T., & Nemani, R. (2022). NASA global daily downscaled projections, CMIP6. *Scientific Data*, 9(1), 262.

[49]{#ref-49} Tumajer, J., et al. (2025). Longer growing seasons will not offset growth loss in drought-prone temperate forests of central-southeast Europe. *Nature Communications*, 16(1), 9535.

[50]{#ref-50} Wang, J., Taylor, A. R., & D'Orangeville, L. (2023). Warming-induced tree growth may help offset increasing disturbance across the Canadian boreal forest. *Proceedings of the National Academy of Sciences*, 120(2), e2212780120.

[51]{#ref-51} Way, D. A., & Oren, R. (2010). Differential responses to changes in growth temperature between trees from different functional groups and biomes: a review and synthesis of data. *Tree Physiology*, 30(6), 669–688.

[52]{#ref-52} Williams, J. W., Jackson, S. T., & Kutzbach, J. E. (2007). Projected distributions of novel and disappearing climates by 2100 AD. *Proceedings of the National Academy of Sciences*, 104(14), 5738–5742.

[53]{#ref-53} Wilmking, M., et al. (2020). Global assessment of relationships between climate and tree growth. *Global Change Biology*, 26(6), 3212–3220.

[54]{#ref-54} Wilson, E. B. (1927). Probable inference, the law of succession, and statistical inference. *Journal of the American Statistical Association*, 22(158), 209–212.

[55]{#ref-55} Yuan, W., et al. (2019). Increased atmospheric vapor pressure deficit reduces global vegetation growth. *Science Advances*, 5(8), eaax1396.

[56]{#ref-56} Zuidema, P. A., et al. (2022). Tropical tree growth driven by dry-season climate variability. *Nature Geoscience*, 15(4), 269–276.


## Supplementary Information

### Table S1 | CMIP6 models used in the projection ensemble

The twelve CMIP6 general circulation models whose NEX-GDDP-CMIP6 downscaled projections were used under SSP2-4.5 and SSP5-8.5. Variant labels give the CMIP6 realization-initialization-physics-forcing member used. Projected growth responses are summarized as the median across these models.

| Model | Variant |
|---|---|
| ACCESS-CM2 | r1i1p1f1 |
| CanESM5 | r1i1p1f1 |
| CNRM-CM6-1 | r1i1p1f2 |
| EC-Earth3 | r1i1p1f1 |
| FGOALS-g3 | r3i1p1f1 |
| GFDL-ESM4 | r1i1p1f1 |
| IPSL-CM6A-LR | r1i1p1f1 |
| MIROC6 | r1i1p1f1 |
| MPI-ESM1-2-LR | r1i1p1f1 |
| MRI-ESM2-0 | r1i1p1f1 |
| NorESM2-MM | r1i1p1f1 |
| UKESM1-0-LL | r1i1p1f2 |

### Table S2 | Model inputs, data partitioning and fitted XGBoost configuration

Predictors, chronological train/validation/test split, and the hyperparameters of the selected XGBoost model, chosen by validation RMSE from 48 sampled configurations (Methods). Predictor windows are three-month summaries denoted by their first month.

| Item | Detail |
|---|---|
| Target | Annual ring-width index (RWI), log-transformed. |
| Climate predictors | **Maximum temperature:** current-year T1–3 and T4–6; previous-year T7–9 and T10–12. **Precipitation:** current-year P1–3 and P4–6; previous-year P7–9 and P10–12. **VPD:** current-year D1–3 and D4–6; previous-year D7–9 and D10–12. |
| Context predictors | Chronology identity, species identity, elevation and previous-year log RWI. |
| Data partitioning | **Training:** 1902–1980; 278,691 observations (77.2%). **Validation:** 1982–1990; 31,385 observations (8.7%). **Testing:** 1992–2024; 50,849 observations (14.1%). |
| Boosting | 1,431 rounds; learning rate = 0.030608. |
| Tree structure | Histogram tree method; maximum depth = 8; minimum child weight = 8; maximum bin count = 512. |
| Sampling | Row subsample = 0.878678; column subsample = 0.737010. |
| Regularization | L1 = 1.223213; L2 = 0.769702; γ = 0.015007. |
| Objective and seed | Squared-error objective; seed = 20260442. |

### Table S3 | AR6 regional magnitude summary for the late-century period (2071&ndash;2100)

For each represented IPCC AR6 reference region: the number of occupied 1° grid cells and the number of chronologies they contain, and, for each scenario, the percentage of mapped cells outside the training climate domain (OOD), the median predicted change in ring-width index relative to the 1902–1980 baseline (%ΔRWI), and the number of in-domain statistically significant cells with negative and positive change (neg./pos.). A dash indicates no in-domain cells remained. The seven regions with at least 95 occupied cells (**bold**) are summarized in the main text.

| Region | Name | Cells | Chronologies | SSP2-4.5 OOD% | SSP2-4.5 Median | SSP2-4.5 neg./pos. | SSP5-8.5 OOD% | SSP5-8.5 Median | SSP5-8.5 neg./pos. |
|---|---|---|---|---|---|---|---|---|---|
| **WNA** | W. North America | **185** | 917 | 15.1 | −0.4 | 27/17 | 45.9 | −0.9 | 17/11 |
| **WCE** | W. & C. Europe | **161** | 1042 | 1.9 | −2.5 | 87/4 | 7.5 | −6.2 | 127/2 |
| **NWN** | N.W. North America | **151** | 417 | 6.6 | −0.8 | 59/20 | 12.6 | −3.1 | 92/15 |
| **ENA** | E. North America | **130** | 374 | 10.0 | −0.1 | 13/28 | 29.2 | −0.9 | 33/15 |
| **MED** | Mediterranean | **126** | 414 | 4.0 | −4.2 | 107/1 | 51.6 | −7.7 | 61/0 |
| **NEU** | N. Europe | **108** | 224 | 3.7 | −0.0 | 31/29 | 4.6 | −1.6 | 52/23 |
| **CNA** | C. North America | **95** | 262 | 25.3 | −1.2 | 12/0 | 65.3 | −3.8 | 20/0 |
| NCA | N. Central America | 45 | 129 | 68.9 | −10.7 | 11/0 | 95.6 | −8.5 | 2/0 |
| ESB | E. Siberia | 37 | 44 | 0.0 | −4.6 | 26/0 | 10.8 | −7.4 | 28/0 |
| NEN | N.E. North America | 25 | 48 | 0.0 | −3.6 | 23/0 | 0.0 | −5.4 | 24/0 |
| TIB | Tibetan Plateau | 22 | 62 | 27.3 | 0.3 | 3/6 | 50.0 | 2.7 | 0/8 |
| EEU | E. Europe | 21 | 34 | 9.5 | −6.1 | 16/0 | 52.4 | −8.2 | 8/0 |
| RAR | Russian Arctic | 16 | 22 | 0.0 | 0.2 | 3/3 | 0.0 | −0.8 | 6/2 |
| ECA | E. Central Asia | 13 | 27 | 0.0 | −0.3 | 2/5 | 7.7 | −2.8 | 7/3 |
| WCA | W. Central Asia | 12 | 47 | 0.0 | −0.9 | 5/0 | 25.0 | −4.4 | 6/1 |
| WSB | W. Siberia | 10 | 19 | 10.0 | −1.8 | 5/0 | 10.0 | −3.5 | 9/0 |
| RFE | Russian Far East | 5 | 11 | 0.0 | −1.7 | 4/0 | 20.0 | −3.9 | 4/0 |
| SAS | S. Asia | 4 | 5 | 25.0 | −0.2 | 1/1 | 50.0 | 0.4 | 0/1 |
| SCA | S. Central America | 4 | 11 | 75.0 | −10.2 | 1/0 | 100.0 | — | 0/0 |
| EAS | E. Asia | 1 | 1 | 0.0 | 0.2 | 0/0 | 0.0 | 1.8 | 0/1 |

![](./images/figureS1.png)

**Figure S1 | Projected declines are amplified under the high-forcing SSP5-8.5 scenario.** As Fig. 2, but for SSP5-8.5. The decreases and broadening are stronger than under SSP2-4.5: the median falls further, the upper quartile drops below zero, and out-of-domain climate becomes more widespread by late century. Panels, encoding, and the temperature scale match Fig. 2.

![](./images/figureS2.png)

**Figure S2 | The projected response distribution broadens within individual CMIP6 models.** Spatial interquartile range (IQR) of predicted RWI change across in-domain 1° grid cells, in the same rolling 30-year windows as Fig. 2, for SSP2-4.5 and SSP5-8.5. For each model, grid-cell change is the median predicted RWI change relative to the 1902–1980 baseline after aggregating chronologies within cells; the spatial IQR is then taken across cells. Thin gray lines are the individual CMIP6 models, the blue line their median and the blue band their 25th–75th percentile range, and the black line is the ensemble-median field used in Fig. 2a. The spatial spread increases through the century within individual models under both scenarios, so the broadening in Fig. 2a does not arise from combining divergent models into the ensemble.

![](./images/figureS3.png)

**Figure S3 | The retention asymmetry holds within a fixed 50-year cohort, ruling out a denominator artifact.** Fraction of cells still on their first-entry side as a function of time since first entry, for positive and negative entries, restricted to the fixed cohort of cells that could be followed in-domain for the full 50 years after entry. Unlike the dynamic matched-horizon curves in Fig. 3c, the same cells are used at every horizon from 1 to 50 years, so the denominator does not change. Within this constant cohort the gap between negative and positive retention still widens with time since entry, reaching 34 and 50 percentage points by 50 years under SSP2-4.5 and SSP5-8.5, reproducing the divergence of the dynamic analysis and confirming it is not driven by the changing denominator.

![](./images/figureS4.png)

**Figure S4 | An increasing fraction of the network moves outside the training climate domain, especially under SSP5-8.5.** Percentage of mapped 1° grid cells classified as out-of-domain, in the same rolling 30-year windows as Fig. 2, using the same climate-space mask. The solid line is SSP2-4.5 and the dashed line SSP5-8.5. The out-of-domain fraction stays low through the observed CRU TS period and rises under the CMIP6 projections, reaching its largest values late in the century under SSP5-8.5.

![](./images/figureS5.png)

**Figure S5 | The retention asymmetry strengthens under the high-forcing SSP5-8.5 scenario.** As Fig. 3, but for SSP5-8.5. The gap between negative and positive retention widens: almost no negative state reverts, while a larger share of positive states fades to neutral, and downward crossings between signs increase. Panels, state definition, and encoding match Fig. 3.

![](./images/figureS6.png)

**Figure S6 | Under SSP5-8.5, surviving gains depend increasingly on water supply as the warming–demand contribution turns more negative.** As Fig. 4, but for SSP5-8.5. The warming–demand contribution is negative over a larger share of the network, and among the responses that remain positive, the supply-driven share rises at the expense of co-enhancement, so gains rest increasingly on water supply alone. Panels, driver decomposition, regime definitions, and encoding match Fig. 4.

![](./images/figureS7.png)

**Figure S7 | Projected changes in climate attribution are led by maximum temperature and VPD.** For each climate predictor, the late-century ΔSHAP is the baseline-relative change in its SHAP contribution, summed in absolute value across chronologies (median across models). Unlike the absolute importance in Fig. S10, which reflects the fitted model as it stands, this measures which predictors drive the *change* in growth under future climate. **(a)** Cumulative share of the total absolute ΔSHAP captured by the top-ranked predictors, for SSP2-4.5 and SSP5-8.5. The four leading predictors account for about half of the total under both scenarios (53% under SSP2-4.5, 52% under SSP5-8.5), and the top eight for about 80%. **(b, c)** Family-level composition for SSP2-4.5 and SSP5-8.5. Maximum temperature contributes the largest share of the projected change, followed by precipitation and VPD, with previous-year T7–9 the single largest predictor under both scenarios.

![](./images/figureS8.png)

**Figure S8 | Held-out observed versus predicted growth.** Each point is one held-out chronology-year observation from the 1992–2024 test set: the x axis is observed log-RWI and the y axis is model-predicted log-RWI for the same observation. The dashed line marks one-to-one agreement, and contour lines show the density of observations in the point cloud. Across 50,849 held-out observations, the model explained 25.7% of annual log-RWI variation (R² = 0.257; RMSE = 0.257; Pearson r = 0.511).

![](./images/figureS9.png)

**Figure S9 | Predictive skill rests on a learned climate response.** The 12 climate predictors were permuted together as intact climate rows, preserving realistic within-year covariance among them while removing their correspondence to each chronology-year's growth; the context predictors and lag-1 growth were left untouched. For each permutation the full model was retrained on the permuted data. The null distribution had mean test R² = 0.023 (s.d. 0.003), whereas the observed model achieved R² = 0.257, and no permutation approached the observed value (P < 0.001). Skill emerges only when climate and growth retain their real correspondence.

![](./images/figureS10.png)

**Figure S10 | Precipitation is the model's largest contributor to fitted-model predictions.** We measure each predictor's importance on the held-out test split as its mean absolute SHAP value — how much, on average, it moves the model's prediction. This importance is a property of the fitted model as it stands, and is distinct from the projected *change* in attribution (ΔSHAP; Fig. S7) analyzed in the main results. **(a)** Importance by predictor, with the twelve climate predictors summed within their precipitation, maximum-temperature and VPD families and shown alongside lag-1 growth and the context predictors. Precipitation is the largest single contributor, followed by lag-1 growth. **(b)** Importance of the twelve individual climate predictors, grouped by family with the four windows of each in calendar order.

![](./images/figureS11.png)

**Figure S11 | Lag-1 growth is weakly correlated with climate predictors and has near-neutral SHAP contribution at typical previous-year growth.** These two properties support setting lag-1 growth to its neutral value when projecting the climate response (Methods, "Projecting climate-driven growth responses"). **(a)** Ordered Pearson correlation matrix for the numeric model predictors. The outlined row and column mark previous-year log RWI; its correlations with the 12 climate predictors are small, with maximum |r| = 0.052. **(b)** Held-out SHAP dependence for the lag-1 RWI term. The orange curve is a Savitzky–Golay smooth of binned median SHAP effects, crossing zero at RWI<sub>t−1</sub> = 0.969, close to the neutral value RWI<sub>t−1</sub> = 1, so the lag-1 term contributes negligibly near neutral previous-year growth.

![](./images/figureS12.png)

**Figure S12 | The chronology network is geographically uneven, concentrated in North America and Europe.** Number of the 4,110 study chronologies per 1° grid cell, with color showing binned chronology counts from sparsely sampled cells to dense clusters. This uneven sampling motivates summarizing results at the grid-cell level, which prevents densely sampled regions from dominating the maps and distributions (Methods).

![](./images/figureS13.png)

**Figure S13 | The model reproduces within-chronology growth contrasts but understates their magnitude.** This figure tests whether the model can tell a chronology's good growth years from its bad ones on the basis of climate alone. For each chronology, we measure how much growth actually differed between favorable and unfavorable years (observed contrast, y axis) and how much the model predicted it should differ (predicted contrast, x axis). Across 2,541 chronologies the predicted and observed contrasts are correlated (r = 0.80, P < 0.001). The fitted slope of 1.54 shows the observed differences exceed those the model predicts, so the model captures the pattern of climate-driven growth but understates its magnitude.

![](./images/figureS14.png)

**Figure S14 | Index of all pairwise climate–tree-growth response surfaces.** Thumbnail response surfaces for every pairwise combination of the twelve climate predictors, arranged as a lower-triangle matrix. Each thumbnail shows the model's learned growth response over that predictor pair (color) with the observed baseline climate states overlaid (points). The numbered cells index the full-size versions in Figs. S15–S18, where projected climate displacements are added as arrows. Surfaces are read as in Fig. 5.

![](./images/figureS15.png)

**Figure S15 | Pairwise climate–tree-growth response surfaces, panels 01–16.** Full-size response surfaces for the predictor pairs indexed in Fig. S14. The model's growth response over the two predictors with contour lines marking levels of equal predicted growth, points are observed baseline climate states marking where the surface is supported by data, and arrows run from the mean baseline to the mean projected late-century climate (SSP2-4.5) of the chronologies in each patch of climate space, colored by the growth change along the move. Histograms above each surface show the distribution of these changes. The surfaces are read through the arrows and how they meet the contours, not the absolute shading.

![](./images/figureS16.png)

**Figure S16 | Pairwise climate–tree-growth response surfaces, panels 17–32.** Same as Fig. S15, for panels 17–32.

![](./images/figureS17.png)

**Figure S17 | Pairwise climate–tree-growth response surfaces, panels 33–48.** Same as Fig. S15, for panels 33–48.

![](./images/figureS18.png)

**Figure S18 | Pairwise climate–tree-growth response surfaces, panels 49–66.** Same as Fig. S15, for panels 49–66.

![](./images/figureS19.png)

**Figure S19 | Regional response surfaces for P4–6 and D4–6.** In Fig. 5, only the P4–6–D4–6 surface (panel a) is broken down by region; the other pairs are shown with their arrows pooled across the network. This set of six figures (Figs. S19–S24) shows all pairwise combinations of the four leading predictors (P4–6, D4–6, T7–9 and T10–12) broken down by region, so region-to-region differences are visible. This figure shows the P4–6–D4–6 surface for each well-sampled AR6 region, expanding Fig. 5a.

![](./images/figureS20.png)

**Figure S20 | Regional response surfaces for P4–6 and T7–9.** As Fig. S19, for the P4–6–T7–9 predictor pair.

![](./images/figureS21.png)

**Figure S21 | Regional response surfaces for P4–6 and T10–12.** As Fig. S19, for the P4–6–T10–12 predictor pair.

![](./images/figureS22.png)

**Figure S22 | Regional response surfaces for D4–6 and T7–9.** As Fig. S19, for the D4–6–T7–9 predictor pair.

![](./images/figureS23.png)

**Figure S23 | Regional response surfaces for D4–6 and T10–12.** As Fig. S19, for the D4–6–T10–12 predictor pair.

![](./images/figureS24.png)

**Figure S24 | Regional response surfaces for T7–9 and T10–12.** As Fig. S19, for the T7–9–T10–12 predictor pair.
