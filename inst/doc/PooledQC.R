## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(enviGCMS)

## -----------------------------------------------------------------------------
data(list)
plotden(list$data,list$group,ylim = c(0,1))

## -----------------------------------------------------------------------------
data(list)
plotrla(list$data,as.factor(list$group))

## -----------------------------------------------------------------------------
data(list)
plotridges(list$data, as.factor(list$group))

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

