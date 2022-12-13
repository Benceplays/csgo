#pragma semicolon 1 
#pragma newdecls required 

#include <sourcemod> 
	
	 public Plugin myinfo =
	{
	    name = "Info",
	    author = "Booby",
	    description = "Information that can be written with a timer.",
	    version = "1.0",
	    url = "https://www.wildem.hu/"
	};
	
	
	public void OnPluginStart()
    {
        RegConsoleCmd("sm_dc", Discord);
        RegConsoleCmd("sm_rules", Rules);
        RegConsoleCmd("sm_stat", Stats);
        RegConsoleCmd("sm_mg", MiniGames);
    } 

    public Action Discord(int client, int args) 
    {
        if (IsClientInGame(client))
        {
            PrintToChat(client, " \x07[Wildem] \x01 >> Discord: https://discord.gg/Em9DMjhdkG");
        }
        return Plugin_Handled; 
    } 

    public Action MiniGames(int client, int args) 
    {
        if (IsClientInGame(client))
        {
            PrintToChat(client, " \x07[Wildem] \x01 >> A játékmódok:");
        }
        return Plugin_Handled; 
    } 

    public Action Stats(int client, int args) 
    {
        if (IsClientInGame(client))
        {
            PrintToChat(client, " \x07[Wildem] \x01 >> Még készül....");
        }
        return Plugin_Handled; 
    } 
    
    public Action Rules(int client, int args) 
    {
        if (IsClientInGame(client))
        {
            PrintToChat(client, " \x07[Wildem] \x01 >> Szabályok: Ne legyél toxic.");
            PrintToChat(client, " \x07[Wildem] \x01 >> Szabályok: Ne legyél toxic.");
            PrintToChat(client, " \x07[Wildem] \x01 >> Szabályok: Ne legyél toxic.");
            PrintToChat(client, " \x07[Wildem] \x01 >> Szabályok: Ne legyél toxic.");
            PrintToChat(client, " \x07[Wildem] \x01 >> A kevésbé fontos szabályokat a discord szerverünkön találod, !dc.");
        }
        return Plugin_Handled; 
    } 