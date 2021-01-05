state("FarCryNewDawn")
{
	int loading : "FC_m64.dll", 0x04D19E08, 0x50, 0x58, 0x278, 0x70, 0xB90;
}


isLoading
{
	return current.loading == 2;
}

