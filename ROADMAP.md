# ROADMAP TO PRE-ALPHA

This file provides an overview of how the project is heading, tracking what i need to do or what i already did.

## Basic Movement
- [x] Walk/Run in both directions
    - [ ] Acceleration
    - [x] Sprite flip for both directions
- [x] Jump
    - [x] Gravity
    - [ ] Jump height
    - [x] Falling
- [x] 「[Leap of Faith](#-0---the-fool-)」 Double jump

## Basic Interactions

- [ ] Collision
    - [x] With walls
    - [x] With floor & ramps
    - [ ] With moving platforms
- [ ] Moving platforms
- [ ] Room changing
- [ ] Transitions

## Sprites
- [ ] Player
    - [ ] Idle
    - [ ] Walk
    - [ ] Fall
    - [ ] Jump
    - [ ] Extra jump

- [ ] Tile set
    - [ ] Ramp
    - [ ] Wall
    - [ ] Floor


## Basic Combat

- [ ] Meele combat
- [ ] Attack feedback
- [ ] Deal damage
- [ ] Receive damage
    - [ ] Lose health
    - [ ] Iframes
- [ ] Player death

## HUD

- [ ] Life bar
- [ ] Mana/Energy bar
- [ ] Equiped cards

## Progression

- [ ] Alternate between cards
- [ ] Manual/Automatic save important data

## Visual and Sound Feedback

- [ ] Visual effects
    - [ ] VFX for attack
    - [ ] VFX for jump
    - [ ] VFX for taking damage
- [ ] Sound effects
    - [ ] SFX for attack
    - [ ] SFX for jump
    - [ ] SFX for taking damage
    - [ ] SFX when 「[Fool's Luck](#-0---the-fool-)」 deny a damage

## Debug Tools

- [x] Show informations about state machine
- [ ] Show hitboxes
- [ ] Manual teleport for any room

## Cards & Effects

### 「 0 - The Fool 」
- [ ] Passive - Leap of Faith
    - [ ] Double jump
- [ ] Active - Fool's Luck
    - [ ] Chance to ignore the damage for a couple of seconds
    - [ ] Sound to confirm that the damage was denied

### 「 1 - The Magician 」
- [ ] Passive - Arcane Amplification
    - [ ] Buff spells when the mana is above 80%
- [ ] Active - Elemental Catalyst
    - [ ] Spawn a elemental orb that chase enemy applying a elemental effect
        - [ ] Fire orb (Burn the enemy)