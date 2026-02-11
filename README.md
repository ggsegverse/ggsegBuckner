# ggsegBuckner

Buckner cerebellar functional connectivity parcellation for the
[ggseg](https://github.com/ggseg/ggseg) plotting ecosystem.

Provides two atlas variants based on the Buckner 2011 cerebellar parcellation:

- **buckner7** -- 7-network parcellation
- **buckner17** -- 17-network parcellation

## Installation

We recommend installing ggseg atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

```r
options(repos = c(
    ggseg = "https://ggseg.r-universe.dev",
    CRAN = "https://cloud.r-project.org"))

install.packages("ggsegBuckner")
```

You can install the development version from
[GitHub](https://github.com/) with:

```r
# install.packages("devtools")
devtools::install_github("ggseg/ggsegBuckner")
```

## Example

```r
library(ggsegBuckner)
library(ggseg)
library(ggplot2)

plot(buckner7) +
  theme(legend.position = "bottom",
        legend.text = element_text(size = 7)) +
  guides(fill = guide_legend(ncol = 2))

plot(buckner17) +
  theme(legend.position = "bottom",
        legend.text = element_text(size = 7)) +
  guides(fill = guide_legend(ncol = 3))
```

## Source data

The NIfTI volumes and color lookup tables in `data-raw/` were copied from the
FreeSurfer 7.4.1 installation at:

```
$FREESURFER_HOME/average/Buckner_JNeurophysiol11_MNI152/
```

These are MNI152-space cerebellar parcellations derived from resting-state
functional connectivity in 1000 subjects.

## Reference

Buckner RL, Krienen FM, Castellanos A, Diaz JC, Yeo BTT (2011).
The organization of the human cerebellum estimated by intrinsic functional
connectivity. *J Neurophysiol*, 106(5):2322-2345.
doi:[10.1152/jn.00339.2011](https://doi.org/10.1152/jn.00339.2011)

## Code of Conduct

Please note that the ggsegBuckner project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this
project, you agree to abide by its terms.
