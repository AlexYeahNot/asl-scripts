state("fc3_blooddragon_d3d11")
{
	int loading : "FC3_d3d11.dll", 0x01F2E3C0, 0xC4, 0x98, 0x630; 
	int loading1 : "FC3_d3d11.dll", 0x01F009FC, 0x14, 0xC, 0x360, 0x30, 0x4, 0xC, 0x3B0;
}


isLoading
{
	return (current.loading == 2 || current.loading1 == 2);
}

