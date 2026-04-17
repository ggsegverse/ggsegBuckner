# Buckner 17-Network Cerebellar Parcellation

Cerebellar parcellation into 17 functional networks from Buckner et al.
(2011). Contains 2D polygon geometry and 3D meshes.

## Usage

``` r
buckner17()
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
[`buckner7()`](https://ggseg.github.io/ggsegBuckner/reference/buckner7.md)

Other cerebellar_atlases:
[`buckner7()`](https://ggseg.github.io/ggsegBuckner/reference/buckner7.md)

## Examples

``` r
buckner17()
#> 
#> ── buckner17 ggseg atlas ───────────────────────────────────────────────────────
#> Type: subcortical
#> Regions: 17
#> Hemispheres: NA
#> Views: axial_1, axial_2, axial_3, coronal_1, sagittal, coronal_2
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (meshes)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 17 × 3
#>    hemi  region        label        
#>    <chr> <chr>         <chr>        
#>  1 NA    17networks 1  17Networks_1 
#>  2 NA    17networks 2  17Networks_2 
#>  3 NA    17networks 3  17Networks_3 
#>  4 NA    17networks 4  17Networks_4 
#>  5 NA    17networks 5  17Networks_5 
#>  6 NA    17networks 6  17Networks_6 
#>  7 NA    17networks 7  17Networks_7 
#>  8 NA    17networks 8  17Networks_8 
#>  9 NA    17networks 9  17Networks_9 
#> 10 NA    17networks 10 17Networks_10
#> 11 NA    17networks 11 17Networks_11
#> 12 NA    17networks 12 17Networks_12
#> 13 NA    17networks 13 17Networks_13
#> 14 NA    17networks 14 17Networks_14
#> 15 NA    17networks 15 17Networks_15
#> 16 NA    17networks 16 17Networks_16
#> 17 NA    17networks 17 17Networks_17
```
