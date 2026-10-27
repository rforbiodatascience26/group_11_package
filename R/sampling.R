#' sampling
#'
#' @param seqLength
#'
#' @returns DNA string with required length
#' @export
#'
#' @examples sampling(10)
#'
sampling <- function(seqLength){
  bases <- sample(c("A", "T", "G", "C"), size = seqLength, replace = TRUE)
  dnaString <- paste0(bases, collapse = "")
  return(dnaString)
}
