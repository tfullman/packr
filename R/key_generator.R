#' Generate unique keys for dataset
#'
#' This function generates a unique set of alphanumeric keys that can be
#' assigned to a data.frame or other dataset. The code is adapted from that of
#' Julien Navarre in \href{https://stackoverflow.com/questions/29652356/generate-unique-alphanumeric-ids}{this Stack Overflow thread}.
#' Parameters match those of the \code{\link[stringi]{stri_rand_strings}} function.
#'
#' @param n Integer indicating the desired number of keys to generate.
#' @param key_length Integer indicating the desired length of they key strings.
#' @param ... Additional arguments passed on to `stri_rand_strings` (e.g., a
#'   `pattern` argument specifying character classes from which elements will be
#'   drawn).
#'
#' @return Character vector of length `n` containing unique alphanumeric keys.
#' @export
#' @import  stringi
#'
#' @examples
#' key_generator(n=10, key_length = 6)
#' key_generator(n=5, key_length = 11)
#' key_generator(n=15, key_length = 3)
#'
#' ## Add key to data.frame
#' df <- data.frame(x=letters[1:10], y = 1:10)
#' df <- cbind(
#'   data.frame(key = key_generator(n=nrow(df), key_length = 3)),
#'   df)
#' df
key_generator <- function(n, key_length, ...){
  ## Generate an initial key list
  keys <- stringi::stri_rand_strings(n=n, length = key_length)
  ## Check for and deal with duplicates
  while(any(duplicated(keys))){
    keys[which(duplicated(keys))] <-
      stringi::stri_rand_strings(n=sum(duplicated(keys), na.rm=TRUE), length = key_length)
  }
  return(keys)
}
