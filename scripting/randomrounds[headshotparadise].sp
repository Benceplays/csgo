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
	url = "https://headshotparadise.hu/"
};

public int random;
//public bool first = true;

public OnPluginStart(int client){
	HookEvent("player_footstep", DontMove);
	HookEvent("round_end", OnRoundEnd, EventHookMode_PostNoCopy);
	//if (first == false) {
	HookEvent("round_start", OnRoundStart, EventHookMode_PostNoCopy);
	HookEvent("round_start", TheMethod, EventHookMode_PostNoCopy);
	/*} 
	else{
	first = false;
	//round ugras jon majd ide
	} */
}
//Round2 nem lehet mozogni, aki megmozdul az meghal
public void DontMove(int userid, Event event, const char[] name, bool dontBroadcasts)
{
	 ForcePlayerSuicide(userid);
}

public OnRoundEnd(Handle:event, const String:name[], bool:dontBroadcast){
	random = GetRandomInt(1, 4);
	PrintToChatAll("%d a random szam", random);
	return random;
}
public TheMethod(Handle:event, const String:name[], bool:dontBroadcast){
	//if (random == 1){
		any data;
		int client = GetClientOfUserId(data);

		negev(client);
		PrintToChat(client, "Működik");
		PrintToChatAll("Mukodikall");
	//}
}

public void negev(int client){
	GivePlayerItem(client, "weapon_negev");
}

public OnRoundStart(Handle:event, const String:name[], bool:dontBroadcast){
	any data;
	int client = GetClientOfUserId(data);
	PrintToConsoleAll("%s", client);
	PrintHintTextToAll("Ez a hint");
	PrintToChatAll("A kör elkezdődött.");
}
