# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/ffn/Workspace/Vitis/BRAM_storer/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/ffn/Workspace/Vitis/BRAM_storer/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {BRAM_storer}\
-hw {/home/ffn/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/ffn/Workspace/Vitis}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform active {BRAM_storer}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform create -name {BRAM_storer}\
-hw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/ffn/Nextcloud/Workspace/Vitis}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform active {BRAM_storer}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
platform generate
platform generate
platform generate
platform active {BRAM_storer}
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform active {BRAM_storer}
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/Mag_mmWave_BRAM_storer_wrapper.xsa}
platform generate -domains 
platform clean
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/Mag_mmWave_BRAM_storer_wrapper.xsa}
platform generate -domains 
platform active {BRAM_storer}
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform active {BRAM_storer}
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform generate
platform active {BRAM_storer}
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform active {BRAM_storer}
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains standalone_psu_cortexa53_0,zynqmp_fsbl,zynqmp_pmufw 
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform generate -domains 
platform active {BRAM_storer}
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/ffn/Nextcloud/Workspace/VivadoProjects/MagnetometerSampler96/BRAM_storer_wrapper.xsa}
platform generate -domains 
platform generate
