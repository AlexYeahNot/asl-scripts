state("farcry3_d3d11")
{
	int loading : "FC3_d3d11.dll", 0x01E718FC, 0x14, 0x1C, 0x16C, 0xF8; // UPlay version
	int loading1 : "FC3_d3d11.dll", 0x01E13A34, 0x4, 0x14, 0x18, 0x500, 0x328; // pirate version
	int loading2 : "FC3_d3d11.dll", 0x01E56958, 0x10, 0x40, 0xC, 0x2E4, 0x4B8; // v1.01
}

isLoading
{
	return (current.loading == 2 || current.loading1 == 2 || current.loading2 == 2) ;
}
