## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(enviGCMS)

## -----------------------------------------------------------------------------
plotpeak(list$data, lv = as.factor(list$group$sample_group))

## -----------------------------------------------------------------------------
plotpeak(t(list$data))

## -----------------------------------------------------------------------------
data(list)
plotden(list$data,list$group$sample_group,ylim = c(0,1))
# 1-d density for multiple samples
plotrug(log(list$data), lv = as.factor(list$group$sample_group))

## -----------------------------------------------------------------------------
data(list)
plotrla(list$data,as.factor(list$group$sample_group))

## -----------------------------------------------------------------------------
data(list)
plotridges(list$data, as.factor(list$group$sample_group))
# ridgeline density plot
plotridge(t(list$data),indexy=c(1:10),xlab = 'Intensity',ylab = 'peaks')
plotridge(log(list$data),as.factor(list$group$sample_group),xlab = 'Intensity',ylab = 'peaks')

## -----------------------------------------------------------------------------
data(list)
apply(list$data,2,getdwtus)
plotdwtus(list)

## -----------------------------------------------------------------------------
order <- 1:12
# n means how many points to build a linear regression model
n = 5
idx <- getpqsi(list$data,order,n = n)
plot(idx~order[-(1:(n-1))],pch=19)

