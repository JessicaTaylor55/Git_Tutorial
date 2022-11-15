pkg <- c("usethis", "gitcreds", "knitr")
print("Check if packages are installed")
new.pkg <- pkg[!(pkg %in% installed.packages())]
if(length(new.pkg) > 0){
  print(paste("Install missing package(s):", new.pkg, sep=' '))
  install.packages(new.pkg, dependencies = TRUE)
}else{
  print("All packages are already installed!")
}
print("Load packages and return status")
sapply(pkg, require, character.only = TRUE)
