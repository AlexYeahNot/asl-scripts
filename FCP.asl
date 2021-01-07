state("FCPrimal")
{
	int loading : "FCPrimal.exe", 0x03207B88, 0x10, 0xD0, 0x10, 0x190, 0x730; 
}


isLoading
{
	return current.loading != 0;
}

