#' Install new packages from github
#' 
#' @param pkg String. Package name. Ex: 'rPeaks'
#' 
#' @param repo String. Repository name. Ex: 'jrminter'
#' 
#' @param libPath String Ex:.libPaths()[1] 
#' 
#' @import devtools
#' @import withr
#' 
#' @export
#' 
#' @examples
#' library(lwPackageHelperR)
#' install_new_github( 'rPeaks', 'jrminter', .libPaths()[1])

install_new_github <- function(pkg, repo, libPath){
  str_pkg <- paste0(repo, '/', pkg)
  with_libpaths(new=libPath, install_github(str_pkg))
}
