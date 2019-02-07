state("farcry3_d3d11")
{
	int loading : "FC3_d3d11.dll", 0x01E718FC, 0x14, 0x1C, 0x16C, 0xF8; 
}


isLoading
{
	return current.loading == 2;
}

