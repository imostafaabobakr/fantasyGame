# FantasyGame

In a parallel universe our hero (Jack) is searching for coins as it is his food. His meal consists of 10 coins in order to be satisfied. Unfortunately, nothing is easy because he there is an explosive land mine (bomb) in his way which will kill him if he walked on it. 

Our game is to help our Jack to eat coins.


## Main parts

1. Jack: walks by the keyboard arrows (up - right - down - left) 
2. Coin: is generated in random position each time jack eats one
3. Score: is increasing by 1 each time jack eats one 
4. Bomb: will explode if jack touches it


## Game Windows
1. Start Window: contains (game name - instructions) 
2. Game Window: is the environment of the game and contains (Jack - Coin - Bomb - Score)
3. Winning Window: a congratulation and options (play again - exit) 
4. Losing Window: a game-over , same options (play again - exit), and a rotating tease (Loser) 

## Game Functions

- setup() : setting size - loading images - creating font
- draw() : start window
- mousePressed() : to start the game when pressing the mouse on the start window
- game() : game window 
  1. motion of bomb 
  2. playing with arrows 
  3. conditions of reaching the end of window 
  4. condition of eating and generating coin
  5. condition of colliding with bomb
  6. conditions for loasing and winning
- winScreen(): winning window and has 2 options
1. exit() when pressing E key 
2. play again when pressing P key
- gameOverScreen() : losing window , dancing "loser" word, and 2 options
1. exit() when pressing E key 
2. play again when pressing P key

## Program & Book
We have used processing 3 program, with the aid of "Getting Started with Processing" book.

## Useful Chapters 
- Chapter 3 (Draw): color - comments
- Chapter 4 (Variables): making variables
- Chapter 5 (Response): map - click - location
- Chapter 6 (Media): images - fonts
- Chapter 7 (Motion): speed and direction - random - translate, rotate
- Chapter 8 (Functions): making and calling functions
- Chapter 11 (Extend): 3D



