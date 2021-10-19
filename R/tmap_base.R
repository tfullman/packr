#' Interactive map base plot
#'
#' This function provides a basic interactive map. By default it contains three
#' basemap layers: OpenStreet Maps streets, a global orthophoto, and a global
#' terrain map. This is indended to get things started with an interactive map
#' to which additional layers will be added by the user.
#'
#' @param data Optional spatial data source containing the spatial information
#'   to be plotted in the interactive map.
#'
#' @return A tmap object with `tmap_mode()` set to `view`.
#' @export
#' @import  tmap
#'
#' @example man/tmap_base_example.R
tmap_base <- function(data = NULL){
  tmap_mode('view')
  tm_basemap(c('OpenStreetMap',
               'Esri.WorldImagery',
               'Esri.WorldTopoMap'))
}
