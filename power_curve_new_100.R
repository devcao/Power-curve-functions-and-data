
## this file generates new_100.pdf


####################
require(latex2exp)


## load projection method data
load("./results/proj_indep_100.RData")
load("./results/proj_AR05_100.RData")
load("./results/proj_AR09_100.RData")

cex=1.4

beta = seq(0,1,0.1)
# 
power_1_100 = matrix(0,11,4)
power_2_100 = matrix(0,11,4)
power_3_100 = matrix(0,11,4)
power_4_100 = matrix(0,11,4)
power_5_100 = matrix(0,11,4)
# pc_Aadp_hdi_simu_12_dep_L1_rho_equlbb_0.1.
rho = 0
for (i in 1:11){
  print(beta[i])
  path1 = paste0('./results/pc_Aadp_hdi_simu_100_dep_L1_rho_',rho, 'bb_',beta[i],".RData")
  path2 = paste0('./results/pc_Aadp_hdi_simu_100_dep_L2_rho_',rho, 'bb_',beta[i],".RData")
  path3 = paste0('./results/pc_Aadp_hdi_simu_100_dep_L_inf_rho_',rho, 'bb_',beta[i],".RData")
  path4 = paste0('./results/pc_proj_100_rho',rho,'beta_',beta[i],".RData")
  #path5 = paste0('pc_ttest_12_rho',rho,'beta_',beta[i],".RData")
  
  try({
    load(file = path1)
    power_1_100[i,] = results
  })
  try({
    load(file = path2)
    power_2_100[i,] = results
  })   
  try({
    load(file = path3)
    power_3_100[i,] = results
  })
  try({
    load(file = path3)
    power_4_100[i,] = results
  })
  cat(i,"\n")
}

rho = 0.5
#
power_05_1_100 = matrix(0,11,4)
power_05_2_100 = matrix(0,11,4)
power_05_3_100 = matrix(0,11,4)
power_05_4_100 = matrix(0,11,4)
power_05_5_100 = matrix(0,11,4)
#
for (i in 1:11){
  
  path1 = paste0('./results/pc_Aadp_hdi_simu_100_dep_L1_rho_',rho, 'bb_',beta[i],".RData")
  path2 = paste0('./results/pc_Aadp_hdi_simu_100_dep_L2_rho_',rho, 'bb_',beta[i],".RData")
  path3 = paste0('./results/pc_Aadp_hdi_simu_100_dep_L_inf_rho_',rho, 'bb_',beta[i],".RData")
  path4 = paste0('./results/pc_proj_100_rho',rho,'beta_',beta[i],".RData")
  #path5 = paste0('pc_ttest_12_rho',rho,'beta_',beta[i],".RData")
  
  try({
    load(file = path1)
    power_05_1_100[i,] = results
  })
  try({
    load(file = path2)
    power_05_2_100[i,] = results
  })   
  try({
    load(file = path3)
    power_05_3_100[i,] = results
  })
  try({
    load(file = path3)
    power_05_4_100[i,] = results
  })
  cat(i,"\n")
}

rho = 0.9
#
power_09_1_100 = matrix(0,11,4)
power_09_2_100 = matrix(0,11,4)
power_09_3_100 = matrix(0,11,4)
power_09_4_100 = matrix(0,11,4)
power_09_5_100 = matrix(0,11,4)
#
for (i in 1:11){
  
  path1 = paste0('./results/pc_Aadp_hdi_simu_100_dep_L1_rho_',rho, 'bb_',beta[i],".RData")
  path2 = paste0('./results/pc_Aadp_hdi_simu_100_dep_L2_rho_',rho, 'bb_',beta[i],".RData")
  path3 = paste0('./results/pc_Aadp_hdi_simu_100_dep_L_inf_rho_',rho, 'bb_',beta[i],".RData")
  path4 = paste0('./results/pc_proj_100_rho',rho,'beta_',beta[i],".RData")
  #path5 = paste0('pc_ttest_12_rho',rho,'beta_',beta[i],".RData")
  
  try({
    load(file = path1)
    power_09_1_100[i,] = results
  })
  try({
    load(file = path2)
    power_09_2_100[i,] = results
  })   
  try({
    load(file = path3)
    power_09_3_100[i,] = results
  })
  try({
    load(file = path3)
    power_09_4_100[i,] = results
  })
  
  cat(i,"\n")
}





file_names = "new_100.pdf"# = paste0(file_name,".pdf") 
pdf(file_names, width = 5, height = 9.61)


par(mfrow=c(3,1),mar=c(0,0,0,0),oma = c(5.1, 4.1, 4.1, 2.1))


plot(NA,xlim=c(0,1),ylim=c(0,1),xaxt="n")
lines(power_1_100[,3]~beta, pch = 19, type = 'b', lwd = 2)
lines(power_3_100[,3]~beta, pch = 1, type = 'b', lwd = 2)
lines(indep_100$power_4[,3]~beta, pch = 3, type = 'b', lwd = 2)
abline(h = 0.05, lty = 2)

legend( x = grconvertX(0, from = 'nfc', to = 'user'),
        y = grconvertX(1, from = 'nfc', to = 'user'),
        legend=TeX('$\\Sigma = \\mathbf{I}_p$ '),
        bty="n", cex = cex)

plot(NA,xlim=c(0,1),ylim=c(0,1),xaxt="n")
lines(power_05_1_100[,3]~beta, pch = 19, type = 'b', lwd = 2)
lines(power_05_3_100[,3]~beta, pch = 1, type = 'b', lwd = 2)
lines(AR05_100$power_4[,3]~beta, pch = 3, type = 'b', lwd = 2)
abline(h = 0.05, lty = 2)

legend( x = grconvertX(0, from = 'nfc', to = 'user'),
        y = grconvertX(1, from = 'nfc', to = 'user'),
        legend=TeX('$\\Sigma = (0.5^{|i-j|})_{1\\leq i , j \\leq p}$ '),
        bty="n", cex = cex)

plot(NA,xlim=c(0,1),ylim=c(0,1),xaxt="n")
lines(power_09_1_100[,3]~beta, pch = 19, type = 'b', lwd = 2)
lines(power_09_3_100[,3]~beta, pch = 1, type = 'b', lwd = 2)
lines(AR09_100$power_4[,3]~beta, pch = 3, type = 'b', lwd = 2)
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