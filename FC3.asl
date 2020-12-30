state("farcry3_d3d11")

{
	int passedmissions : "FC3_d3d11.dll", 0x01F082E8, 0x2AC, 0x10, 0x1C, 0x50, 0x10;
	int loading : "FC3_d3d11.dll", 0x01E718FC, 0x14, 0x1C, 0x16C, 0xF8; 
	int towers : "FC3_d3d11.dll", 0x01F082E8, 0x2C4, 0x10, 0x1C, 0x50, 0x30; 
	int timer : "FC3_d3d11.dll", 0x01EF96D4, 0x6C0, 0x0, 0x0, 0x2D4, 0x6DC;
	int relics : "FC3_d3d11.dll", 0x01E60534, 0x4, 0x148, 0x7C, 0xCC, 0x118;
	int outposts : "FC3_d3d11.dll", 0x01E60678, 0x30, 0x8, 0x1C, 0x50, 0x40;
	int skills : "FC3_d3d11.dll", 0x01F082E8, 0x2D8, 0x10, 0x1C, 0x50, 0x60;
	int cards : "FC3_d3d11.dll", 0x008517E0, 0xC8, 0x80, 0x28, 0x74, 0x11C;
	int quests : "FC3_d3d11.dll", 0x01F082E8, 0x248, 0x10, 0x1C, 0x50, 0x20;
	int letters : "FC3_d3d11.dll", 0x01F082E8, 0x298, 0x10, 0x1C, 0x50, 0x80;
	int hunt : "FC3_d3d11.dll", 0x01E766EC, 0x10, 0x1C, 0x24, 0x50, 0x160;
	int drop : "FC3_d3d11.dll", 0x01F082E8, 0x22C, 0x10, 0x1C, 0x50, 0x140;
	int heads : "FC3_d3d11.dll", 0x01F082E8, 0x2BC, 0x10, 0x1C, 0x50, 0x150;
}



startup 
{
		settings.Add("100%", false, "100%");
		settings.Add("Island", false, "Island", "100%");
		settings.Add("Collectibles", false, "Collectibles", "100%");
		settings.Add("Statistics", false, "Statistics", "100%");
		settings.Add("Rakyat's quests", false, "Rakyat's quests", "100%");
		
		settings.Add("Towers", false, "Towers", "Island");
		for(var i = 1; i <= 18; i++) 
		{
			settings.Add("Tower " + i.ToString(), false, "Tower " + i.ToString(), "Towers");
		}		
		
		settings.Add("Outposts", false, "Outposts", "Island");
		for(var i = 1; i <= 34; i++) 
		{
			settings.Add(i.ToString() + "/34 outposts", false, i.ToString() + "/34 outposts", "Outposts");
		}		
		
		settings.Add("Relics", false, "Relics", "Collectibles");
		for(var i = 1; i <= 120; i++) 
		{
			settings.Add(i.ToString() + "/120 relics", false, i.ToString() + "/120 relics", "Relics");
		}
		
		settings.Add("Letters of the Lost", false, "Letters of the Lost", "Collectibles");
		for(var i = 1; i <= 20; i++) 
		{
			settings.Add(i.ToString() + "/20 letters", false, i.ToString() + "/20 letters", "Letters of the Lost");
		}
				
		/*settings.Add("Memory Cards", false, "Memory Cards", "Collectibles");
		for(var i = 1; i <= 20; i++) 
		{
			settings.Add(i.ToString() + "/20 Memory Cards", false, i.ToString() + "/20 Memory Cards", "Memory Cards");
		}*/
		
		
		settings.Add("Wanted Dead", false, "Wanted Dead", "Rakyat's quests");
		for(var i = 1; i <= 24; i++) 
		{
			settings.Add(i.ToString() + "/24 heads", false, i.ToString() + "/24 heads", "Wanted Dead");
		}
		
		
		settings.Add("Path of the Hunter", false, "Path of the Hunter", "Rakyat's quests");
		for(var i = 1; i <= 23; i++) 
		{
			settings.Add(i.ToString() + "/23 hunts", false, i.ToString() + "/23 hunts", "Path of the Hunter");
		}
		
		settings.Add("Supply Drop", false, "Supply Drop", "Rakyat's quests");
		for(var i = 1; i <= 19; i++) 
		{
			settings.Add(i.ToString() + "/19 drops", false, i.ToString() + "/19 drops", "Supply Drop");
		}
		
		settings.Add("Story Quests", false, "Story Quests", "Island");
		for(var i = 1; i <= 14; i++) 
		{
			settings.Add("Quest " + i.ToString(), false, "Quest " + i.ToString(), "Story Quests");
		}
		
		settings.Add("Skills", false, "Skills", "Statistics");
		for(var i = 1; i <= 54; i++) 
		{
			settings.Add(i.ToString() + "/54 skills", false, i.ToString() + "/54 skills", "Skills");
		}		
		
		settings.Add("Story Missions", true, "Story Missions");
		settings.Add("Make a Break for It", true, "Make a Break for It", "Story Missions");
		settings.Add("Down in Amanaki Town", true, "Down in Amanaki Town", "Story Missions");
		settings.Add("Harvest the Jungle", true, "Harvest the Jungle", "Story Missions");
		settings.Add("Secure the Outpost", true, "Secure the Outpost", "Story Missions");
		settings.Add("Mushrooms in the Deep", true, "Mushrooms in the Deep", "Story Missions");
		settings.Add("The Medusa's Call", true, "The Medusa's Call", "Story Missions");
		settings.Add("Playing the Spoiler", true, "Playing the Spoiler", "Story Missions");
		settings.Add("Prison Break-in (may not split)", true, "Prison Break-in (may not split)", "Story Missions");
		settings.Add("Island Port Hotel", true, "Island Port Hotel", "Story Missions");
		settings.Add("Keeping Busy", true, "Keeping Busy", "Story Missions");
		settings.Add("Meet Citra", true, "Meet Citra", "Story Missions");
		settings.Add("Bad Side of Town", true, "Bad Side of Town", "Story Missions");
		settings.Add("Kick the Hornet's Nest", true, "Kick the Hornet's Nest", "Story Missions");
		settings.Add("A Man Named Hoyt", true, "A Man Named Hoyt", "Story Missions");
		settings.Add("Saving Oliver", true, "Saving Oliver", "Story Missions");
		settings.Add("Piece of the Past", true, "Piece of the Past", "Story Missions");
		settings.Add("Down in the Docks", true, "Down in the Docks", "Story Missions");
		settings.Add("The Motherlode", true, "The Motherlode", "Story Missions");
		settings.Add("Lin Cong I Presume", true, "Lin Cong I Presume", "Story Missions");
		settings.Add("Unhappy Reunion", true, "Unhappy Reunion", "Story Missions");
		settings.Add("This Knife's for You", true, "This Knife's for You", "Story Missions");
		settings.Add("Ambush", true, "Ambush", "Story Missions");
		settings.Add("Warrior Rescue Service", true, "Warrior Rescue Service", "Story Missions");
		settings.Add("New Rite of Passage", true, "New Rite of Passage", "Story Missions");
		settings.Add("Payback", true, "Payback", "Story Missions");
		settings.Add("Fly South", true, "Fly South", "Story Missions");
		settings.Add("Three Blind Mice", true, "Three Blind Mice", "Story Missions");
		settings.Add("Doppelganger", true, "Doppelganger", "Story Missions");
		settings.Add("Triple Decker", true, "Triple Decker", "Story Missions");
		settings.Add("Defusing the Situation", true, "Defusing the Situation", "Story Missions");
		settings.Add("Deepthroat", true, "Deepthroat", "Story Missions");
		settings.Add("All in", true, "All in", "Story Missions");
		settings.Add("Paint It Black", true, "Paint It Black", "Story Missions");
		settings.Add("Black Gold", true, "Black Gold", "Story Missions");
		settings.Add("Aced in the Hole", true, "Aced in the Hole", "Story Missions");
		settings.Add("Betting Against the House", true, "Betting Against the House", "Story Missions");
		settings.Add("The Doctor Is out", true, "The Doctor Is out", "Story Missions");
		settings.Add("Hard Choices (dont do finish split)", true, "Hard Choices (dont do finish split)", "Story Missions");
}

start
{
	return (old.loading == 0 && current.loading == 2 && current.passedmissions > 38);
}

split 
{ 	
	bool missionChanged = 
		(current.passedmissions == 1) && (old.passedmissions == 0 ) && (current.towers != 1) && (settings["Make a Break for It"]) || 
		(current.passedmissions == 2) && (old.passedmissions == 1 ) && (settings["Down in Amanaki Town"]) ||
		(current.passedmissions == 3) && (old.passedmissions == 2 ) && (settings["Harvest the Jungle"]) || 
		(current.passedmissions == 4) && (old.passedmissions == 3 ) && (settings["Secure the Outpost"]) || 
		(current.passedmissions == 5) && (old.passedmissions == 4 ) && (settings["Mushrooms in the Deep"]) ||
		(current.passedmissions == 6) && (old.passedmissions == 5 ) && (settings["The Medusa's Call"]) || 
		(current.passedmissions == 7) && (old.passedmissions == 6 ) && (settings["Playing the Spoiler"]) ||
		(current.passedmissions != 7) && (old.passedmissions == 7 ) && (settings["Prison Break-in (may not split)"]) || 
		(current.passedmissions == 9) && (old.passedmissions == 8 ) && (settings["Island Port Hotel"]) || 
		(current.passedmissions == 10) && (old.passedmissions == 9 ) && (settings["Keeping Busy"]) ||
		(current.passedmissions == 11) && (old.passedmissions == 10 ) && (settings["Meet Citra"]) || 
		(current.passedmissions == 12) && (old.passedmissions == 11 ) && (settings["Bad Side of Town"]) ||
		(current.passedmissions == 13) && (old.passedmissions == 12 ) && (settings["Kick the Hornet's Nest"]) || 
		(current.passedmissions == 14) && (old.passedmissions == 13 ) && (settings["A Man Named Hoyt"]) || 
		(current.passedmissions == 15) && (old.passedmissions == 14 ) && (settings["Saving Oliver"]) ||
		(current.passedmissions == 16) && (old.passedmissions == 15 ) && (settings["Piece of the Past"]) || 
		(current.passedmissions == 17) && (old.passedmissions == 16 ) && (settings["Down in the Docks"]) ||
		(current.passedmissions == 18) && (old.passedmissions == 17 ) && (settings["The Motherlode"]) || 
		(current.passedmissions == 19) && (old.passedmissions == 18 ) && (settings["Lin Cong I Presume"]) || 
		(current.passedmissions == 20) && (old.passedmissions == 19 ) && (settings["Unhappy Reunion"]) || 
		(current.passedmissions == 21) && (old.passedmissions == 20 ) && (settings["This Knife's for You"]) || 
		(current.passedmissions == 22) && (old.passedmissions == 21 ) && (settings["Ambush"]) ||
		(current.passedmissions == 23) && (old.passedmissions == 22 ) && (settings["Warrior Rescue Service"]) || 
		(current.passedmissions == 24) && (old.passedmissions == 23 ) && (settings["New Rite of Passage"]) || 
		(current.passedmissions == 25) && (old.passedmissions == 24 ) && (settings["Payback"]) ||  
		(current.passedmissions == 26) && (old.passedmissions == 25 ) && (settings["Fly South"]) ||
		(current.passedmissions == 27) && (old.passedmissions == 26 ) && (settings["Three Blind Mice"]) || 
		(current.passedmissions == 28) && (old.passedmissions == 27 ) && (settings["Doppelganger"]) || 
		(current.passedmissions == 29) && (old.passedmissions == 28 ) && (settings["Triple Decker"]) ||
		(current.passedmissions == 30) && (old.passedmissions == 29 ) && (settings["Defusing the Situation"]) || 
		(current.passedmissions == 31) && (old.passedmissions == 30 ) && (settings["Deepthroat"]) ||
		(current.passedmissions == 32) && (old.passedmissions == 31 ) && (settings["All in"]) || 
		(current.passedmissions == 33) && (old.passedmissions == 32 ) && (settings["Paint It Black"]) || 
		(current.passedmissions == 34) && (old.passedmissions == 33 ) && (settings["Black Gold"]) ||
		(current.passedmissions == 35) && (old.passedmissions == 34 ) && (settings["Aced in the Hole"]) || 
		(current.passedmissions == 36) && (old.passedmissions == 35 ) && (settings["Betting Against the House"]) ||
		(current.passedmissions == 37) && (old.passedmissions == 36 ) && (settings["The Doctor Is out"]) || 
		(current.passedmissions == 38) && (old.passedmissions == 37 ) && (settings["Hard Choices (dont do finish split)"]);
		
	
	bool towerChanged = 
			current.towers != old.towers && settings["Tower " + current.towers.ToString()] && current.loading != 2;
			
	bool relicsChanged = 
			current.relics != old.relics && settings[current.relics.ToString() + "/120 relics"] && current.loading != 2;
			
	bool outpostChanged = 
			current.outposts != old.outposts && settings[current.outposts.ToString() + "/34 outposts"] && current.loading != 2;
		
	bool skilsChanged = 
			current.skills != old.skills && settings[current.skills.ToString() + "/54 skills"] && current.loading != 2;
		
	bool cardsChanged = 
			current.cards != old.cards && settings[current.cards.ToString() + "/20 Memory Cards"] && current.loading != 2;
			
	bool questsChanged = 
			current.quests != old.quests && settings["Quest " + current.quests.ToString()] && current.loading != 2;
			
	bool lettersChanged = 
			current.letters != old.letters && settings[current.letters.ToString() + "/20 letters"] && current.loading != 2;
			
	bool huntChanged = 
			current.hunt != old.hunt && settings[current.hunt.ToString() + "/23 hunts"] && current.loading != 2;
			
	bool dropChanged = 
			current.drop != old.drop && settings[current.drop.ToString() + "/19 drops"] && current.loading != 2;
			
	bool headsChanged = 
			current.heads != old.heads && settings[current.heads.ToString() + "/24 heads"] && current.loading != 2;
			
	bool trialsChanged = 
			current.trials != old.trials && settings[current.trials.ToString() + "/12 trials"] && current.loading != 2;
			
	return 
		missionChanged || 
		towerChanged ||
		relicsChanged ||
		outpostChanged ||
		skilsChanged ||
		cardsChanged ||
		questsChanged ||
		lettersChanged ||
		huntChanged ||
		dropChanged ||
		headsChanged ||
		trialsChanged;
}

isLoading
{
	return current.loading == 2;
}

