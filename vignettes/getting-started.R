## ---- echo=FALSE---------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, warning=FALSE)

## ----install_dt----------------------------------------------------------
if( Sys.info()['sysname'] == "Windows"){
	
	Sys.setenv(JAVA_HOME="")
	print("unset JAVA_HOME for Windows")
}

library(lwPackageHelperR)
install_new('devtools', .libPaths()[1])


## ----install_xa_gt-------------------------------------------------------
if( Sys.info()['sysname'] == "Windows"){
	
	Sys.setenv(JAVA_HOME="")
	print("unset JAVA_HOME for Windows")
}

install_new_github('xaringan','yihui',.libPaths()[1])


