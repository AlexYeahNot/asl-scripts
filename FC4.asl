state("FarCry4")
{
	int loading : "FC64.dll", 0x02D99470, 0x20, 0x2C0; 
}



isLoading
{
	return current.loading == 2;
}

