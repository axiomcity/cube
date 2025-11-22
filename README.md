# Mon Petit Jeu en Lua

Bonjour à tous,

Je suis ravi de vous présenter un petit jeu qui me tient à cœur. J’espère sincèrement que cela vous plaira ! Pour le créer, j'ai appris le langage **Lua**, car j'ai décidé de me lancer dans le développement de jeux vidéo.

## Aperçu du Jeu

L'histoire se déroule dans une prairie. Vous incarnez un jeune cube dont le rêve est de toucher le soleil. **Parviendra-t-il à réaliser son rêve ?**

### Objectif du Jeu

- **Faire monter le score.**

## Exemples de Code

Voici quelques exemples de code pour vous donner une idée de la logique de jeu :

### Initialisation de la gravité du Cube

```lua
for i = 1, 1, 1 do
  player.y = player.y + game.gravity
end
```

### Fonction de score du joueur

```lua
if key == 'space' then
  player.score = player.score + player.boost
  player.y = player.y - 20
end
```
### Structure du code

game.zip/
├ 
├ DRAW.lua
├ UPDATE.lua
├ main.lua
├ 
└─
