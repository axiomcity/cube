# 🧊 Cube le jeu 

Bonjour à tous,

Bienvenue dans le nouveau jeu que je viens de coder.

## Aperçu du Jeu

L'histoire se déroule dans une prairie. Vous incarnez un jeune cube dont le rêve est de toucher le soleil. **Parviendra-t-il à réaliser son rêve ?**

### Objectif du Jeu

- **Faire monter le score.**

## 🧩 Projet Cube

| Description | Statut | Fichier / Lien |
| :--- | :--- | :--- |
| **Language** | ✅ | [LUA + LOVE2D](https://love2d.org/) |
| **technologie utilisée** | ✅ | [GRAVITE](https://github.com/axiomcity/cube) |
| **Jouer en ligne** | ✅ | [Sur Itch.io](https://studiomaloute.itch.io/cube-the-game) |

---

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

```md
game.zip/
├ 
├ DRAW.lua
├ UPDATE.lua
├ main.lua
├ 
└─
```
