state("FarCry5")
{
	int loading : "FC_m64.dll", 0x04F7D5C8, 0x28, 0x168, 0x68, 0x100;
}


isLoading
{
	return current.loading == 2;
}

