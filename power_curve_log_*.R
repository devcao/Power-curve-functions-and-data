source("auto_power_curve.R")

# this gives log_multi_1000
new_net_power_plot(
  path_1 = './results/log_mmulti_pc_hdi_simu_dep',
  file_name = 'log_multi_1000',
  beta_sp=0.5
)

# this gives log_multi_80
new_net_power_plot(
  path_1 = './results/log_test_multi_80_pc_hdi_simu_dep',
  file_name = 'log_multi_80',
  beta_sp=0.5
)


# this gives log_1000
# the legend is too big
new_net_power_plot(
  path_1 = './results/log_new_pc_net_hdi_simu_1000_dep',
  path_2 = './results/log_pc_new_proj_1000_rho',
  file_name = 'log_1000',
  comp_method = 'De-sparsified',
  beta_sp=0.5
)

# this gives log_80
# the legend is too big
new_net_power_plot(
  path_1 = './results/log_new_new_pc_net_hdi_simu_80_dep',
  path_2 = './results/log_pc_new_proj_80_rho',
  file_name = 'log_80',
  comp_method = 'De-sparsified',
  beta_sp=0.5,
  path_2_alter = TRUE
)





