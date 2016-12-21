clusterdata <- read.csv("C:/Users/pullannagari.manasa/Desktop/clusterdata.csv")
clusterdata<-clusterdata[-33,]
str(clusterdata)
library(pastecs)
sr<-data.frame(stat.desc(clusterdata[,-c(1:5)]) )
changes<- data.frame(rnorm(200,mean= 0.649062500   ,sd=0.094403368 ))
colnames(changes)<-"C01..Colorectal.Cancer.Screening"
changes$D13..Medication.Adherence.for.Cholesterol..Statins.<- (rnorm(200,mean=0.708125000,sd=0.063725090))
changes$C02..Cardiovascular.Care...Cholesterol.Screening<- (rnorm(200,mean= 0.905000000  ,sd=0.043477840   ))
changes$C03..Diabetes.Care...Cholesterol.Screening<- (rnorm(200,mean= 0.901875000  ,sd=0.049607329   ))
changes$C04..Annual.Flu.Vaccine<- (rnorm(200,mean=  0.705312500  ,sd=0.082773861   ))
changes$C05..Improving.or.Maintaining.Physical.Health<- (rnorm(200,mean=   6.915625e-01  ,sd=2.554053e-02     ))
changes$C06..Improving.or.Maintaining.Mental.Health<- (rnorm(200,mean=  7.918750e-01  ,sd=2.116563e-02     ))
changes$C07..Monitoring.Physical.Activity<- (rnorm(200,mean=0.505312500  ,sd=0.052853075     ))
changes$C08..Adult.BMI.Assessment<- (rnorm(200,mean= 0.914062500   ,sd=0.047373558    ))
changes$C09..Special.Needs.Plan..SNP..Care.Management<- (rnorm(200,mean= 0.50281250 ,sd= 0.16392828    ))
changes$C10..Care.for.Older.Adults...Medication.Review<- (rnorm(200,mean= 0.84531250 ,sd=0.11823935  ))
changes$C11..Care.for.Older.Adults...Functional.Status.Assessment<- (rnorm(200,mean= 0.72156250 ,sd=0.18274095   ))
changes$C12..Care.for.Older.Adults...Pain.Assessment<- (rnorm(200,mean=0.80906250 ,sd=0.16410774))
changes$C13..Osteoporosis.Management.in.Women.who.had.a.Fracture<- (rnorm(200,mean=0.35062500 ,sd=0.20988380))
changes$C14..Diabetes.Care...Eye.Exam<- (rnorm(200,mean=0.677812500 ,sd=0.093902296))
changes$C15..Diabetes.Care...Kidney.Disease.Monitoring<-(rnorm(200,mean=0.914375000 ,sd=0.036714900))
changes$C16..Diabetes.Care...Blood.Sugar.Controlled<-(rnorm(200,mean=0.751562500  ,sd=0.079559650 ))
changes$C17..Diabetes.Care...Cholesterol.Controlled<- (rnorm(200,mean=0.535312500   ,sd=0.085458323  ))
changes$C18..Controlling.Blood.Pressure<-(rnorm(200,mean=0.63875000  ,sd=0.10341741  ))
changes$C19..Rheumatoid.Arthritis.Management<- (rnorm(200,mean=0.754375000  ,sd=0.080959468  ))
changes$C20..Improving.Bladder.Control<-(rnorm(200,mean=0.346875000  ,sd=0.042611334   ))
changes$C21..Reducing.the.Risk.of.Falling<-(rnorm(200,mean=0.632187500    ,sd=0.057177391   ))
changes$C22..Plan.All.Cause.Readmissions<- (rnorm(200,mean=1.059375e-01,sd=1.240691e-02   ))
changes$C23..Getting.Needed.Care<- (rnorm(200,mean=8.403125e-01,sd=2.776449e-02   ))
changes$C24..Getting.Appointments.and.Care.Quickly<-(rnorm(200,mean=0.744062500 ,sd=0.039008632   ))
changes$C25..Customer.Service<- (rnorm(200,mean= 8.690625e-01   ,sd=2.387594e-02   ))
changes$C26..Rating.of.Health.Care.Quality<- (rnorm(200,mean=8.575000e-01 ,sd=1.917660e-02   ))
changes$C27..Rating.of.Health.Plan<- (rnorm(200,mean= 8.568750e-01,sd=2.966887e-02   ))
changes$C28..Care.Coordination<- (rnorm(200,mean=8.518750e-01,sd=2.101267e-02  ))
changes$C29..Complaints.about.the.Health.Plan<- (rnorm(200,mean=0.21187500,sd=0.12019977 ))
changes$C30..Members.Choosing.to.Leave.the.Plan<- (rnorm(200,mean=0.110937500,sd=0.073850738))
changes$C32..Plan.Makes.Timely.Decisions.about.Appeals<- (rnorm(200,mean=0.86562500,sd=0.17290567 ))
changes$C33..Reviewing.Appeals.Decisions<- (rnorm(200,mean=0.879062500,sd=0.070954750 ))
changes$D01..Appeals.Auto.Forward<- (rnorm(200,mean=3.678125,sd=5.814705))
changes$D02..Appeals.Upheld<- (rnorm(200,mean= 9.037500e-01,sd=0.15160133))
changes$D03..Complaints.about.the.Drug.Plan<-(rnorm(200,mean=0.21187500,sd=0.12019977))
changes$D04..Members.Choosing.to.Leave.the.Plan<-(rnorm(200,mean=0.110937500,sd=0.073850738))
changes$D06..Rating.of.Drug.Plan<- (rnorm(200,mean=8.565625e-01,sd=2.444340e-02))
changes$D07..Getting.Needed.Prescription.Drugs<- (rnorm(200,mean=9.037500e-01,sd=1.718026e-02))
changes$D08..MPF.Price.Accuracy<- (rnorm(200,mean=9.818750e+01,sd=1.635050e+00))
changes$D09..High.Risk.Medication<- (rnorm(200,mean=0.120625000,sd=0.045361452 ))
changes$D10..Diabetes.Treatment<- (rnorm(200,mean=8.721875e-01,sd=2.549312e-02))
changes$D11..Medication.Adherence.for.Diabetes.Medications<- (rnorm(200,mean= 0.747812500,sd=0.048309111))
changes$D12..Medication.Adherence.for.Hypertension..RAS.antagonists.<- (rnorm(200,mean= 0.761250000,sd= 0.050784173 ))
changes$D13..Medication.Adherence.for.Cholesterol..Statins.<- (rnorm(200,mean=0.708125000,sd=0.063725090))


e<-data.frame(stat.desc(changes) )


##install and load required packages

install.packages("cluster")
library("cluster")

## distance matrix

s<-daisy(changes, metric = c("euclidean", "manhattan", "gower"),
         stand = FALSE)
s<-as.matrix(s)

## Compute Hopkins statistic for the dataset

install.packages("clustertend")

library("clustertend")

hopkins(changes, n = nrow(changes)-1) ##as H value is 0.40 which is less than 0.5 so it is clusterable

##method 2
library(NbClust)
I_ccc <- NbClust(changes, distance="euclidean", min.nc=2, max.nc=8, method = "complete",index = "all" )##According to the majority rule, the best number of clusters is  4 

I_ccc$All.index
I_ccc$Best.nc
I_ccc$All.CriticalValues
I_ccc$Best.partition

clus<-data.frame(I_ccc$Best.partition)
changes1<-cbind(changes,clus)




# Compute k-means clustering with k = 5

library(factoextra)
km.res <- kmeans(changes[,-45], 4, nstart =25)
print(km.res)


# plot(table(changes$Gender, km.res$cluster))
# 
# plot(changes$Problem..Dependent.Variable., km.res$cluster,type="line")
fviz_cluster(km.res, data = changes[,-45])

Kmeansclus<-km.res$cluster
changes1<-cbind(changes1,Kmeansclus)


clusters <- hclust(dist(changes[,-c(45,46)]))

plot(clusters)

clusterCut <- cutree(clusters, 4)

hcluster<-clusterCut

changes1<-cbind(changes1,hcluster)



clusters2 <- hclust(dist(clusterdata[,-c(1:5)]))

plot(clusters2)

clusterCut2<- cutree(clusters2, 4)
hcluster1<-clusterCut2


changes3<-cbind(clusterdata,hcluster1)





















