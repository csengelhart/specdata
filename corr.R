corr <- function(directory,threshold = 0){
        list_file <- list.files(directory, pattern = ".csv",full.names = T)
        cor_empty <- c()
        id = 1:332
        
        for (i in id){
                datas <- read.csv(list_file[i])
                num_comp_cases <- nrow(na.omit(datas))
                if(num_comp_cases > threshold){
                        cor_data <- cor(datas$sulfate,datas$nitrate,use = "complete.obs")
                        cor_empty <- c(cor_empty,cor_data)
                }
                else
                        cor_empty <- numeric()
                        
                }
                cor_empty
        
        }
        


