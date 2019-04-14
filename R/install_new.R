#' Install a new package
#' 
#' @param pkg String. The package to install
#' @param repo Sring, Repository. Default: 'http://cran.revolutionanalytics.com/'
#' @param libPath String Ex:.libPaths()[1] 
#' 
#' @export
#' 
#' @examples
#' library(lwPackageHelperR)
#' install_new("scales")

install_new <- function(pkg,
                        repo = "http://cran.revolutionanalytics.com/",
                        libPath = .libPaths()[1]){
  if (pkg %in% installed.packages()){
    str.line <- paste0("Package ", pkg, " already installed \n")
    cat(str.line)
  }else{
    utils::install.packages(pkg,
                            repos = repo,
                            dep = TRUE, lib = libPath)
    str.line <- paste0("Package ", pkg, " not found, so installing with dependencies... \n")
    cat(str.line)
    cat("Press CTRL C to abort.\n")
    cat()
    Sys.sleep(5)
  }
}
