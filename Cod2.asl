state("CoD2SP_s")
{
	int loading1 : "gfx_d3d_x86_s.dll", 0x70EB54;
	
}


isLoading
{
	return current.loading1 == 14;
}

