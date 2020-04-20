state("farcry3_d3d11", "UPlay")

{
	int loading : "FC3_d3d11.dll", 0x01E718FC, 0x14, 0x1C, 0x16C, 0xF8; 
}

state("farcry3_d3d11", "Pirate's v1.05")
{
	int loading : "FC3_d3d11.dll", 0x01E13A34, 0x4, 0x14, 0x18, 0x500, 0x328;
}

init
{
	byte[] exeMD5HashBytes = new byte[0];
    using (var md5 = System.Security.Cryptography.MD5.Create())
    {
        using (var s = File.Open(modules.First().FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
        {
            exeMD5HashBytes = md5.ComputeHash(s); 
        } 
    }
    var MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
    print("MD5Hash: " + MD5Hash.ToString()); //Lets DebugView show me the MD5Hash of the game executable, which is actually useful.


	switch (MD5Hash)
    {
        case "DF7FC8A341CED1C4E49D716F04BB3431":
            version = "UPlay";
            break;

        case "7460A9425D61AA113D50EC86D8E7E936":
            version = "Pirate's v1.05";
            break;
    }	
}


isLoading
{
	return current.loading == 2;
}
