pollutantmean <- function(directory,pollutant,id = 1:332){
        file_list <- list.files(directory, pattern = ".csv", full.names = T)
        empty_vec <- numeric()
        for (i in id){
                data <- read.csv(file_list[i])
                empty_vec <- c(empty_vec,data[[pollutant]])
        }
        mean(empty_vec,na.rm = T)        
}
    
