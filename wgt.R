dates <- as.Date(c("2017-01-09",
                   "2017-01-16",
                   "2017-01-19",
                   "2017-01-23",
                   "2017-01-26",
                   "2017-01-27",
                   "2017-01-30",
                   "2017-01-31",
                   "2017-02-04",
                   "2017-02-06",
                   "2017-02-09",
                   "2017-02-10",
                   "2017-02-13",
                   "2017-02-16",
                   "2017-02-20",
                   "2017-02-24"))

vals <- c(110.9,
          109.0,
          108.7,
          108.5,
          107.8,
          107.0,
          107.5,
          106.7,
          106.3,
          107.4,
          106.5,
          106.2,
          106.3,
          106.4,
          106.4,
          106.0)

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
                    "2017-09-15")))

xdts <- seq(as.Date(c("2017-01-01")),
        as.Date(c("2017-09-15")),
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
     las=2,
     col.axis="darkred")

abline(h=seq(85,
             115,
             by=1),
       col="lightgrey",
       lty=3)

abline(v=as.Date(c("2017-01-09", "2017-02-09", "2017-03-09", "2017-04-09", "2017-05-09", "2017-06-09", "2017-07-09")),
       col="lightgrey",
       lty=3)

dts <- as.Date(c("2017-01-09","2017-02-09","2017-03-09","2017-04-09","2017-05-09","2017-06-09","2017-07-09","2017-08-09"),
                 "%Y-%m-%d")
lbls <- format(dts, format="%d.%m")

points(dts,
       c(110.9, 107.4, 103.9, 100.4, 96.9, 93.4, 89.9, 86.4),
       pch=25,
       cex=1,
       col="darkred",
       bg="red")
points(as.Date("2017-02-09",
               "%Y-%m-%d"),
       106.5,
       col="darkred",
       pch=19)

df <- data.frame(x=dates,
                 y=vals)
lf <- lm(y ~ x, 
         data = df)
abline(lf,
       lty=2,
       col="lightcoral")
lines(dates,
      vals,
      lwd=2,
      col="darkred")

BMI = function(height_m,weight_kg){(1.3*weight_kg/(height_m)^2.5)}
h = 1.85
w = vals
my_bmi = data.frame(h,w)
my_bmi$bmi = BMI(my_bmi$h,
                 my_bmi$w)

# par(new = TRUE)
# plot(dates,
#      my_bmi$bmi,
#      axes=F,
#      xlab=NA,
#      ylab=NA,
#      col="darkblue",
#      pch=18,
#      #type="n",
#      #xaxt="n",
#      #yaxt="n",
#      xaxs="i",
#      yaxs="i",
#      #xlab="",
#      #ylab="",
#      bty="n",
#      ylim=c(21,35),
#      xlim=as.Date(c("2017-01-01",
#                     "2017-09-15")),
#      panel.first = rect(0.1,#dates[1],
#                         30,
#                         as.Date("2017-10-01"),
#                         34.99,
#                         col='lightcoral', 
#                         border=NA,
#                         alpha=0.2))
# axis(4, 
#      at=seq(20,
#             35,
#             by=1),
#      las=0.5,
#      cex.axis=0.6,
#      las=2,
#      col.axis="darkblue")
# 
# my_bmi$bmi
# #
# #rect(100,#xleft 
# #     300,#ybottom 
# #     125,#xright 
# #     350 #ytop)