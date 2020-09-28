# JHendry, 2020/09/26
setwd("~/Documents/teaching/nomads-workshops/notebooks")
# Q-score function
qscore <- function(p) { return(-10 * log(p, 10)) }


# Calculate Q-scores
ps <- seq(0, 1, 0.001)
qs <- qscore(ps)
qs_int <- floor(qscore(ps))

# Plot
png("../figs/p_to_qscore.png", width=720, height=680, res=150)
plot(
	x=ps, y=qs,
	xlab="Error Probability (p)",
	ylab="Quality Score (Q)",
	type='l', lwd=2, col="blue"
)
lines(
	x=ps,
	y=qs_int,
	type='l', lwd=2,
	col='magenta'
)
grid()
legend(
	"topright", 
	legend=c("Continuous", "Integer"), 
	col=c("blue", "magenta"),
	lwd=2, bg="white"
)
dev.off()


