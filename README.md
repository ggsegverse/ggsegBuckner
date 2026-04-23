

<!-- README.md is generated from README.qmd. Please edit that file -->

# ggsegBuckner

<!-- badges: start -->

[![R-CMD-check](https://github.com/ggsegverse/ggsegBuckner/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ggsegverse/ggsegBuckner/actions/workflows/R-CMD-check.yaml)
[![r-universe](https://ggseg.r-universe.dev/badges/ggsegBuckner.png)](https://ggseg.r-universe.dev/ggsegBuckner)
<!-- badges: end -->

Buckner cerebellar functional parcellation for the ggseg ecosystem.

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
options(repos = c(
  ggseg = "https://ggseg.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))

install.packages("ggsegBuckner")
```

You can install this package from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("ggsegverse/ggsegBuckner")
```

## 7-network parcellation

``` r
library(ggseg)
library(ggsegBuckner)

plot(buckner7())
```

<img src="man/figures/README-buckner7-1.png" style="width:100.0%" />

## 17-network parcellation

``` r
plot(buckner17())
```

<img src="man/figures/README-buckner17-1.png" style="width:100.0%" />

## Data source

Buckner RL et al. (2011). The organization of the human cerebellum
estimated by intrinsic functional connectivity. *Journal of
Neurophysiology*, 106(5), 2322-2345.
