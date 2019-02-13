state("BlackOps")
{
	int neloading : "BlackOps.exe", 0x17FBC88;	
}


isLoading
{
	return current.neloading == 5;
}

