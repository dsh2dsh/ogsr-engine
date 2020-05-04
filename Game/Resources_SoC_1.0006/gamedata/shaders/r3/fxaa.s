function element_0(shader, t_base, t_second, t_detail)
	shader:begin("fxaa_luma", "fxaa_luma")
		:fog(false)
		:zb(false, false)
	shader:dx10texture("s_base0", "$user$generic0")
end

function element_1(shader, t_base, t_second, t_detail)
	shader:begin("fxaa_main", "fxaa_main")
		:fog(false)
		:zb(false, false)
	shader:dx10texture("s_base0", "$user$generic0")
	shader:dx10sampler("smp_rtlinear")
end

function element_2(shader, t_base, t_second, t_detail)
	shader:begin("taa_main", "taa_main")
		:fog(false)
		:zb(false, false)
	shader:dx10texture("s_image", "$user$generic0")
	shader:dx10texture("s_position", "$user$position")
	shader:dx10sampler("smp_rtlinear")
end
