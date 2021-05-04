runs <-100000
xs <-runif(runs,min=0,max=8)
ys <-runif(runs,min=0,max=2)
in.figure <-(xs <= 2 & ys <= xs) | (xs > 2 & xs < 6 & ys <= -1/4*xs + 2.5) | (xs > 6 & xs < 8 & ys <= -1/2*xs + 4)
mc.area <-(sum(in.figure)/runs)*16 #16 is area of the rectangle
plot(xs,ys,pch='.',col=ifelse(in.figure,"blue","grey"),xlab='',ylab='',asp=0,main=paste("MC Approximation of area =",mc.area))