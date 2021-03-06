#Creating a Poisson Distribution
#State the number of days of data required
myrain <- function(n,alpha,lambda){
  days=365*n
#Generate sequence that represents the days between rainfall events
  freq_rainfall=round(rexp(days,lambda))
  freq_rainfall[1]=0
  out_rain=alpha
  i=2
  for (i in 1:days){
    tau1=freq_rainfall[i]
    if (tau1==0){
      cur_rain=rexp(1,1/alpha)
    } else {
      no_rain_days=rep(0,tau1)
      next_rain_day=rexp(1,1/alpha)
      cur_rain=c(no_rain_days,next_rain_day)
      #i=i+tau1+1
      }
    out_rain=c(out_rain,cur_rain)
  }
  sum(out_rain[1:365])
  
  return(out_rain[1:days])
}


