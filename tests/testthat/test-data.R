for (nm in c("buckner7", "buckner17")) {
  atlas <- do.call(nm, list())

  describe(paste(nm, "atlas"), {
    it("is a valid subcortical ggseg_atlas", {
      expect_s3_class(atlas, "ggseg_atlas")
      expect_s3_class(atlas, "subcortical_atlas")
      expect_true(ggseg.formats::is_ggseg_atlas(atlas))
    })

    it("renders 2D plot", {
      skip_if_not_installed("ggseg")
      skip_if_not_installed("ggplot2")
      skip_if_not_installed("vdiffr")
      p <- plot(atlas) + ggplot2::theme_void()
      vdiffr::expect_doppelganger(paste0(nm, "-2d"), p)
    })

    it("renders with ggseg3d", {
      skip_if_not_installed("ggseg3d")
      p <- ggseg3d::ggseg3d(atlas = atlas)
      expect_s3_class(p, c("plotly", "htmlwidget"))
    })
  })
}
