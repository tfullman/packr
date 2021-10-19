library(tmap)
library(magrittr)

data('World', 'metro')

## Use the example world data to create an interactive map
tmap_base() +
  ## Add country polygons, colored by the Happy Planet Index
  tm_shape(World) +
  tm_polygons('HPI') +
  ## Add cities, sized proportional to population, with clustering
  tm_shape(metro) +
  tm_dots(
    size = 'pop2020',
    col = 'blue',
    clustering = TRUE)
