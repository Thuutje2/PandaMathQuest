# 🐼 Bao Match Quest

Welkom bij **Bao Match Quest**!
Een leuk en leerzaam spel ontwikkeld met **Godot 4** en **Dialogic**!

---

## 🌐 Speel het spel online

Je kunt het spel direct spelen via GitHub Pages:  
[Panda Match Quest](https://thuutje2.github.io/PandaMathQuest/)

---

## 🗂️ Project & Development Log

- **GitHub Project board:** [Project 28](https://github.com/orgs/HU-Digital-Education-Lab/projects/28)  
- **Game Development Log:** [Week 1 – Concept & Prototype](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/wiki/Week-1-%E2%80%93-Concept-&-Prototype)
- **Productieplan:** [Productieplan](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/Production%20Plan%20%26%20Technical%20Design%20Doc.docx)

---

## 🏆 Rubric plaats van de methode

- Godot Hub & Editor, Nodes, Scenes, Input Map: In Godot zelf
- Signals: **Bao Math Quest:** [QuizManager.gd](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/scripts/QuizManager.gd)
- RayCast2D: **Bao Math Quest:** [RayCast2D](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/enemies/scripts/geelkeelmarter.gd)
- Collission: **Bao Math Quest:** [PLayer](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/characters/scenes/player.tscn) (Collisionshape zit bij meerdere ook bij de tiles zodat de speler niet van de wereld af kan vallen ect)
- Tiles: **Bao Math Quest:** [tiles](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/scenes/world.tscn) (TileMapLayer, TileMap, TileSet)
- Canvas/UI: [canvaslayer](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/scenes/world.tscn), [UI-quiz-enemy](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/scenes/enemy_quiz_ui.tscn)
- Animation: **Bao Math Quest:** Player -> AnimatedSprite2D -> Animatie -> SpriteFrames -> De verschillende animaties van de panda
- Sound: **Bao Math Quest:** Player -> JumpAudio (Gaat aan als de speler springt, jump.gd) -> staat bij state machines)
- Timer: **Bao Math Quest:** [scene](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/items/bamboo_sticks.tscn) [script](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/items/bamboo_sticks.gd)
- Camera2D: **Bao Math Quest:** Player -> Camera2D (zodat de panda gevolgt wordt)
- Visual Novels/quizzes: **Visual-Novel:** [visual-novel](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/tree/main/visual-novel)
- Krachten: gravity
- Vectoren: **Bao Math Quest:** [Vector](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/enemies/scripts/geelkeelmarter.gd) ook in **Dodge the creeps**
- Tijd: 
- Rigidbody: **Dodge the creeps** [rigidbody](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/dodge-the-creeps!/mob.tscn)
- Marker: **Dodge the creeps** [Marker2D Scene](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/dodge-the-creeps!/main.tscn) [Marker2D Script](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/dodge-the-creeps!/main.gd)
- Path: **Dodge the creeps** [Path-2d/PathFollow2D scenes](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/dodge-the-creeps!/main.tscn), [Path-2d/PathFollow2D script](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/dodge-the-creeps!/main.gd)
- State machines: **Bao Math Quest:** Player: [StateMachine](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/characters/scripts/state_machine.gd): [Idle, Walk, Jump, Fall states](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/tree/main/PandaMathQuest/characters/scripts/states)
- Singletons: **Bao Math Quest:** [Enemy quizmanager](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/scripts/QuizManager.gd) (Deze kan op meerdere enemies worden gezet zodat er geen dubbele code ontstaat)
- Static vars: **static-variables** [static-vars](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/tree/main/static-variables)
- Particles: **Bao Math Quest:** [particles](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/blob/main/PandaMathQuest/scenes/leaf_particle.tscn) Wordt op true en false gezet bij de state machines
- Inventory: **Bao Math Quest:** [inventory](https://github.com/HU-Digital-Education-Lab/2526-minegdg-egp1-Thuutje2/tree/main/PandaMathQuest/inventory)
- Web builds: Project -> export

---

## 📚 Gebruikte bronnen

### 🌐 Websites
- [Godot Engine Docs](https://docs.godotengine.org/en/stable/#)  
- [Dialogic Docs](https://docs.dialogic.pro/)  
- [Dialogic GitHub](https://github.com/dialogic-godot/dialogic)  
- [Dialogic Signals](https://docs.dialogic.pro/dialogic-signals.html?highlight=event%20signal#1-signal-event)  
- [Deploy Godot 4 naar GitHub Pages](http://angelicgarbage.com/posts/how-to-deploy-a-godot-4-game-to-github-pages/)  
- [Finite State Machine in Godot](https://www.gdquest.com/tutorial/godot/design-patterns/finite-state-machine/)  
- [Nodes & Scene Instances](https://docs.godotengine.org/en/stable/tutorials/scripting/nodes_and_scene_instances.html#accessing-nodes)  
- [State Machine Pattern in Godot](https://www.sandromaglione.com/articles/how-to-implement-state-machine-pattern-in-godot)  
- [Godot 4 State Machines](https://shaggydev.com/2023/10/08/godot-4-state-machines/)

### 🎥 YouTube Tutorials
- [Godot 4 Tutorial 1](https://youtu.be/l_yTe50tHVg)  
- [Godot 4 Tutorial 2](https://www.youtube.com/watch?v=sLSGMvXzKYU)  
- [Godot 4 Playlist](https://www.youtube.com/playlist?list=PLaFybI1jC01VcNlX0HJTaAZo3iHKdH2dD)  
- [Extra tutorial 1](https://www.youtube.com/watch?v=X3J0fSodKgs&t=212s)  
- [Extra tutorial 2](https://www.youtube.com/watch?v=B91iuXU3AZ0)  
- [Extra tutorial 3](https://www.youtube.com/watch?v=_AheThiIiyg)  
- [Extra tutorial 4](https://www.youtube.com/watch?v=6FHhBS8nPUw)  
- [Extra tutorial 5](https://www.youtube.com/watch?v=Tmy1tzhDLl4)  
- [Extra tutorial 6](https://www.youtube.com/watch?v=yWIH7hHfWyU)  
- [Extra tutorial 7](https://www.youtube.com/watch?v=ExuzWQ077n4)  
- [Extra tutorial 8](https://www.youtube.com/watch?v=oqFbZoA2lnU)  
- [Extra tutorial 9](https://www.youtube.com/watch?v=bNdFXooM1MQ)  
- [Extra tutorial 10](https://www.youtube.com/watch?v=vZHzMO90IwQ)  
- [Extra tutorial 11](https://youtu.be/JqJ5duB0Xhs?si=ijOAE_SGbj1gbLbU)

---

## 🚀 Technieken & Tools
- **Game Engine:** Godot 4  
- **Dialogue System:** Dialogic   
- **Hosting:** GitHub Pages
- **Sprites:** Aseprite
