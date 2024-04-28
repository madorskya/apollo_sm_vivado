# file: zynq_bd_IRQ0_INTR_CTRL_0.xdc
  set_false_path -to [ get_cells -filter {IS_SEQUENTIAL} {INTC_CORE_I/*ASYNC_GEN.intr_ff*[0]} ]
