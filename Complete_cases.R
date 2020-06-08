complete <- function(directory,id = 1:332){
        list_file <- list.files(directory, pattern = ".csv",full.names = T)
        emp_vec <- c() #emp for complete cases
        emp_vec2 <- c() #emp char vec for filename
        x <- c("ID","nobs")
        
        for (i in id){
                datas <- read.csv(list_file[i])
                row_num <- nrow(na.omit(datas))
                emp_vec2 <- c(emp_vec2,i)
                emp_vec <- c(emp_vec,row_num)
        }
        data.frame(id = emp_vec2, nobs = emp_vec)
} 

