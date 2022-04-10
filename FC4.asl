state("FarCry4")
{
    int loading : "FC64.dll", 0x02D99470, 0x20, 0x2C0; 
    int mission : "FC64.dll", 0x02DA0EA8, 0x30, 0x18, 0x188, 0x18, 0x60, 0x70, 0x18;
}

startup
  {
    	if (timer.CurrentTimingMethod == TimingMethod.RealTime)
// Asks user to change to game time if LiveSplit is currently set to Real Time.
    {        
        var timingMessage = MessageBox.Show (
            "This game uses Time without Loads (Game Time) as the main timing method.\n"+
            "LiveSplit is currently set to show Real Time (RTA).\n"+
            "Would you like to set the timing method to Game Time?",
            "LiveSplit | Far Cry 4",
            MessageBoxButtons.YesNo,MessageBoxIcon.Question
        );
        
        if (timingMessage == DialogResult.Yes)
        {
            timer.CurrentTimingMethod = TimingMethod.GameTime;
        }
    }
  }

onStart
{
    // This is part of a "cycle fix", makes sure the timer always starts at 0.00
    timer.IsGameTimePaused = true;
}

start
{
	return (old.loading == 0 && current.loading == 2 && current.mission == 0);
}

split 
{ 	return   
		(current.mission == 3) && (old.mission == 2 ) || 
		(current.mission == 4) && (old.mission == 3 ) || 
		(current.mission == 5) && (old.mission == 4 ) ||
		(current.mission == 6) && (old.mission == 5 ) || 
		(current.mission == 7) && (old.mission == 6 ) ||
		(current.mission == 8) && (old.mission == 7 ) || 
		(current.mission == 9) && (old.mission == 8 ) || 
		(current.mission == 10) && (old.mission == 9 ) ||
		(current.mission == 11) && (old.mission == 10 ) || 
		(current.mission == 12) && (old.mission == 11 ) ||
		(current.mission == 13) && (old.mission == 12 ) || 
		(current.mission == 14) && (old.mission == 13 ) || 
		(current.mission == 15) && (old.mission == 14 ) ||
		(current.mission == 16) && (old.mission == 15 ) || 
		(current.mission == 17) && (old.mission == 16 ) ||
		(current.mission == 18) && (old.mission == 17 ) || 
		(current.mission == 19) && (old.mission == 18 ) || 
		(current.mission == 20) && (old.mission == 19 ) || 
		(current.mission == 21) && (old.mission == 20 ) || 
		(current.mission == 22) && (old.mission == 21 ) ||
		(current.mission == 23) && (old.mission == 22 ) || 
		(current.mission == 24) && (old.mission == 23 ) || 
		(current.mission == 25) && (old.mission == 24 ) ||  
		(current.mission == 26) && (old.mission == 25 ) ||
		(current.mission == 27) && (old.mission == 26 ) || 
		(current.mission == 28) && (old.mission == 27 ) || 
		(current.mission == 29) && (old.mission == 28 ) ||
		(current.mission == 30) && (old.mission == 29 ) || 
		(current.mission == 31) && (old.mission == 30 ) ||
		(current.mission == 32) && (old.mission == 31 );
	}	

isLoading
{
	return current.loading == 2;
}
