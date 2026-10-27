#' Substitute function that replaces every occurence of T with U in a character string
#'
#' @param sub1  A character string in which to replace "T" with "U".
#'
#' @returns A character string with all occurrences of "T" replaced by "U".
#' @export
#' @examples
#' substituteT4U("ATGT")
#' substituteT4U("TTAA")
substituteT4U <- function(sub1){
  sub2 <- gsub("T", "U", sub1)
  return(sub2)
}
