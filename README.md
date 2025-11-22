# Mon Petit Jeu en Lua

Bonjour à tous,

Je suis ravi de vous présenter un petit jeu qui me tient à cœur. J’espère sincèrement que cela vous plaira ! Pour le créer, j'ai appris le langage **Lua**, car j'ai décidé de me lancer dans le développement de jeux vidéo.

## Aperçu du Jeu

L'histoire se déroule dans une prairie. Vous incarnez un jeune cube dont le rêve est de toucher le soleil. **Parviendra-t-il à réaliser son rêve ?**

### Objectif du Jeu

- **Faire monter le score.**

## Exemples de Code

Voici quelques exemples de code pour vous donner une idée de la logique de jeu :

### Initialisation du Cube

```lua
local cube = {
    x = 0,
    y = 0,
    score = 0
}

function cube:move(dx, dy)
    self.x = self.x + dx
    self.y = self.y + dy
end
