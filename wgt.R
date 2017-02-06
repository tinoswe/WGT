dates <- as.Date(c("2017-01-09",
                   "2017-01-16",
                   "2017-01-19",
                   "2017-01-23",
                   "2017-01-26",
                   "2017-01-27",
                   "2017-01-30",
                   "2017-01-31",
                   "2017-02-04",
                   "2017-02-06"))

vals <- c(110.9,
          109.0,
          108.7,
          108.5,
          107.8,
          107.0,
          107.5,
          106.7,
          106.3,
          107.4)

plot(dates,
     vals,
     col="black",
     pch=3,
     type="n",
     xaxt="n",
     yaxt="n",
     xaxs="i",
     yaxs="i",
     xlab="",
     ylab="",
     bty="n",
     ylim=c(85,115),
     xlim=as.Date(c("2017-01-01",
                    "2017-07-15")))

xdts <- seq(as.Date(c("2017-01-01")),
        as.Date(c("2017-07-15")),
        by=5)
xlbls <- format(xdts,
                format="%d-%m")
axis(1, 
     at=xdts,
     labels=xlbls,
     las=1,
     cex.axis=0.6)

axis(2, 
     at=seq(85,
            115,
            by=1),
     las=0.5,
     cex.axis=0.6,
     las=2)

abline(h=seq(85,
             115,
             by=1),
       col="lightgrey",
       lty=3)

abline(v=as.Date(c("2017-01-09", "2017-02-09", "2017-03-09", "2017-04-09", "2017-05-09", "2017-06-09", "2017-07-09")),
       col="lightgrey",
       lty=3)

dts <- as.Date(c("2017-01-09","2017-02-09","2017-03-09","2017-04-09","2017-05-09","2017-06-09","2017-07-09"),
                 "%Y-%m-%d")
lbls <- format(dts, format="%d.%m")

points(dts,
       c(110.9, 107.4, 103.9, 100.4, 96.9, 93.4, 89.9),
       pch=25,
       cex=1,
       col="darkred",
       bg="red")
lines(dates,
      vals,
      lwd=2,
      col="darkred",
      alpha=0.5)