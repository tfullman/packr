#' Standard error of a sample mean
#'
#' @param x Vector of numbers
#'
#' @return Numeric value
#' @export
#'
#' @examples se(1:5)
se <-
  function(x){
    stats::sd(x) / sqrt(length(x))
  }
