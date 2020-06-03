par(mar=c(3,3,1,1),mgp=c(1.75,.75,0))
par(mfrow=c(2,3))

a<-1 ; b<-1
x<-seq(.001,10,length=100)
plot(x, dgamma(x,a,b),type="l",
     xlab=expression(theta), ylab=expression(italic(paste("p(",theta,")",sep=""))))
mtext(expression(italic(paste(alpha," = 1 ",beta," = 1",sep=""))),side=3,line=.12,cex=.8)

a<-2 ; b<-2
x<-seq(.001,10,length=100)
plot(x, dgamma(x,a,b),type="l",
     xlab=expression(theta), ylab=expression(italic(paste("p(",theta,")",sep=""))))
mtext(expression(italic(paste(alpha," = 2 ",beta," = 2",sep=""))),side=3,line=.12,cex=.8)

a<-4 ; b<-4
x<-seq(.001,10,length=100)
plot(x, dgamma(x,a,b),type="l",
     xlab=expression(theta), ylab=expression(italic(paste("p(",theta,")",sep=""))))
mtext(expression(italic(paste(alpha," = 4 ",beta," = 4",sep=""))),side=3,line=.12,cex=.8)

a<-2 ; b<-1
x<-seq(.001,10,length=100)
plot(x, dgamma(x,a,b),type="l",
     xlab=expression(theta), ylab=expression(italic(paste("p(",theta,")",sep=""))))
mtext(expression(italic(paste(alpha," = 2 ",beta," = 1",sep=""))),side=3,line=.12,cex=.8)

a<-8 ; b<-4
x<-seq(.001,10,length=100)
plot(x, dgamma(x,a,b),type="l",
     xlab=expression(theta), ylab=expression(italic(paste("p(",theta,")",sep=""))))
mtext(expression(italic(paste(alpha," = 8 ",beta," = 4",sep=""))),side=3,line=.12,cex=.8)

a<-32 ; b<-16
x<-seq(.001,10,length=100)
plot(x, dgamma(x,a,b),type="l",
     xlab=expression(theta), ylab=expression(italic(paste("p(",theta,")",sep=""))))
mtext(expression(italic(paste(alpha," = 32 ",beta," = 16",sep=""))),side=3,line=.12,cex=.8)