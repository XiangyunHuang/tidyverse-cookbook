--- 
title: "Bookdown Broken"
subtitle: "学习 R Markdown 功能和 Github Action 的测试环境"
author: "黄湘云"
date: "2021-08-02"
site: bookdown::bookdown_site
documentclass: book
papersize: b5
fontsize: 10pt
graphics: yes
colorlinks: yes
mathspec: yes
lot: yes
lof: yes
geometry:
  - tmargin=2.5cm
  - bmargin=2.5cm
  - lmargin=3.0cm
  - rmargin=2.0cm
classoption: "UTF8,twoside,openany,table"
bibliography: 
  - book.bib
  - packages.bib
biblio-style: plainnat
natbiboptions: "authoryear,round"
link-citations: yes
description: "学习 R Markdown 功能和 Github Action 的测试环境."
github-repo: XiangyunHuang/bookdown-broken
# cover-image: ""
---

\mainmatter



# 欢迎 {#welcome .unnumbered}
\chaptermark{欢迎}

::: {.rmdwarn data-latex="{警告}"}
Book in early development. Planned release in 202X. 
:::

::: {.flushright data-latex=""}
黄湘云  
北京, 北京
:::


```python
import plotly.express as px

px.scatter(
    px.data.iris(),
    x="sepal_width",
    y="sepal_length",
    color="species",
    trendline="ols",
    template="simple_white",
    labels={
        "sepal_length": "Sepal Length (cm)",
        "sepal_width": "Sepal Width (cm)",
        "species": "Species of Iris",
    },
    title="Edgar Anderson's Iris Data",
    color_discrete_sequence=px.colors.qualitative.Set2,
)
```

```{=html}
<div>                        <script type="text/javascript">window.PlotlyConfig = {MathJaxConfig: 'local'};</script>
        <script src="https://cdn.plot.ly/plotly-2.2.0.min.js"></script>                <div id="5c1dbd08-a6cd-4aaa-93f3-8d0b6b61e636" class="plotly-graph-div" style="height:100%; width:100%;"></div>            <script type="text/javascript">                                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById("5c1dbd08-a6cd-4aaa-93f3-8d0b6b61e636")) {                    Plotly.newPlot(                        "5c1dbd08-a6cd-4aaa-93f3-8d0b6b61e636",                        [{"hovertemplate":"Species of Iris=setosa<br>Sepal Width (cm)=%{x}<br>Sepal Length (cm)=%{y}<extra></extra>","legendgroup":"setosa","marker":{"color":"rgb(102,194,165)","symbol":"circle"},"mode":"markers","name":"setosa","orientation":"v","showlegend":true,"type":"scatter","x":[3.5,3.0,3.2,3.1,3.6,3.9,3.4,3.4,2.9,3.1,3.7,3.4,3.0,3.0,4.0,4.4,3.9,3.5,3.8,3.8,3.4,3.7,3.6,3.3,3.4,3.0,3.4,3.5,3.4,3.2,3.1,3.4,4.1,4.2,3.1,3.2,3.5,3.1,3.0,3.4,3.5,2.3,3.2,3.5,3.8,3.0,3.8,3.2,3.7,3.3],"xaxis":"x","y":[5.1,4.9,4.7,4.6,5.0,5.4,4.6,5.0,4.4,4.9,5.4,4.8,4.8,4.3,5.8,5.7,5.4,5.1,5.7,5.1,5.4,5.1,4.6,5.1,4.8,5.0,5.0,5.2,5.2,4.7,4.8,5.4,5.2,5.5,4.9,5.0,5.5,4.9,4.4,5.1,5.0,4.5,4.4,5.0,5.1,4.8,5.1,4.6,5.3,5.0],"yaxis":"y"},{"hovertemplate":"<b>OLS trendline</b><br>sepal_length = 0.690854 * sepal_width + 2.64466<br>R<sup>2</sup>=0.557681<br><br>Species of Iris=setosa<br>Sepal Width (cm)=%{x}<br>Sepal Length (cm)=%{y} <b>(trend)</b><extra></extra>","legendgroup":"setosa","marker":{"color":"rgb(102,194,165)","symbol":"circle"},"mode":"lines","name":"setosa","showlegend":false,"type":"scatter","x":[2.3,2.9,3.0,3.0,3.0,3.0,3.0,3.0,3.1,3.1,3.1,3.1,3.1,3.2,3.2,3.2,3.2,3.2,3.3,3.3,3.4,3.4,3.4,3.4,3.4,3.4,3.4,3.4,3.4,3.5,3.5,3.5,3.5,3.5,3.5,3.6,3.6,3.7,3.7,3.7,3.8,3.8,3.8,3.8,3.9,3.9,4.0,4.1,4.2,4.4],"xaxis":"x","y":[4.23362478562793,4.648137423036909,4.717222862605072,4.717222862605072,4.717222862605072,4.717222862605072,4.717222862605072,4.717222862605072,4.786308302173236,4.786308302173236,4.786308302173236,4.786308302173236,4.786308302173236,4.855393741741399,4.855393741741399,4.855393741741399,4.855393741741399,4.855393741741399,4.924479181309563,4.924479181309563,4.993564620877725,4.993564620877725,4.993564620877725,4.993564620877725,4.993564620877725,4.993564620877725,4.993564620877725,4.993564620877725,4.993564620877725,5.062650060445889,5.062650060445889,5.062650060445889,5.062650060445889,5.062650060445889,5.062650060445889,5.131735500014052,5.131735500014052,5.200820939582216,5.200820939582216,5.200820939582216,5.269906379150379,5.269906379150379,5.269906379150379,5.269906379150379,5.338991818718542,5.338991818718542,5.408077258286705,5.477162697854869,5.5462481374230315,5.684419016559358],"yaxis":"y"},{"hovertemplate":"Species of Iris=versicolor<br>Sepal Width (cm)=%{x}<br>Sepal Length (cm)=%{y}<extra></extra>","legendgroup":"versicolor","marker":{"color":"rgb(252,141,98)","symbol":"circle"},"mode":"markers","name":"versicolor","orientation":"v","showlegend":true,"type":"scatter","x":[3.2,3.2,3.1,2.3,2.8,2.8,3.3,2.4,2.9,2.7,2.0,3.0,2.2,2.9,2.9,3.1,3.0,2.7,2.2,2.5,3.2,2.8,2.5,2.8,2.9,3.0,2.8,3.0,2.9,2.6,2.4,2.4,2.7,2.7,3.0,3.4,3.1,2.3,3.0,2.5,2.6,3.0,2.6,2.3,2.7,3.0,2.9,2.9,2.5,2.8],"xaxis":"x","y":[7.0,6.4,6.9,5.5,6.5,5.7,6.3,4.9,6.6,5.2,5.0,5.9,6.0,6.1,5.6,6.7,5.6,5.8,6.2,5.6,5.9,6.1,6.3,6.1,6.4,6.6,6.8,6.7,6.0,5.7,5.5,5.5,5.8,6.0,5.4,6.0,6.7,6.3,5.6,5.5,5.5,6.1,5.8,5.0,5.6,5.7,5.7,6.2,5.1,5.7],"yaxis":"y"},{"hovertemplate":"<b>OLS trendline</b><br>sepal_length = 0.865078 * sepal_width + 3.53973<br>R<sup>2</sup>=0.276582<br><br>Species of Iris=versicolor<br>Sepal Width (cm)=%{x}<br>Sepal Length (cm)=%{y} <b>(trend)</b><extra></extra>","legendgroup":"versicolor","marker":{"color":"rgb(252,141,98)","symbol":"circle"},"mode":"lines","name":"versicolor","showlegend":false,"type":"scatter","x":[2.0,2.2,2.2,2.3,2.3,2.3,2.4,2.4,2.4,2.5,2.5,2.5,2.5,2.6,2.6,2.6,2.7,2.7,2.7,2.7,2.7,2.8,2.8,2.8,2.8,2.8,2.8,2.9,2.9,2.9,2.9,2.9,2.9,2.9,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.1,3.1,3.1,3.2,3.2,3.2,3.3,3.4],"xaxis":"x","y":[5.269890155440414,5.442905699481864,5.442905699481864,5.52941347150259,5.52941347150259,5.52941347150259,5.6159212435233155,5.6159212435233155,5.6159212435233155,5.70242901554404,5.70242901554404,5.70242901554404,5.70242901554404,5.788936787564766,5.788936787564766,5.788936787564766,5.875444559585491,5.875444559585491,5.875444559585491,5.875444559585491,5.875444559585491,5.961952331606216,5.961952331606216,5.961952331606216,5.961952331606216,5.961952331606216,5.961952331606216,6.048460103626942,6.048460103626942,6.048460103626942,6.048460103626942,6.048460103626942,6.048460103626942,6.048460103626942,6.134967875647668,6.134967875647668,6.134967875647668,6.134967875647668,6.134967875647668,6.134967875647668,6.134967875647668,6.134967875647668,6.221475647668393,6.221475647668393,6.221475647668393,6.307983419689118,6.307983419689118,6.307983419689118,6.394491191709843,6.480998963730569],"yaxis":"y"},{"hovertemplate":"Species of Iris=virginica<br>Sepal Width (cm)=%{x}<br>Sepal Length (cm)=%{y}<extra></extra>","legendgroup":"virginica","marker":{"color":"rgb(141,160,203)","symbol":"circle"},"mode":"markers","name":"virginica","orientation":"v","showlegend":true,"type":"scatter","x":[3.3,2.7,3.0,2.9,3.0,3.0,2.5,2.9,2.5,3.6,3.2,2.7,3.0,2.5,2.8,3.2,3.0,3.8,2.6,2.2,3.2,2.8,2.8,2.7,3.3,3.2,2.8,3.0,2.8,3.0,2.8,3.8,2.8,2.8,2.6,3.0,3.4,3.1,3.0,3.1,3.1,3.1,2.7,3.2,3.3,3.0,2.5,3.0,3.4,3.0],"xaxis":"x","y":[6.3,5.8,7.1,6.3,6.5,7.6,4.9,7.3,6.7,7.2,6.5,6.4,6.8,5.7,5.8,6.4,6.5,7.7,7.7,6.0,6.9,5.6,7.7,6.3,6.7,7.2,6.2,6.1,6.4,7.2,7.4,7.9,6.4,6.3,6.1,7.7,6.3,6.4,6.0,6.9,6.7,6.9,5.8,6.8,6.7,6.7,6.3,6.5,6.2,5.9],"yaxis":"y"},{"hovertemplate":"<b>OLS trendline</b><br>sepal_length = 0.901534 * sepal_width + 3.90684<br>R<sup>2</sup>=0.209057<br><br>Species of Iris=virginica<br>Sepal Width (cm)=%{x}<br>Sepal Length (cm)=%{y} <b>(trend)</b><extra></extra>","legendgroup":"virginica","marker":{"color":"rgb(141,160,203)","symbol":"circle"},"mode":"lines","name":"virginica","showlegend":false,"type":"scatter","x":[2.2,2.5,2.5,2.5,2.5,2.6,2.6,2.7,2.7,2.7,2.7,2.8,2.8,2.8,2.8,2.8,2.8,2.8,2.8,2.9,2.9,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.1,3.1,3.1,3.1,3.2,3.2,3.2,3.2,3.2,3.3,3.3,3.3,3.4,3.4,3.6,3.8,3.8],"xaxis":"x","y":[5.8902123150582755,6.160672658058943,6.160672658058943,6.160672658058943,6.160672658058943,6.2508261057258325,6.2508261057258325,6.340979553392722,6.340979553392722,6.340979553392722,6.340979553392722,6.431133001059611,6.431133001059611,6.431133001059611,6.431133001059611,6.431133001059611,6.431133001059611,6.431133001059611,6.431133001059611,6.5212864487265,6.5212864487265,6.61143989639339,6.61143989639339,6.61143989639339,6.61143989639339,6.61143989639339,6.61143989639339,6.61143989639339,6.61143989639339,6.61143989639339,6.61143989639339,6.61143989639339,6.61143989639339,6.70159334406028,6.70159334406028,6.70159334406028,6.70159334406028,6.791746791727169,6.791746791727169,6.791746791727169,6.791746791727169,6.791746791727169,6.881900239394057,6.881900239394057,6.881900239394057,6.972053687060947,6.972053687060947,7.152360582394726,7.332667477728504,7.332667477728504],"yaxis":"y"}],                        {"legend":{"title":{"text":"Species of Iris"},"tracegroupgap":0},"template":{"data":{"bar":[{"error_x":{"color":"rgb(36,36,36)"},"error_y":{"color":"rgb(36,36,36)"},"marker":{"line":{"color":"white","width":0.5},"pattern":{"fillmode":"overlay","size":10,"solidity":0.2}},"type":"bar"}],"barpolar":[{"marker":{"line":{"color":"white","width":0.5},"pattern":{"fillmode":"overlay","size":10,"solidity":0.2}},"type":"barpolar"}],"carpet":[{"aaxis":{"endlinecolor":"rgb(36,36,36)","gridcolor":"white","linecolor":"white","minorgridcolor":"white","startlinecolor":"rgb(36,36,36)"},"baxis":{"endlinecolor":"rgb(36,36,36)","gridcolor":"white","linecolor":"white","minorgridcolor":"white","startlinecolor":"rgb(36,36,36)"},"type":"carpet"}],"choropleth":[{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"},"type":"choropleth"}],"contour":[{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"},"colorscale":[[0.0,"#440154"],[0.1111111111111111,"#482878"],[0.2222222222222222,"#3e4989"],[0.3333333333333333,"#31688e"],[0.4444444444444444,"#26828e"],[0.5555555555555556,"#1f9e89"],[0.6666666666666666,"#35b779"],[0.7777777777777778,"#6ece58"],[0.8888888888888888,"#b5de2b"],[1.0,"#fde725"]],"type":"contour"}],"contourcarpet":[{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"},"type":"contourcarpet"}],"heatmap":[{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"},"colorscale":[[0.0,"#440154"],[0.1111111111111111,"#482878"],[0.2222222222222222,"#3e4989"],[0.3333333333333333,"#31688e"],[0.4444444444444444,"#26828e"],[0.5555555555555556,"#1f9e89"],[0.6666666666666666,"#35b779"],[0.7777777777777778,"#6ece58"],[0.8888888888888888,"#b5de2b"],[1.0,"#fde725"]],"type":"heatmap"}],"heatmapgl":[{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"},"colorscale":[[0.0,"#440154"],[0.1111111111111111,"#482878"],[0.2222222222222222,"#3e4989"],[0.3333333333333333,"#31688e"],[0.4444444444444444,"#26828e"],[0.5555555555555556,"#1f9e89"],[0.6666666666666666,"#35b779"],[0.7777777777777778,"#6ece58"],[0.8888888888888888,"#b5de2b"],[1.0,"#fde725"]],"type":"heatmapgl"}],"histogram":[{"marker":{"line":{"color":"white","width":0.6}},"type":"histogram"}],"histogram2d":[{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"},"colorscale":[[0.0,"#440154"],[0.1111111111111111,"#482878"],[0.2222222222222222,"#3e4989"],[0.3333333333333333,"#31688e"],[0.4444444444444444,"#26828e"],[0.5555555555555556,"#1f9e89"],[0.6666666666666666,"#35b779"],[0.7777777777777778,"#6ece58"],[0.8888888888888888,"#b5de2b"],[1.0,"#fde725"]],"type":"histogram2d"}],"histogram2dcontour":[{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"},"colorscale":[[0.0,"#440154"],[0.1111111111111111,"#482878"],[0.2222222222222222,"#3e4989"],[0.3333333333333333,"#31688e"],[0.4444444444444444,"#26828e"],[0.5555555555555556,"#1f9e89"],[0.6666666666666666,"#35b779"],[0.7777777777777778,"#6ece58"],[0.8888888888888888,"#b5de2b"],[1.0,"#fde725"]],"type":"histogram2dcontour"}],"mesh3d":[{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"},"type":"mesh3d"}],"parcoords":[{"line":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"type":"parcoords"}],"pie":[{"automargin":true,"type":"pie"}],"scatter":[{"marker":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"type":"scatter"}],"scatter3d":[{"line":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"marker":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"type":"scatter3d"}],"scattercarpet":[{"marker":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"type":"scattercarpet"}],"scattergeo":[{"marker":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"type":"scattergeo"}],"scattergl":[{"marker":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"type":"scattergl"}],"scattermapbox":[{"marker":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"type":"scattermapbox"}],"scatterpolar":[{"marker":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"type":"scatterpolar"}],"scatterpolargl":[{"marker":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"type":"scatterpolargl"}],"scatterternary":[{"marker":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"type":"scatterternary"}],"surface":[{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"},"colorscale":[[0.0,"#440154"],[0.1111111111111111,"#482878"],[0.2222222222222222,"#3e4989"],[0.3333333333333333,"#31688e"],[0.4444444444444444,"#26828e"],[0.5555555555555556,"#1f9e89"],[0.6666666666666666,"#35b779"],[0.7777777777777778,"#6ece58"],[0.8888888888888888,"#b5de2b"],[1.0,"#fde725"]],"type":"surface"}],"table":[{"cells":{"fill":{"color":"rgb(237,237,237)"},"line":{"color":"white"}},"header":{"fill":{"color":"rgb(217,217,217)"},"line":{"color":"white"}},"type":"table"}]},"layout":{"annotationdefaults":{"arrowhead":0,"arrowwidth":1},"autotypenumbers":"strict","coloraxis":{"colorbar":{"outlinewidth":1,"tickcolor":"rgb(36,36,36)","ticks":"outside"}},"colorscale":{"diverging":[[0.0,"rgb(103,0,31)"],[0.1,"rgb(178,24,43)"],[0.2,"rgb(214,96,77)"],[0.3,"rgb(244,165,130)"],[0.4,"rgb(253,219,199)"],[0.5,"rgb(247,247,247)"],[0.6,"rgb(209,229,240)"],[0.7,"rgb(146,197,222)"],[0.8,"rgb(67,147,195)"],[0.9,"rgb(33,102,172)"],[1.0,"rgb(5,48,97)"]],"sequential":[[0.0,"#440154"],[0.1111111111111111,"#482878"],[0.2222222222222222,"#3e4989"],[0.3333333333333333,"#31688e"],[0.4444444444444444,"#26828e"],[0.5555555555555556,"#1f9e89"],[0.6666666666666666,"#35b779"],[0.7777777777777778,"#6ece58"],[0.8888888888888888,"#b5de2b"],[1.0,"#fde725"]],"sequentialminus":[[0.0,"#440154"],[0.1111111111111111,"#482878"],[0.2222222222222222,"#3e4989"],[0.3333333333333333,"#31688e"],[0.4444444444444444,"#26828e"],[0.5555555555555556,"#1f9e89"],[0.6666666666666666,"#35b779"],[0.7777777777777778,"#6ece58"],[0.8888888888888888,"#b5de2b"],[1.0,"#fde725"]]},"colorway":["#1F77B4","#FF7F0E","#2CA02C","#D62728","#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF"],"font":{"color":"rgb(36,36,36)"},"geo":{"bgcolor":"white","lakecolor":"white","landcolor":"white","showlakes":true,"showland":true,"subunitcolor":"white"},"hoverlabel":{"align":"left"},"hovermode":"closest","mapbox":{"style":"light"},"paper_bgcolor":"white","plot_bgcolor":"white","polar":{"angularaxis":{"gridcolor":"rgb(232,232,232)","linecolor":"rgb(36,36,36)","showgrid":false,"showline":true,"ticks":"outside"},"bgcolor":"white","radialaxis":{"gridcolor":"rgb(232,232,232)","linecolor":"rgb(36,36,36)","showgrid":false,"showline":true,"ticks":"outside"}},"scene":{"xaxis":{"backgroundcolor":"white","gridcolor":"rgb(232,232,232)","gridwidth":2,"linecolor":"rgb(36,36,36)","showbackground":true,"showgrid":false,"showline":true,"ticks":"outside","zeroline":false,"zerolinecolor":"rgb(36,36,36)"},"yaxis":{"backgroundcolor":"white","gridcolor":"rgb(232,232,232)","gridwidth":2,"linecolor":"rgb(36,36,36)","showbackground":true,"showgrid":false,"showline":true,"ticks":"outside","zeroline":false,"zerolinecolor":"rgb(36,36,36)"},"zaxis":{"backgroundcolor":"white","gridcolor":"rgb(232,232,232)","gridwidth":2,"linecolor":"rgb(36,36,36)","showbackground":true,"showgrid":false,"showline":true,"ticks":"outside","zeroline":false,"zerolinecolor":"rgb(36,36,36)"}},"shapedefaults":{"fillcolor":"black","line":{"width":0},"opacity":0.3},"ternary":{"aaxis":{"gridcolor":"rgb(232,232,232)","linecolor":"rgb(36,36,36)","showgrid":false,"showline":true,"ticks":"outside"},"baxis":{"gridcolor":"rgb(232,232,232)","linecolor":"rgb(36,36,36)","showgrid":false,"showline":true,"ticks":"outside"},"bgcolor":"white","caxis":{"gridcolor":"rgb(232,232,232)","linecolor":"rgb(36,36,36)","showgrid":false,"showline":true,"ticks":"outside"}},"title":{"x":0.05},"xaxis":{"automargin":true,"gridcolor":"rgb(232,232,232)","linecolor":"rgb(36,36,36)","showgrid":false,"showline":true,"ticks":"outside","title":{"standoff":15},"zeroline":false,"zerolinecolor":"rgb(36,36,36)"},"yaxis":{"automargin":true,"gridcolor":"rgb(232,232,232)","linecolor":"rgb(36,36,36)","showgrid":false,"showline":true,"ticks":"outside","title":{"standoff":15},"zeroline":false,"zerolinecolor":"rgb(36,36,36)"}}},"title":{"text":"Edgar Anderson's Iris Data"},"xaxis":{"anchor":"y","domain":[0.0,1.0],"title":{"text":"Sepal Width (cm)"}},"yaxis":{"anchor":"x","domain":[0.0,1.0],"title":{"text":"Sepal Length (cm)"}}},                        {"responsive": true}                    )                };                            </script>        </div>
```



## 软件信息 {#session .unnumbered}
\index{xfun}


```r
xfun::session_info(packages = c(
  "knitr", "rmarkdown", "bookdown"
), dependencies = TRUE)
```

```
## R version 4.0.5 (2021-03-31)
## Platform: x86_64-apple-darwin17.0 (64-bit)
## Running under: macOS Catalina 10.15.7
## 
## Locale: en_US.UTF-8 / en_US.UTF-8 / en_US.UTF-8 / C / en_US.UTF-8 / en_US.UTF-8
## 
## Package version:
##   base64enc_0.1.3   bookdown_0.22    
##   digest_0.6.27     evaluate_0.14    
##   glue_1.4.2        graphics_4.0.5   
##   grDevices_4.0.5   highr_0.9        
##   htmltools_0.5.1.1 jsonlite_1.7.2   
##   knitr_1.33        magrittr_2.0.1   
##   markdown_1.1      methods_4.0.5    
##   mime_0.10         rlang_0.4.11     
##   rmarkdown_2.8     stats_4.0.5      
##   stringi_1.6.2     stringr_1.4.0    
##   tinytex_0.31      tools_4.0.5      
##   utils_4.0.5       xfun_0.23        
##   yaml_2.2.1       
## 
## Pandoc version: 2.11.4
```



