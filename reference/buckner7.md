# Buckner 7-Network Cerebellar Parcellation

Cerebellar parcellation into 7 functional networks from Buckner et al.
(2011). Contains 2D polygon geometry and 3D meshes.

## Usage

``` r
buckner7()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (subcortical).

## References

Buckner RL et al. (2011). The organization of the human cerebellum
estimated by intrinsic functional connectivity.
[doi:10.1152/jn.00339.2011](https://doi.org/10.1152/jn.00339.2011)

## See also

Other ggseg_atlases:
[`buckner17()`](https://ggseg.github.io/ggsegBuckner/reference/buckner17.md)

Other cerebellar_atlases:
[`buckner17()`](https://ggseg.github.io/ggsegBuckner/reference/buckner17.md)

## Examples

``` r
buckner7()
#> 
#> ── buckner7 ggseg atlas ────────────────────────────────────────────────────────
#> Type: subcortical
#> Regions: 7
#> Hemispheres: NA
#> Views: axial_1, coronal_1, sagittal, axial_2, axial_3, coronal_2
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (meshes)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 7 × 3
#>   hemi  region      label      
#>   <chr> <chr>       <chr>      
#> 1 NA    7networks 1 7Networks_1
#> 2 NA    7networks 2 7Networks_2
#> 3 NA    7networks 3 7Networks_3
#> 4 NA    7networks 4 7Networks_4
#> 5 NA    7networks 5 7Networks_5
#> 6 NA    7networks 6 7Networks_6
#> 7 NA    7networks 7 7Networks_7
```
