
## this file generates new_80.pdf

require(latex2exp)
beta = seq(0,1,0.1)


rho = 0
power_80_rho0_1 = matrix(0,11,4)
power_80_rho0_2 = matrix(0,11,4)
power_80_rho0_3 = matrix(0,11,4)
power_80_rho0_4 = matrix(0,11,4)
power_80_rho0_5 = matrix(0,11,4)

for (i in 1:11){
  path1 = paste0('./results/pc_Aadp_hdi_simu_80_dep_L1_rho_',rho, 'bb_',beta[i],".RData")
  path2 = paste0('./results/pc_Aadp_hdi_simu_80_dep_L2_rho_',rho, 'bb_',beta[i],".RData")
  path3 = paste0('./results/pc_Aadp_hdi_simu_80_dep_L_inf_rho_',rho, 'bb_',beta[i],".RData")
  path4 = paste0('./results/pc_proj_80_rho',rho,'beta_',beta[i],".RData")
  path5 = paste0('./results/pc_ttest_80_rho',rho,'beta_',beta[i],".RData")
  try({
    load(file = path1)
    power_80_rho0_1[i,] = results
  })
  try({
    load(file = path2)
    power_80_rho0_2[i,] = results
  })   
  try({
    load(file = path3)
    power_80_rho0_3[i,] = results
  })
  try({
    load(file = path4)
    power_80_rho0_4[i,] = results
  })
  try({
    load(file = path5)
    power_80_rho0_5[i,] = results
  })
  cat(i,"\n")
}

rho = 0.5
power_80_rho05_1 = matrix(0,11,4)
power_80_rho05_2 = matrix(0,11,4)
power_80_rho05_3 = matrix(0,11,4)
power_80_rho05_4 = matrix(0,11,4)
power_80_rho05_5 = matrix(0,11,4)

for (i in 1:11){
  path1 = paste0('./results/pc_Aadp_hdi_simu_80_dep_L1_rho_',rho, 'bb_',beta[i],".RData")
  path2 = paste0('./results/pc_Aadp_hdi_simu_80_dep_L2_rho_',rho, 'bb_',beta[i],".RData")
  path3 = paste0('./results/pc_Aadp_hdi_simu_80_dep_L_inf_rho_',rho, 'bb_',beta[i],".RData")
  path4 = paste0('./results/pc_proj_80_rho',rho,'beta_',beta[i],".RData")
  path5 = paste0('./results/pc_ttest_80_rho',rho,'beta_',beta[i],".RData")
  try({
    load(file = path1)
    power_80_rho05_1[i,] = results
  })
  try({
    load(file = path2)
    power_80_rho05_2[i,] = results
  })   
  try({
    load(file = path3)
    power_80_rho05_3[i,] = results
  })
  try({
    load(file = path4)
    power_80_rho05_4[i,] = results
  })
  try({
    load(file = path5)
    power_80_rho05_5[i,] = results
  })
  cat(i,"\n")
}

###########
rho = 0.9
power_80_rho09_1 = matrix(0,11,4)
power_80_rho09_2 = matrix(0,11,4)
power_80_rho09_3 = matrix(0,11,4)
power_80_rho09_4 = matrix(0,11,4)
power_80_rho09_5 = matrix(0,11,4)

for (i in 1:11){
  path1 = paste0('./results/pc_Aadp_hdi_simu_80_dep_L1_rho_',rho, 'bb_',beta[i],".RData")
  path2 = paste0('./results/pc_Aadp_hdi_simu_80_dep_L2_rho_',rho, 'bb_',beta[i],".RData")
  path3 = paste0('./results/pc_Aadp_hdi_simu_80_dep_L_inf_rho_',rho, 'bb_',beta[i],".RData")
  path4 = paste0('./results/pc_proj_80_rho',rho,'beta_',beta[i],".RData")
  path5 = paste0('./results/pc_ttest_80_rho',rho,'beta_',beta[i],".RData")
  try({
    load(file = path1)
    power_80_rho09_1[i,] = results
  })
  try({
    load(file = path2)
    power_80_rho09_2[i,] = results
  })   
  try({
    load(file = path3)
    power_80_rho09_3[i,] = results
  })
  try({
    load(file = path4)
    power_80_rho09_4[i,] = results
  })
  try({
    load(file = path5)
    power_80_rho09_5[i,] = results
  })
  cat(i,"\n")
}




cex=1.4

file_names = "new_80.pdf"# = paste0(file_name,".pdf") 
pdf(file_names, width = 5, height = 9.61)


par(mfrow=c(3,1),mar=c(0,0,0,0),oma = c(5.1, 4.1, 4.1, 2.1))


plot(NA,xlim=c(0,1),ylim=c(0,1),xaxt="n")
lines(power_80_rho0_2[,3]~beta, pch = 19, type = 'b', lwd = 2)
lines(power_80_rho0_3[,3]~beta, pch = 1, type = 'b', lwd = 2)
lines(power_80_rho0_5[,3]~beta, pch = 2, type = 'b', lwd = 2)
abline(h = 0.05, lty = 2)

legend( x = grconvertX(0, from = 'nfc', to = 'user'),
        y = grconvertX(1, from = 'nfc', to = 'user'),
        legend=TeX('$\\Sigma = \\mathbf{I}_p$ '),
        bty="n", cex = cex)

plot(NA,xlim=c(0,1),ylim=c(0,1),xaxt="n")
lines(power_80_rho05_2[,3]~beta, pch = 19, type = 'b', lwd = 2)
lines(power_80_rho05_3[,3]~beta, pch = 1, type = 'b', lwd = 2)
lines(power_80_rho05_5[,3]~beta, pch = 2, type = 'b', lwd = 2)
abline(h = 0.05, lty = 2)

legend( x = grconvertX(0, from = 'nfc', to = 'user'),
        y = grconvertX(1, from = 'nfc', to = 'user'),
        legend=TeX('$\\Sigma = (0.5^{|i-j|})_{1\\leq i , j \\leq p}$ '),
        bty="n", cex = cex)

plot(NA,xlim=c(0,1),ylim=c(0,1),xaxt="n")
lines(power_80_rho09_2[,3]~beta, pch = 19, type = 'b', lwd = 2)
lines(power_80_rho09_3[,3]~beta, pch = 1, type = 'b', lwd = 2)
lines(power_80_rho09_5[,3]~beta, pch = 2, type = 'b', lwd = 2)
abline(h = 0.05, lty = 2)

legend( x = grconvertX(0, from = 'nfc', to = 'user'),
        y = grconvertX(1, from = 'nfc', to = 'user'),
        legend=TeX('$\\Sigma = (0.9^{|i-j|})_{1\\leq i , j \\leq p}$ '),
        bty="n", cex = cex)

mtext(side=1, outer=TRUE, expression(beta[1]),line=3)
mtext(side=2, outer=TRUE, "Empirical power",line=2.5)


legend( x = grconvertX(0.2, from = 'nfc', to = 'user'),
        y = grconvertX(3.1, from = 'nfc', to = 'user'),
        legend=c( expression(T[1](1,1)),
                  expression(T[1](infinity,infinity)),
                  "T-test"),
        pch=c(19,1,2),
        lwd = 1,
        bty="n", xpd = NA, horiz = TRUE, cex = cex-0.2)


dev.off()


