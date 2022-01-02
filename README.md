# FantasyGame

In a parallel universe our hero **(Jack)** is searching for coins as it is his food. His meal consists of 10 coins in order to be satisfied. Unfortunately, nothing is easy because he there is an explosive land mine **(bomb)** in his way which will kill him if he walked on it. 

Our game is to help Jack to eat coins.


## Main parts

1. **Jack** : walks by the keyboard arrows (up - right - down - left) 
2. **Coin** : is generated in random position each time jack eats one
3. **Score** : is increasing by 1 each time jack eats one 
4. **Bomb** : will explode if jack touches it


## Game Windows

1. **Start Window** : contains (game name - instructions) 
2. **Game Window** : is the environment of the game and contains (Jack - Coin - Bomb - Score)
3. **Winning Window** : a congratulation and options (play again - exit) 
4. **Losing Window** : a game-over , same options (play again - exit), and a rotating tease (Loser) 

## ScreenShots

![screen1](https://user-images.githubusercontent.com/47760339/147873918-dfd7c14b-4dd3-4276-ae8e-b881735adb91.png)
![screen2](https://user-images.githubusercontent.com/47760339/147873931-f8648802-be93-496f-aaec-fa35066d1d83.png)
![screen3](https://user-images.githubusercontent.com/47760339/147873949-77671385-6cbc-4531-9b57-013ae68f138a.png)
![screen4](https://user-images.githubusercontent.com/47760339/147873951-908528fe-0564-4c66-b3e5-380a76f40c16.png)


## Game Functions

- **setup()** : setting size - loading images - creating font
- **draw()** : start window
- **mousePressed()** : to start the game when pressing the mouse on the start window
- **game()** : game window 
  1. motion of bomb 
  2. playing with arrows 
  3. conditions of reaching the end of window 
  4. condition of eating and generating coin
  5. condition of colliding with bomb
  6. conditions for loasing and winning
- **winScreen()**: winning window and has 2 options
  1. exit() when pressing E key 
  2. play again when pressing P key
- **gameOverScreen()** : losing window , **dancing loser word**, and 2 options
  1. exit() when pressing E key 
  2. play again when pressing P key

## Program & Book
We have used **processing 3** program, with the aid of **Getting Started with Processing** book.

## Useful Chapters 
- Chapter 3 (Draw): color - comments
- Chapter 4 (Variables): making variables
- Chapter 5 (Response): map - click - location
- Chapter 6 (Media): images - fonts
- Chapter 7 (Motion): speed and direction - random - translate, rotate
- Chapter 8 (Functions): making and calling functions
- Chapter 11 (Extend): 3D

  ## Authors 
   1. [Ahmed Samy](https://github.com/samyvic)
   3. [Hasnaa Zaki]()
   4. [Mahmoud Diab](https://github.com/mahmouddiab74)
   5. [Mohamed Mahmoud Omar](https://github.com/mhmdomar)

