#include <sdkhooks>
#include <sdktools>
#include <sourcemod>
#pragma newdecls required
#pragma semicolon 1


public Plugin myinfo =
{
	name = "Randomrounds",
	author = "",
	description = "",
	version = "1.0.0",
	url = "https://github.com//Randomrounds"
};


	public void OnPluginStart(int client)
	{
		Random();
	}

public void Random(){
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
}