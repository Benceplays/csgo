#pragma semicolon 1 
#pragma newdecls required 

#include <sourcemod> 
	
	float waitingtime1 = 60.0;
	float waitingtime2 = 101.0;
	float waitingtime3 = 145.0;
	float waitingtime4 = 204.0;
	float waitingtime5 = 237.0;
	float waitingtime6 = 266.0;

	
	 public Plugin myinfo =
	{
	    name = "Info",
	    author = "Booby",
	    description = "Information that can be written with a timer.",
	    version = "1.0",
	    url = "https://www.wildem.hu/"
	};
	
	
	public void OnPluginStart(){
		CreateTimer(waitingtime1, Webpage, _, TIMER_REPEAT);
		CreateTimer(waitingtime2, FriendIp, _, TIMER_REPEAT);
		CreateTimer(waitingtime3, Stat, _, TIMER_REPEAT);
		CreateTimer(waitingtime4, Rules, _, TIMER_REPEAT);
		CreateTimer(waitingtime5, Discord, _, TIMER_REPEAT);
		CreateTimer(waitingtime6, Minigames, _, TIMER_REPEAT);
	}
	public Action Webpage(Handle timer){
	    PrintToChatAll(" \x07[Wildem] \x01 >> Látogasd meg weboldalunkat is: https://www.wildem.hu/");
	    return Plugin_Continue;
	}
	public Action FriendIp(Handle timer){
	    PrintToChatAll(" \x07[Wildem] \x01 >> Ha tetszik a szerver szólj a barátaidnak is.");
	    PrintToChatAll(" \x07[Wildem] \x01 >> 95.138.193.251:34028");
	    return Plugin_Continue;
	}
	public Action Stat(Handle timer){
	    PrintToChatAll(" \x07[Wildem] \x01 >> !stat A statisztikáid megtekintéséhez.");
	    return Plugin_Continue;
	}
	public Action Rules(Handle timer){
	    PrintToChatAll(" \x07[Wildem] \x01 >> !rules A szabályok áttekintéséhez.");
	    return Plugin_Continue;
	}
	public Action Discord(Handle timer){
	    PrintToChatAll(" \x07[Wildem] \x01 >> !dc A discord meghívóhoz.");
	    return Plugin_Continue;
	}
	public Action Minigames(Handle timer){
	    PrintToChatAll(" \x07[Wildem] \x01 >> !mg A minigamek megtekintéséhez.");
	    return Plugin_Continue;
	}
	