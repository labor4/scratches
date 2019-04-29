## Tunnelblick/OpenVPN Basic Example
# Steam and PS4 with same config

Tested on Macos 10.13 with Tunnelblick

These post connect/disconnect hooks change the priority of the TAP route in that the TAP net will be priorized over the normal hw net without damaging the base connection. It will later restore the former default gateway.
Steam relies on broadcasts, while PS4 seems to rely on "same gw as PS4" to effectively make a fresh hook. Tested by changing users to connect to PS4.

You need a working TAP example and adapt this compendium to your credentials.
Also you need to modify the upscript to match your subnet/gateway.
