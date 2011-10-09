/************************************************************************
*************************************************************************
[TF2] RoundEnd Fun
Description:
	Provides some fun at the end of the round
*************************************************************************
*************************************************************************
This file is part of Simple Plugins project.

This plugin is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or any later version.

This plugin is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this plugin.  If not, see <http://www.gnu.org/licenses/>.
*************************************************************************
*************************************************************************
File Information
$Id: simple-roundimmunity.sp 55 2009-10-10 08:39:11Z antithasys $
$Author: antithasys $
$Revision: 55 $
$Date: 2009-10-10 03:39:11 -0500 (Sat, 10 Oct 2009) $
$LastChangedBy: antithasys $
$LastChangedDate: 2009-10-10 03:39:11 -0500 (Sat, 10 Oct 2009) $
$URL: https://sm-simple-plugins.googlecode.com/svn/trunk/Simple%20Round%20Immunity/addons/sourcemod/scripting/simple-roundimmunity.sp $
$Copyright: (c) Simple Plugins 2008-2009$
*************************************************************************
*************************************************************************
*/

new g_aPlayer_PowerPlay[MAXPLAYERS + 1];

public Client_EnablePowerPlay(client)
{
	TF2_SetPlayerPowerPlay(client, true);
	g_aPlayer_PowerPlay[client] = true;
}

public Client_EnablePowerPlayAll()
{
	for (new i = 1; i <= MaxClients; i++)
	{
		if (IsValidClient(i))
		{
			Client_EnablePowerPlay(i);
		}
	}
}

public Client_DisablePowerPlay(client)
{
	TF2_SetPlayerPowerPlay(client, false);
	g_aPlayer_PowerPlay[client] = false;
}

public Client_DisablePowerPlayAll()
{
	for (new i = 1; i <= MaxClients; i++)
	{
		if (IsValidClient(i))
		{
			Client_DisablePowerPlay(i);
		}
	}
}