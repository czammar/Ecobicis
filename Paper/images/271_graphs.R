# Leemos del modelo
modelo <- readRDS("modelo271_bernoulli_cloglog.rds")

# traceplot
traceplot(modelo, varname = c("beta1.est"),ask = FALSE)

# traceplot
#traceplot(modelo, varname = c("diahora.est[7,21]"),ask = FALSE)


#OpenBUGS
#out<-modelo$sims.list

#JAGS
out<-modelo$BUGSoutput$sims.list

########mujer
z<-out$beta1[,2]
par(mfrow=c(2,2))
plot(z,type="l")
plot(cumsum(z)/(1:length(z)),type="l")
hist(z,freq=FALSE)
acf(z)


#########hombre
z<-out$beta1[,2]
par(mfrow=c(2,2))
plot(z,type="l")
plot(cumsum(z)/(1:length(z)),type="l")
hist(z,freq=FALSE)
acf(z)

##########diahora.est[7,21]
z<-out$diahora.est[,7,21]
par(mfrow=c(2,2))
plot(z,type="l")
plot(cumsum(z)/(1:length(z)),type="l")
hist(z,freq=FALSE)
acf(z)

##########diahora.est[3,1]
z<-out$diahora.est[,3,1]
par(mfrow=c(2,2))
plot(z,type="l")
plot(cumsum(z)/(1:length(z)),type="l")
hist(z,freq=FALSE)
acf(z)

