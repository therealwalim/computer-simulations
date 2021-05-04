runs <- runif(10, min=10000, max=1000000)
apro_err <- c()

PI_REAL <- 3.14159265
RUN_MIN <- -0.5
RUN_MAX <- 0.5

for (i in seq_along(runs)){
  #runif samples from a uniform distribution
  run <- runs[i]
  xs <- runif(run, min = RUN_MIN, max = RUN_MAX)
  ys <- runif(run, min = RUN_MIN, max = RUN_MAX)
  in.circle <- xs^2 + ys^2 <= RUN_MAX^2
  mc.pi <- (sum(in.circle)/run) * 4
  absdif <- abs(mc.pi - PI_REAL)
  apro_err[i] <- absdif
  # plot(xs,ys,pch=".",col=ifelse(in.circle,"blue","red"),xlab='',ylab='',asp=1, main=paste("MC Approximation of Pi =",mc.pi))
}

plot(runs, apro_err, ylab='Approximation Error', xlab='Sample Size',col='red', main=paste("Approximation Error"))