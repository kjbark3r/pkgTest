### ### ### ### ### ### ### ### ### ### ### 
# IPAK FUNCTION TO INSTALL AND LOAD       #
#       MULTIPLE R PACKAGES               #
### ### ### ### ### ### ### ### ### ### ### 


    
  ## This function was written by Steven Worthington
  ## original code @ https://gist.github.com/stevenworthington/3178163



## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## 


  # -Checks to see if packages are installed. 
  # -installs them if they are not, then loads them into the R session.


#' ipak Function
#'
#' This function hecks to see if packages are installed, installs them if they are not, then loads them into the R session..
#' @param pkg user-created list of packages, concatenated and individually quoted
#' @keywords packages
#' @export
#' @examples
#' ipak()

  
      ipak <- function(pkg){
        new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
        if (length(new.pkg)) 
            install.packages(new.pkg, dependencies = TRUE)
        sapply(pkg, require, character.only = TRUE)
      }
      
      
## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ##       



