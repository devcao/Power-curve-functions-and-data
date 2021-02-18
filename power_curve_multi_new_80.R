
## this file generates multi_new_80.pdf

rho = 0
multi_power_80_rho0_1 = matrix(0,11,4)
multi_power_80_rho0_2 = matrix(0,11,4)
multi_power_80_rho0_3 = matrix(0,11,4)
multi_power_80_rho0_4 = matrix(0,11,4)
for (i in 1:11){
  path1 = paste0('./results/multi_pc_Aadp3rd_hdi_simu_dep_p_80L1_rho_',rho, 'bb_',beta[i],".RData")
  path2 = paste0('./results/multi_pc_Aadp3rd_hdi_simu_dep_p_80L2_rho_',rho, 'bb_',beta[i],".RData")
  path3 = paste0('./results/multi_pc_Aadp3rd_hdi_simu_dep_p_80L_inf_rho_',rho, 'bb_',beta[i],".RData")
  path4 = paste0('./results/pc_ftest_80_rho',rho,'beta_',beta[i],".RData")
  try({
    load(file = path1)
    multi_power_80_rho0_1[i,] = results
  })
  try({
    load(file = path2)
    multi_power_80_rho0_2[i,] = results
  })   
  try({
    load(file = path3)
    multi_power_80_rho0_3[i,] = results
  })
  try({
    load(file = path4)
    multi_power_80_rho0_4[i,] = results
  })
  
  cat(i,"\n")
}

rho = 0.5
multi_power_80_rho05_1 = matrix(0,11,4)
multi_power_80_rho05_2 = matrix(0,11,4)
multi_power_80_rho05_3 = matrix(0,11,4)
multi_power_80_rho05_4 = matrix(0,11,4)
for (i in 1:11){
  path1 = paste0('./results/multi_pc_Aadp3rd_hdi_simu_dep_p_80L1_rho_',rho, 'bb_',beta[i],".RData")
  path2 = paste0('./results/multi_pc_Aadp3rd_hdi_simu_dep_p_80L2_rho_',rho, 'bb_',beta[i],".RData")
  path3 = paste0('./results/multi_pc_Aadp3rd_hdi_simu_dep_p_80L_inf_rho_',rho, 'bb_',beta[i],".RData")
  path4 = paste0('./results/pc_ftest_80_rho',rho,'beta_',beta[i],".RData")
  try({
    load(file = path1)
    multi_power_80_rho05_1[i,] = results
  })
  try({
    load(file = path2)
    multi_power_80_rho05_2[i,] = results
  })   
  try({
    load(file = path3)
    multi_power_80_rho05_3[i,] = results
  })
  try({
    load(file = path4)
    multi_power_80_rho05_4[i,] = results
  })
  
  cat(i,"\n")
}

rho = 0.9
multi_power_80_rho09_1 = matrix(0,11,4)
multi_power_80_rho09_2 = matrix(0,11,4)
multi_power_80_rho09_3 = matrix(0,11,4)
multi_power_80_rho09_4 = matrix(0,11,4)
for (i in 1:11){
  path1 = paste0('./results/multi_pc_Aadp3rd_hdi_simu_dep_p_80L1_rho_',rho, 'bb_',beta[i],".RData")
  path2 = paste0('./results/multi_pc_Aadp3rd_hdi_simu_dep_p_80L2_rho_',rho, 'bb_',beta[i],".RData")
  path3 = paste0('./results/multi_pc_Aadp3rd_hdi_simu_dep_p_80L_inf_rho_',rho, 'bb_',beta[i],".RData")
  path4 = paste0('./results/pc_ftest_80_rho',rho,'beta_',beta[i],".RData")
  try({
    load(file = path1)
    multi_power_80_rho09_1[i,] = results
  })
  try({
    load(file = path2)
    multi_power_80_rho09_2[i,] = results
  })   
  try({
    load(file = path3)
    multi_power_80_rho09_3[i,] = results
  })
  try({
    load(file = path4)
    multi_power_80_rho09_4[i,] = results
  })
  
  cat(i,"\n")
}

p_size = 1
require(latex2exp)
cex = 1.4
file_names = "multi_new_80.pdf"# = paste0(file_name,".pdf") 
pdf(file_names, width = 5, height = 9.61)


par(mfrow=c(3,1),mar=c(0,0,0,0),oma = c(5.1, 4.1, 4.1, 2.1))


plot(NA,xlim=c(0,1),ylim=c(0,1),xaxt="n")
lines(multi_power_80_rho0_1[,3]~beta, pch = 19, type = 'b', lwd = 2, cex = p_size)
lines(multi_power_80_rho0_3[,3]~beta, pch = 1, type = 'b', lwd = 2, cex = p_size)
lines(multi_power_80_rho0_4[,3]~beta, pch = 6, type = 'b', lwd = 2, cex = p_size)
abline(h = 0.05, lty = 2)

legend( x = grconvertX(0, from = 'nfc', to = 'user'),
        y = grconvertX(1, from = 'nfc', to = 'user'),
        legend=TeX('$\\Sigma = \\mathbf{I}_p$ '),
        bty="n", cex = cex)

plot(NA,xlim=c(0,1),ylim=c(0,1),xaxt="n")
lines(multi_power_80_rho05_1[,3]~beta, pch = 19, type = 'b', lwd = 2, cex = p_size)
lines(multi_power_80_rho05_3[,3]~beta, pch = 1, type = 'b', lwd = 2, cex = p_size)
lines(multi_power_80_rho05_4[,3]~beta, pch = 6, type = 'b', lwd = 2, cex = p_size)
abline(h = 0.05, lty = 2)

legend( x = grconvertX(0, from = 'nfc', to = 'user'),
        y = grconvertX(1, from = 'nfc', to = 'user'),
        legend=TeX('$\\Sigma = (0.5^{|i-j|})_{1\\leq i , j \\leq p}$ '),
        bty="n", cex = cex)

plot(NA,xlim=c(0,1),ylim=c(0,1),xaxt="n")
lines(multi_power_80_rho09_1[,3]~beta, pch = 19, type = 'b', lwd = 2, cex = p_size)
lines(multi_power_80_rho09_3[,3]~beta, pch = 1, type = 'b', lwd = 2, cex = p_size)
lines(multi_power_80_rho09_4[,3]~beta, pch = 6, type = 'b', lwd = 2, cex = p_size)
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
                  "F-test"),
        pch=c(19,1,6),
        lwd = 1,
        bty="n", xpd = NA, horiz = TRUE, cex = cex-0.2)


dev.off()
