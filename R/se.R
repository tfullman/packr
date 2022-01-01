#' Standard error of a sample mean
#'
#' Calculates the standard error of a sample mean. Note `NA` values are
#' automatically omitted by default.
#'
#' @param x Vector of numbers
#'
#' @return Numeric value
#' @export
#'
#' @examples
#' se(1:5)
#' se(c(1:3,NA,4:5))
se <-
  function(x){
    stats::sd(x, na.rm=TRUE) / sqrt(length(stats::na.omit(x)))
  }
