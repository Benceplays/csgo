//Sourcemod Includes
#include <sourcemod>

//Pragma
#pragma semicolon 1
#pragma newdecls required

//Globals
bool g_bMessagesShown[MAXPLAYERS + 1];

public Plugin myinfo = 
{
	name = "Csatlakozás üzenet",
	author = "Booby",
	description = "A script a játékosok üdvözlésére készült.",
	version = "1.0",
	url = "https://headshotparadise.hu/"
};

public void OnPluginStart()
{
	HookEvent("player_spawn", Event_OnPlayerSpawn);
	HookEvent("nextlevel_changed", StartPluginok);
	PrintToServer("Lefut-------------------------------------------------------------------");
}
public void StartPluginok(Event event, const char[] name, bool dontBroadcast)
{
	ServerCommand("bot_kick");
	ServerCommand("bot_add_ct");
	ServerCommand("sv_enablebunnyhopping 1");
	ServerCommand("sv_autobunnyhopping 1");
	ServerCommand("sv_maxspeed 1000");
}

public void OnMapStart()
{
	for (int i = 1; i <= MaxClients; i++)
	{
		g_bMessagesShown[i] = false;
	}
}

public void Event_OnPlayerSpawn(Event event, const char[] name, bool dontBroadcast)
{
	int client = GetClientOfUserId(GetEventInt(event, "userid"));
	
	if (client == 0 || IsFakeClient(client))
	{
		return;
	}
	
	CreateTimer(0.2, Timer_DelaySpawn, GetClientUserId(client), TIMER_FLAG_NO_MAPCHANGE);
}

public Action Timer_DelaySpawn(Handle timer, any data)
{
	int client = GetClientOfUserId(data);
	
	if (client == 0 || !IsPlayerAlive(client) || g_bMessagesShown[client])
	{
		return Plugin_Continue;
	}

	char name[64];
	GetClientName(client, name, sizeof(name));
	PrintToChat(client, " \x07---------------------------------------------------------------------------");
	PrintToChat(client, " \x07[Headshot Paradise] \x01 >> %s üdvözlünk a Headshot Paradise-on.", name);
	PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Reméljük örömteli perceket okozhatunk neked.");
	PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Weboldal: https://headshotparadise.hu/");
	PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Szerver ip: 37.17.172.74:27015");
	PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Discord: https://discord.gg/sg6NFnEUAa");
	PrintToChat(client, " \x07---------------------------------------------------------------------------");
	g_bMessagesShown[client] = true;
	
	return Plugin_Continue;
}

public void OnClientDisconnect(int client)
{
	g_bMessagesShown[client] = false;
}