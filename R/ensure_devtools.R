#' Ensure devtools are installed
#' 
#' @import devtools utils
#' 
#' @export
#' 
#' @examples
#' library(lwPackageHelperR)
#' ensure_devtools()
ensure_devtools <- function(){
  str.cran.repo <- 'http://cran.revolutionanalytics.com/'
  str.lib <- .Library
  if ("devtools" %in% installed.packages()){
    print('devtools already installed')
  }else{
    utils::install.packages("devtools", repos=str.cran.repo,
                             dep=TRUE,lib=str.lib)
    print('devtools installed')
    
  }
}
