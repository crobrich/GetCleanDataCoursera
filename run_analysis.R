## Tidy Data Project Using Samsung Data

install.packages("dplyr")
library(dplyr)
library(data.table)

##Combining Test data files
setwd("C:/Users/CRRAttorney/Coursera/3_GetCleanData/UCI HAR Dataset/test")
data1<-read.table("subject_test.txt")
data2<-read.table("y_test.txt")
data3<-read.table("x_test.txt")
data4<-cbind(data3,data2)
data5<-cbind(data4,data1)

##Combining Training data files
setwd("C:/Users/CRRAttorney/Coursera/3_GetCleanData/UCI HAR Dataset/train")
data11<-read.table("subject_train.txt")
data12<-read.table("y_train.txt")
data13<-read.table("x_train.txt")
data14<-cbind(data13,data12)
data15<-cbind(data14,data11)

## Combining Test And Training data
data21<-rbind(data15,data5)

## Finding Mean and Std Dev variables
setwd("C:/Users/CRRAttorney/Coursera/3_GetCleanData/UCI HAR Dataset")
features<-read.table("features.txt")
mn<-grep("mean()", as.character(features[,2]), fixed=TRUE)  
stddev<-grep("std()", as.character(features[,2]), fixed=TRUE)
mnstd<-c(mn,stddev,562,563)

##Partioning by taking only mean and std dev variables plus activity and subject
data30<-data21[,mnstd]

##Changing activity numbers to activity names
act<-read.table("activity_labels.txt")
data30<-mutate(data30, V1.1=act[V1.1,2])

##Changing variables names to descriptive names
data30<-rename(data30, activity=V1.1, subject=V1.2)
mnstd2<-mnstd[1:66]
setnames(data30, old = colnames(data30[1:66]), new = as.character(features[mnstd2,2]))

## tidydata1 is first tidy data set
tidydata1<-data30

##Second tidy data set - averages over all 180 combos of subjects AND activities for each variable
td2<-matrix(nrow=180,ncol=68)
td2<-as.data.frame(td2)
td2[,67]<-"a"
td2[,68]<-as.integer(0)
actchar<-as.character(act[,2])
k<-0
for (i in actchar){
  for (j in 1:30){
    td2[(j+(30*k)),1:66]<-colMeans(tidydata1[((as.character(tidydata1[,67]))==i & tidydata1[,68]==j),1:66])
    td2[(j+(30*k)),67]<-i
    td2[(j+(30*k)),68]<-j
  }
  k=k+1
}

## Setting variable names in td2 as "avg" ...
td2<-rename(td2, activity=V67, subject=V68)
mnstd2<-mnstd[1:66]
setnames(td2, old = colnames(td2[1:66]), new = (paste("avg", as.character(features[mnstd2,2]), sep="")))

## tidydata2 is second tidy data set
tidydata2<-td2

##Writing tidydata2 to text file
setwd("C:/Users/CRRAttorney/Coursera/3_GetCleanData")
write.table(tidydata2, file="tidydata2.txt", row.names=FALSE)
