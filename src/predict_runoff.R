#' Predict storm water runoff
#'
#' @param Ia fraction of watershed labelled "impervious" (unitless)
#' @param area area of watershed (acres)
#'
#' @return volume of runoff stormwater (cubic feet)
#' @export
#'
#' @examples
#' predict_runoff(Ia = 0.5, area = 20)
predict_runoff <- function(Ia, area) {
  Rv <- 0.05 + (0.09 * Ia)
  volume <- 3630 * 1.0 * Rv * area
  return(volume)
}
