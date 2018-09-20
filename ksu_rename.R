#' @title rename breeding lines
#' @description format line names
#' @param x A string
#' @return A formatted name
#' @export
#' @examples \dontrun{
#' # I don't want you to run this}
#' x = 'KS8976-K-M-12'
#' ksu.rename(x)
ksu.rename <- function(x){
  x <- toupper(x)
  x <- gsub(' ', '', x)
  x <- gsub('-K', 'K', x)
  x <- gsub('-M', 'M', x)
  x <- gsub('-LN', 'LN', x)
  x <- gsub('-BE', 'BE', x)
  x <- gsub('(KS\\d+HW\\d+)(-\\d+.*)', '\\1', x) # remove dashes in Guorong's lines
  x <- gsub('(KS\\d+H\\d+)(-\\d+.*)', '\\1', x)
  return(x)
}
