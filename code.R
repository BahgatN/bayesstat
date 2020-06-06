
# Simulate different gamma densities --------------------------------------

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


# Poisson model -----------------------------------------------------------

x <- c(2, 2, 1, 1, 2, 2, 1, 2, 1, 0, 2, 1, 1, 2, 0, 2, 2, 0, 2, 1, 0, 0, 3, 6, 
       1, 6, 4, 0, 3, 2, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 4, 2, 1, 0, 0, 
       1, 0, 3, 2, 5, 0, 1, 1, 2, 1, 2, 1, 2, 0, 0, 0, 2, 1, 0, 2, 0, 2, 4, 1, 
       1, 1, 2, 0, 1, 1, 1, 1, 0, 2, 3, 2, 0, 2, 1, 3, 1, 3, 2, 2, 3, 2, 0, 0, 
       0, 1, 0, 0, 0, 1, 2, 0, 3, 3, 0, 1, 2, 2, 2, 0, 6, 0, 0, 0, 2, 0, 1, 1, 
       1, 3, 3, 2, 1, 1, 0, 1, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 0, 2, 2, 4, 1, 2, 
       3, 2, 0, 0, 0, 1, 0, 0, 1, 5, 2, 1, 3, 2, 0, 2, 1, 1, 3, 0, 5, 0, 0, 2, 
       4, 3, 4, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 2, 0, 0, 1, 1, 0, 2, 1, 3, 3, 2, 
       2, 0, 0, 2, 3, 2, 4, 3, 3, 4, 0, 3, 0, 1, 0, 1, 2, 3, 4, 1, 2, 6, 2, 1, 
       2, 2)

n <- length(x) # sample size 
s <- sum(x)    # sum of x_i

# plot the data 
plot(table(x), type="h",
     xlab=expression(italic(x)),
     ylab=expression(italic(n(x))),col=gray(.5) ,lwd=3)
mtext("# children in Group A",side=3)

# prior parameter
a <-  2 ; b <-  1
 
(a+s)/(b+n)   # posterior mean (our estimation of theta)

xtheta<-seq(0,5,length=1000) # parameter space

plot(xtheta,dgamma(xtheta,a+s,b+n),type="l",col=gray(.5),xlab=expression(theta),
     ylab=expression(paste(italic("p("),theta,"|",y[1],"...",y[n],")",sep="")))
lines(xtheta,dgamma(xtheta,a,b),type="l",lty=2,lwd=2)
abline(h=0,col="black")

a <-  2 ; b <-  1
(a+s)/(b+n)   # posterior mean (our estimation of theta)
xtheta<-seq(0,5,length=1000) # parameter space
plot(xtheta,dgamma(xtheta,a+s,b+n),type="l", lwd = 2, col= "black",xlab=expression(theta),
     ylab=expression(paste(italic("p("),theta,"|",x[1],"...",x[n],")",sep="")))
lines(xtheta,dgamma(xtheta,a,b),type="l",lwd=2, col = "grey")
legend("topright",legend=c("prior","posterior"),
       lwd = 2,col=c("grey","black"))
