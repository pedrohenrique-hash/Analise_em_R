filhos<-c(3,4,3,1,3,2,1,1,2,2,4,4,1,3,2,2,4,4,3,3,1,0,2,1,3,2,2,4, 2,1,1,4,1,0,1,3,3,0,3,3)

tab.filhos <-table(filhos)

df<-matrix(0,6,3)

colnames(df)<-c("fa", "fr", "fp")
rownames(df)<-c(sample(0:4, size=5, replace = TRUE),"Total")


for(i in 1:6){
    if(i<= 5){
        df[i,1]<-tab.filhos[i-1]
    }
    else {
        df[i,1]<-length(filhos)    
    }

    for(i in 1:6){df[i,2] <- df[i,1]/length(filhos)}

    for (i in 1:6) {df[i,3]<-df[i,2]*100}