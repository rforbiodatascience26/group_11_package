#' getCodon
#'
#' @param dnaseq A single character string containing the DNA sequence
#'   (e.g. "ATGGCCTAA"). Only one sequence at a time is supported.
#' @param start An integer (1, 2 or 3) giving the position where reading
#'   begins, which sets the reading frame. Defaults to 1.
#'
#' @returns A character vector of codons (3-letter chunks). Leftover bases
#'   at the end that don't form a full codon are dropped.
#' @export
#'
#' @examples
#' getCodons("ATGGCCTAA")
getCodons <- function(dnaseq, start = 1){
  seqlen <- nchar(dnaseq)
  codons <- substring(dnaseq,
                      first = seq(from = start, to = seqlen-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seqlen, by = 3))
  return(codons)
}
