# Description
This is a simple platformer game built with Godot! You can play it here: https://plaguery.itch.io/a-typical-platformer

# Features
This platformer includes the following:
- Map built using tiles
- Background
- Character sprites
- Temporary jump powerup
- Character respawn upon death

# Development
I implemented the powerup and respawns using gdscript on the hitbox nodes (CollisionShape2D). While creating my game, I ran into a bug where my powerup didn't work, but it turned out that I forgot to connect a signal to the powerup node.
