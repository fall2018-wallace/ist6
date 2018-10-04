
clean_data <- raw_data

readStates <-function(States)
{
    States <- States[-1,]
    num.row <- nrow(States)
    States <- States[-num.row,]
    States <- States[,-1:-4]
    colnames(States) <- c("StateName","Population", "PopOver18","PercentOver18")
    return(States)
    
}

cleanCensus <- readStates(raw_data)
str(cleanCensus)
