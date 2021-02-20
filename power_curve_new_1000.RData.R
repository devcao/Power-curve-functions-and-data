
require(latex2exp)

load("./results/indep_1k.RData")
load("./results/AR05_1k.RData")
load("./results/AR09_1k.RData")

cex = 1.4
beta = seq(0,1,0.1)

file_names = paste0('new_1000',".pdf")
# pdf(file_names, width = 9.61, height = 4.29)
pdf(file_names, width = 5, height = 9.61)

par(mfrow=c(3,1),mar=c(0,0,0,0), oma = c(5.1, 4.1, 4.1, 2.1))

plot(NA,xlim=c(0,1),ylim=c(0,1), xaxt = 'n')
lines(indep_1k$power_1[,3]~beta, pch = 19, type = 'b', lwd = 2)
lines(indep_1k$power_3[,3]~beta, pch = 1, type = 'b', lwd = 2)
lines(indep_1k$power_4[,3]~beta, pch = 3, type = 'b', lwd = 2)
abline(h = 0.05, lty = 2)

legend( x = grconvertX(0, from = 'nfc', to = 'user'),
        y = grconvertX(1, from = 'nfc', to = 'user'),
        legend=TeX('$\\Sigma = \\mathbf{I}_p$ '),
        bty="n", cex = cex)

plot(NA,xlim=c(0,1),ylim=c(0,1), xaxt = 'n')
lines(AR05_1k$power_1[,3]~beta, pch = 19, type = 'b', lwd = 2)
lines(AR05_1k$power_3[,3]~beta, pch = 1, type = 'b', lwd = 2)
lines(AR05_1k$power_4[,3]~beta, pch = 3, type = 'b', lwd = 2)
abline(h = 0.05, lty = 2)



legend( x = grconvertX(0, from = 'nfc', to = 'user'),
        y = grconvertX(1, from = 'nfc', to = 'user'),
        legend=TeX('$\\Sigma = (0.5^{|i-j|})_{1\\leq i , j \\leq p}$ '),
        bty="n", cex = cex)




plot(NA,xlim=c(0,1),ylim=c(0,1))
lines(AR09_1k$power_1[,3]~beta, pch = 19, type = 'b', lwd = 2)
lines(AR09_1k$power_3[,3]~beta, pch = 1, type = 'b', lwd = 2)
lines(AR09_1k$power_4[,3]~beta, pch = 3, type = 'b', lwd = 2)
abline(h = 0.05, lty = 2)


legend( x = grconvertX(0, from = 'nfc', to = 'user'),
        y = grconvertX(1, from = 'nfc', to = 'user'),
        legend=TeX('$\\Sigma = (0.9^{|i-j|})_{1\\leq i , j \\leq p}$ '),
        bty="n", cex = cex)



mtext(side=1, outer=TRUE, expression(beta[1]),line=3)
mtext(side=2, outer=TRUE, "Empirical power",line=2.5)


legend( x = grconvertX(0.1, from = 'nfc', to = 'user'),
        y = grconvertX(3.1, from = 'nfc', to = 'user'),
        legend=c( expression(T[1](1,1)),
                  expression(T[1](infinity,infinity)),
                  "De-sparsified"),
        pch=c(19,1,3),
        lwd = 1,
        bty="n", xpd = NA, horiz = TRUE, cex = cex-0.2)

dev.off()
