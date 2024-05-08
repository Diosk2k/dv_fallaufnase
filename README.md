[![N|Solid](https://cdn.discordapp.com/attachments/923842147222962186/1237645009218441236/standard.gif?ex=663c663c&is=663b14bc&hm=de71ce7741913eab5732e49f3fff14dbe2d0167457fab48eacaef0973256eb8e&)](https://nodesource.com/products/nsolid)
## Für was ist dieses Skript?
Dieses Skript überwacht die Sprungaktivität eines Spielers in GTA V und verhängt eine Strafe, wenn der Spieler innerhalb eines bestimmten Zeitrahmens wiederholt springt, indem es den Spieler zum Stolpern bringt, einen Bildschirm-Effekt anwendet und Lebensverlust verursacht.

- Ihr könnt dies als Ressource runterladen und einfach starten
- Alternativ könnt Ihr den Inhalt der "client.lua" in ein Skript eurer Wahl einbauen
##
##
| Ressource | Quellen |
| ------ | ------ |
| Dv_Fallaufnase | https://github.com/Diosk2k/dv_fallaufnase |
##
## Development
Ihr braucht Hilfe bei der Installation?

Auf meinen Discord helfe ich euch gern!
https://discord.gg/8qErUm9WkM

## Konfiguration
Um das Verhalten des Skripts anzupassen, könnt ihr die Werte in der `config.lua` ändern:

```lua
Config = {}

-- Strafe für das Springen (Lebensverlust in Prozent)
Config.PenaltyPercentage = 2

-- Zeitrahmen für wiederholtes Springen (in Millisekunden)
Config.JumpTimeFrame = 1000 -- 3 Sekunden
