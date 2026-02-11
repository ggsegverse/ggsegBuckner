library(dplyr)
library(ggsegExtra)
library(ggseg.formats)

future::plan(future::multisession(workers = 4))
progressr::handlers("cli")
progressr::handlers(global = TRUE)

# -- 7 Networks ----------------------------------------------------------------

cli::cli_h1("Creating Buckner 7 Networks atlas")

buckner7_raw <- create_subcortical_atlas(
  input_volume = here::here("data-raw", "Buckner2011_7Networks_MNI152_FreeSurferConformed1mm_LooseMask.nii.gz"),
  input_lut = here::here("data-raw", "Buckner2011_7Networks_ColorLUT.txt"),
  atlas_name = "buckner7",
  output_dir = "data-raw/buckner7",
  tolerance = 1,
  smoothness = 2,
  decimate = 0.5,
  skip_existing = TRUE,
  cleanup = FALSE,
  verbose = TRUE
) |>
  atlas_view_gather()

buckner7 <- buckner7_raw
cli::cli_alert_success("buckner7: {nrow(buckner7$core)} regions")
print(buckner7)

# -- 17 Networks ---------------------------------------------------------------

cli::cli_h1("Creating Buckner 17 Networks atlas")

buckner17_raw <- create_subcortical_atlas(
  input_volume = here::here("data-raw", "Buckner2011_17Networks_MNI152_FreeSurferConformed1mm_LooseMask.nii.gz"),
  input_lut = here::here("data-raw", "Buckner2011_17Networks_ColorLUT.txt"),
  atlas_name = "buckner17",
  output_dir = "data-raw/buckner17",
  tolerance = 1,
  smoothness = 2,
  decimate = 0.5,
  skip_existing = TRUE,
  cleanup = FALSE,
  verbose = TRUE
) |>
  atlas_view_gather()

buckner17 <- buckner17_raw
cli::cli_alert_success("buckner17: {nrow(buckner17$core)} regions")
print(buckner17)

# -- Save ----------------------------------------------------------------------

brain_pals <- stats::setNames(
  list(buckner7$palette, buckner17$palette),
  c(buckner7$atlas, buckner17$atlas)
)
save(brain_pals, file = here::here("R/sysdata.rda"), compress = "xz")

usethis::use_data(buckner7, buckner17, overwrite = TRUE, compress = "xz")
cli::cli_alert_success("Saved buckner7 and buckner17 to data/")
