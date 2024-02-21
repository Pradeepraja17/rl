#file – name of the file where the R object is saved to or read from.
save.image(file = '.RData')
obj1<-c(1:15)
obj2<-FALSE
obj3<-"Welcome to R Environment"
save.image("ex1.Rdata")


#Load(path)
load("ex1.Rdata")


saveRDS(obj1, file ="ex1.Rdata ")

obj1<-c(1:15)
obj2<-FALSE
Obj3<-"Welcome to R Environment"
saveRDS(obj1,file="ex1int.Rdata")
print("Data object")
readRDS("ex1int.Rdata")

save(obj1,obj2,obj3,file="S:/ML/tempwork.Rdata")

save(obj1, obj3, file ="tempworkspaceobj.RData")
load("tempworkspaceobj.RData")

