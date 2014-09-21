---
title       : Introducing MyStAT
subtitle    : A simple stock analysis tool
author      : Jon K
job         : Data Scientist
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Overview

MyStAT is intended to be a simple stock analysis tool.
By a few mouse clicks, users are presented with a few charting options and advanced technical analysis indicator. With proposed future work, users will also be able to select advanced models to generate buy/sell signals.

MyStAT uses a few popular and easy to use technologies. It's so easy to use that users don't need to have any knowledge of R, or web development. Users don't even need to know a lot about stock market to take advantage of this web application.

---

## Behind the scenes

Behind the fancy Shiny app UI, MyStAT leverages the R quantmod package, which is designed to assist the quantitative trader in the development, testing, and deployment of statistically based trading models.

Advanced users should also look into the source code of MyStAT to incorporate additional features as they desire.

In the next slide, I will show the core part of code currently implemented for MyStAT.

---

## Core code



```r
getSymbols("MSFT", from = "2014-01-01")
```

```
## Warning: downloaded length 9093 != reported length 200
```

```r
barChart(MSFT)
```

<img src="assets/fig/unnamed-chunk-2.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" style="display: block; margin: auto;" />

---

## Future Work

As current project is only a prototype, future work is planned to improve the data app:

- Add more input widgets such as date picker to look at specific date range.
- Use interactive chart.
- Add more technical analysis indicators such as MACD, BBands and so on.
- Build model to generate signals.
