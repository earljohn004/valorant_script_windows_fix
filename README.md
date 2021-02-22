# Valorant Script Windows Fix
Description:
This is a simple script to fix the issue of bypassing the verifying files of Valorant game in Diskless Clients. 
Script should be run everytime there is an update on the server. Client only needs one time setup.

## Client Setup
On your game menu settings, include generated client_transfer.bat in "Execute ahead: "


## Script Process: 
1. Script will copy contents from server's ProgramData and store in Server Gamedisk
2. Script will create client_transfer.bat for syncing ProgramData with server and client. 
3. Include the client_server.bat in GameMenu "execute ahead" setting
4. Run valorant on your client. No need Super User
