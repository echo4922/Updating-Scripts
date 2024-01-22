##author: Eddie Cho##
##This is a simple R script to update packages and its necessary dependencies on base R##
##This is invoked by Bash shell script##

#Welcome user
print("Welcome. Updating Rscript executed...")
cat ("\n")

#print current R version
R.version.string
cat ("\n")

#print Bioconductor version
paste("Bioconductor version:", BiocManager::version() )
cat ("\n")

#print current working directory
paste( "Current R working directory:", getwd() )
cat ("\n")

#Load parallel library 
library("parallel")
print("library, 'parallel'  loaded")

#Check and print number of cors
cat ("\n")
paste("From loaded R package, Parallel, # of cores: ", detectCores() )

#Update R
cat ("\n")
print("Updating R...Please wait")

#Update all packages and overwite permission
update.packages(ask = FALSE)
cat ("\n")

print("R updates done.")
cat ("\n")
