#' Translate codons into a protein sequence
#'
#' @param codons A character vector of codons, eg c("ATG", "GCT")
#'
#' @return A single character string of amino acids, one per codon
#'
#' @examples
#' concise(c("AUG", "GCU"))
#'
#' @export
concise <- function(codons){
  protein <- paste0(codonsTable[codons], collapse = "")
  return(protein)
}
