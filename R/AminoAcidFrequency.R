#' Function to Generate an Amino Acid Frequency Bar Plot
#'
#' @param protein_sequence A character string containing an amino acid sequence
#'
#' @returns A ggplot bar chart showing the frequency of each unique amino acid.
#' @export
#'
#' @examples
#' protein <- "MKTLLILAVAA"
#' character_frequency_plot(protein)
#'
character_frequency_plot <- function(aminoacid){

  # Split the input text into individual characters and keep only the unique ones
  unique_characters <- aminoacid |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
            unique()

  # Count how many times each unique character appears in the text
       counts <- sapply(unique_characters, function(amino_acid) stringr::str_count(string = aminoacid, pattern =  amino_acid)) |>
              as.data.frame()

           colnames(counts) <- c("Counts")
           counts[["aminoacid"]] <- rownames(counts)

  # Create a bar plot showing the frequency of each character
             frequency_plot <- counts |>
                   ggplot2::ggplot(ggplot2::aes(x = aminoacid, y = Counts, fill = aminoacid)) +
                   ggplot2::geom_col() +
                   ggplot2::theme_bw() +
                   ggplot2::theme(legend.position = "none")

  # Return the completed plot
               return(frequency_plot)
}

