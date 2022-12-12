#include <sdkhooks>
#include <sdktools>
#include <sourcemod>
#pragma semicolon 1


public Plugin myinfo =
{
	name = "Randomrounds",
	author = "Booby",
	description = "This script is needed for the random round.",
	version = "1.0.0",
	url = "https://www.wildem.hu/"
};


public OnPluginStart(){
	HookEvent("round_end", OnRoundEnd, EventHookMode_PostNoCopy);
	HookEvent("round_start", OnRoundStart, EventHookMode_PostNoCopy);
	CreateTimer(30.0, scout, _, TIMER_REPEAT);
}

public OnRoundEnd(Handle:event, const String:name[], bool:dontBroadcast){
	int random = GetRandomInt(1, 4);
	switch(random) {
		case 1: {
			PrintToChatAll("sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssegy");
		}
		case 2: {
			PrintToChatAll("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwketto");
		}
		case 3: {
			PrintToChatAll("rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrharom");
		}
		case 4: {
			PrintToChatAll("tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttnegy");
		}
	} 
	PrintToChatAll("%d a random szam", random);
}

public Action scout(Handle timer, int client){
	GivePlayerItem(client, "weapon_scout");
	return Plugin_Handled;
}

public OnRoundStart(Handle:event, const String:name[], bool:dontBroadcast){
	PrintHintTextToAll("Ez a hint");
	PrintToChatAll("A kör elkezdődött.");
}