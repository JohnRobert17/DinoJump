# DinoJump

A simple game where a dinosaur jumps over randomly generated cacti. This project is built using GameMaker Language (GML) in GameMaker Studio.

**Current Status: Unfinished**

Feel free to copy and learn from this code!

## Core Gameplay Loop

* **Automatic Forward Movement:** The dinosaur constantly moves forward, with the speed gradually increasing over time. The player does not directly control this movement.
* **Obstacle Avoidance:** The main objective is to avoid colliding with cacti that appear randomly on the ground. These cacti come in various heights and quantities (single or groups of small and tall).
* **Scoring:** Your score increases the longer you survive. The rate of score increase is based on the distance covered. The score is displayed in the game window.
* **Game Over:** Hitting a cactus results in an immediate game over. The dinosaur will crash, and the final score will be shown.
* **Restart:** After a game over, pressing the jump input (see controls below) will restart the game. The dinosaur will return to the starting position, and the speed will reset.

## Controls

* **Space Bar / Up Arrow / Tap/Click:** Jump
* **Left Arrow:** Move Backward
* **Right Arrow:** Move Forward

## Detailed Mechanics

### Dinosaur Actions

* **Running:** The dinosaur's default state, featuring a simple running animation.
* **Jumping:** Pressing the jump input initiates a jump.
    * **Jump Height and Duration:** The jump has a fixed height and duration, which can be slightly influenced by how long the input is held (with a maximum limit).
    * **Gravity:** After reaching the peak of the jump, the dinosaur falls back to the ground due to gravity.
* **Forward/Backward Movement:** Players can use the **Left Arrow** and **Right Arrow** keys to move the dinosaur backward or forward, respectively.

### Obstacle Generation

* **Random Spawning:** Cacti appear randomly with varying time intervals between them.
* **Speed-Dependent Frequency:** As the game speed increases, cacti will spawn more frequently, increasing the difficulty.
* **Variety:** The game features different combinations of cacti sizes and groupings.
* **Spacing:** The distance between consecutive cacti is also somewhat random, requiring players to time their jumps carefully.

### Difficulty Progression

* **Increasing Speed:** The primary way the game becomes more challenging is through the gradual increase in the dinosaur's running speed, reducing your reaction time.
* **Increased Obstacle Density:** As your score gets higher, you'll encounter more cacti appearing closer together.

# About the Project

This is a work in progress game called DinoJump.  The objective is simple: help the dinosaur jump over cacti to avoid getting spiked.

**What You'll Find Here**

This repository contains the source code for DinoJump, written in GML for GameMaker Studio.

**I'd Be Glad to Help!**

If you have any questions or want to chat about the game, feel free to reach out!

**About the Author**

My name is John Robert. I'm a software engineer by day, game dev by night.
