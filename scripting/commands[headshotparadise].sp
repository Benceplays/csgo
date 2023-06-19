#pragma semicolon 1 
#pragma newdecls required 

#include <sourcemod> 
	
	 public Plugin myinfo =
	{
	    name = "Info",
	    author = "Booby",
	    description = "Idozitovel kiiratott dolgok.",
	    version = "1.0",
	    url = "https://headshotparadise.hu/"
	};
	
	
	public void OnPluginStart()
    {
        RegConsoleCmd("sm_dc", Discord);
        RegConsoleCmd("sm_rules", Rules);
        RegConsoleCmd("sm_stat", Stats);
        RegConsoleCmd("sm_new", NewUpdates);
    } 

    public Action Discord(int client, int args) 
    {
        if (IsClientInGame(client))
        {
            PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Discord: https://discord.gg/sg6NFnEUAa");
        }
        return Plugin_Handled; 
    } 

    public Action NewUpdates(int client, int args)
    {
        if (IsClientInGame(client))
        {
            PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Frissítések: ");
            PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Legutóbb frissítve: 2023.06.19.");
            PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Saját pluginok, bug fix, új parancsok.");
            PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Fegyver kinézetek, 3 új awp skin.");
            PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Új tagság, egyedi agentel.");
        }
        return Plugin_Handled;
    }
    public Action Stats(int client, int args) 
    {
        Menu menu = new Menu(Menu_Callback);
        menu.SetTitle("Stats");
        menu.AddItem("rank", "Rank: Legendás Sas");
        menu.AddItem("options2", "options2");
        menu.Display(client, 30);
        return Plugin_Handled;
    } 
    
    public int Menu_Callback(Menu menu, MenuAction action, int param1, int param2){
        switch (action){
            case MenuAction_Select:
            {
                char item[32];
                menu.GetItem(param2, item, sizeof(item));

                if (StrEqual(item, "rank")){
                    PrintToChatAll("rank");
                }
                else if (StrEqual(item, "options2")){
                    PrintToChatAll("options2 kivalasztva");
                }
            }
            case MenuAction_End:
            {
                delete menu;
            }
        }
        return param1;
    }

    public Action Rules(int client, int args) 
    {
        if (IsClientInGame(client))
        {
            PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Szabályok: Tilos spamelni.");
            PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Szabályok: Tilos a szerver szidalmazása.");
            PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Szabályok: Tilos ordítozni, hangtorzítót használni.");
            PrintToChat(client, " \x07[Headshot Paradise] \x01 >> Szabályok: A voicechat nem életkorhoz, hanem értelmiségi szinthez van kötve.");
            PrintToChat(client, " \x07[Headshot Paradise] \x01 >> További szabályok a discord szerverünkön, !dc.");
        }
        return Plugin_Handled; 
    } 