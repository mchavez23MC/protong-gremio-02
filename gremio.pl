% --- PERSONAJES(nombre, nivel, vida) ---
personaje("elara", 5, 100).
personaje("kael", 7, 150).
personaje("rin", 10, 200).
personaje("mateo", 20, 300).

% --- MISIONES(id, nombre, dificultad, xp) ---
mision(m1, "Bosque de las sombras", 2, 50).
mision(m2, "Paramo de los lamentos", 3, 70).
mision(m3, "Torre arcana", 7, 200).

% --- INVENTARIOS(personaje, lista de objetos) ---
inventario("elara", [espada, escudo, pocion]).
inventario("kael", [archo, flechas]).
inventario("rin", [varita, grimorio, pocion, amuleto]).
inventario("mateo", ["Excalibur", pocion_mana]).


% --- OBJETOS REQUERIDOS POR MISION ---
requiere(m2, escudo). requiere(m2, pocion).
requiere(m3, grimorio). requiere(m3, pocion).

% --- ARMA (nombre, daño, elemento) ---
arma("Excalibur", 200, "Luz").


tiene("mateo", arma("Excalibur", 200, "Luz")).