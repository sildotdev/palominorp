# Palomino

Palomino was an extensive mutliplayer roleplay game for Garry's Mod set in early 2000s New York. Players could choose to play as police officers, criminals, or regular citizens. Police Officers could arrest players, write traffic tickets, and conduct raids. Criminals could participate in the narcotics trade, rob the bank, or raid other players. Regular citizens could hold jobs such as a City Worker, and open up their own store or casino.

The gamemode is built off of a custom fork of [Helix](https://github.com/nebulouscloud/helix) called [pHelix](https://github.com/sildotdev/phelix) (pronounced "felix"). Due to unforeseen circumstances & life events among the two co-founders, the project was halted months before the open beta.

This project is more than just a Lua gamemode. It expanded to include a custom Node.js API, Authentication Server, and React webapp, that were used to expand the capabilities of Garry's Mod's limited toolset. With GMod's recent move to Chromium from Awesomium it became possible to embed modern web apps to the game, enabling features such as the Police Computer (see below) to be done entirely in React and embedded in-game. This, however, needed some novel authentication methods & API routes to be written. You can find more information about the JavaScript parts of the project in the related repositories below.

Related Repositories:
- [pHelix](https://github.com/sildotdev/phelix) (Lua)
- [pAPI](https://github.com/sildotdev/papi/) (JavaScript, Node.js)
- [pAuth](https://github.com/sildotdev/pauth) (JavaScript, Node.js)
- [palOS](https://github.com/sildotdev/palOS) (JavaScript, Node.js, React)
- [Loading screen](https://github.com/Palomino-Roleplay/Palomino-Roleplay.github.io) (HTML, CSS, JavaScript)

# UI Showcase

## Character Creation Menu
https://github.com/user-attachments/assets/b65d2e65-bb24-4445-89b1-42a9432d1010

## Intro & Main Menu

https://github.com/user-attachments/assets/6bd9afda-d84e-4872-8790-e542427e9f17

## Inventory Menu

![image](https://github.com/user-attachments/assets/16abea07-ed62-43ca-9e1e-d2d1a518404e)

### Inventory Menu Concept Art

The image below is one of the first things I created for this project. It ended up becoming so popular that someone remade it in figma, and that remake was featured on some YouTube videos.
![image (5)](https://github.com/user-attachments/assets/f1e05ddb-8548-4e8d-bbc6-03f4da0970cf)

## Prop Building

https://github.com/user-attachments/assets/c1e77e83-0099-4782-a229-4d7450de2c33

The gamemode has functionality to make certain props of some real estate properties to snap to the ground, or snap to certain points on other similar props.

## Police Computer
https://github.com/user-attachments/assets/bdff1957-cbba-4b06-89f2-5bd37e9b68eb

The Police Computer is achieved by running an external React web app using the React95 template. See here: https://github.com/sildotdev/palOS
The implementation in-game features PAUTH (https://github.com/sildotdev/pauth/) authentication and retrieving arrest records from PAPI (https://github.com/sildotdev/papi/).

### Police Computer Concept Art
Done in Figma, unfortunately not implemented before the project was halted.
![image](https://github.com/user-attachments/assets/728b8fa8-993d-4414-bce4-64031b0b2e75)

## NPCs & Entity Interaction Menu

https://github.com/user-attachments/assets/343c83e1-3f0e-4a61-8894-380f6030cf4d

![image](https://github.com/user-attachments/assets/55708d33-e339-4db8-a4bf-c9ac41f15cca)

## Bank Heist Entities

https://github.com/user-attachments/assets/5ae281d5-3ae2-4118-bc86-7fbe17020d91

The gas canister, when placed by the lazers at the bank, starts to fill the room with gas. This allows players to walk through the lazers without setting off the Bank Alarm.

## Nameplates

https://github.com/user-attachments/assets/00a47b24-b092-4fa4-9447-d3b7dc5eec8c

## Storefront Entities

https://github.com/user-attachments/assets/3afa72eb-25d8-4107-88b8-5078776cb624

# Original Playtest Trailer

https://github.com/user-attachments/assets/aa13973c-2222-4df3-b469-ee9eb2347d55

