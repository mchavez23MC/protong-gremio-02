% --- PERSONAJES(nombre, nivel, vida) ---
personaje('elara', 5, 100).
personaje('kael', 7, 150).
personaje('rin', 20, 200).
personaje('mateo', 20, 300).

% --- MISIONES(id, nombre, dificultad, xp) ---
mision(m1, 'Bosque de las sombras', 2, 50).
mision(m2, 'Paramo de los lamentos', 3, 70).
mision(m3, 'Torre arcana', 7, 200).

% --- INVENTARIOS(personaje, lista de objetos) ---
inventario('elara', [espada, escudo, pocion]).
inventario('kael', [archo, flechas]).
inventario('rin', [varita, grimorio, pocion, amuleto]).
inventario('mateo', ['Excalibur', pocion_mana]).


% --- OBJETOS REQUERIDOS POR MISION ---
requiere(m2, escudo). requiere(m2, pocion).
requiere(m3, grimorio). requiere(m3, pocion).

% --- ARMA (nombre, daño, elemento) ---
arma('Excalibur', 200, 'Luz').


tiene('mateo', arma('Excalibur', 200, 'Luz')).

nivel_para_subir(Xp, NivelActual):- Xp is NivelActual * 30.

vida_restante(VidaMaxima, Danio, Final):- Final is VidaMaxima - Danio.

es_igual(Num1, Num2):- Num1 =:= Num2.


xp_acumulado(0,0).

xp_acumulado(N, Total):- 
    N > 0,
    N1 is N - 1,
    xp_acumulado(N1, Prev),
    Total is Prev + (30 * N).

danio_acumulado(0,0).
danio_acumulado(N, Total):-
    N > 0,
    N1 is N - 1,
    danio_acumulado(N1, ResultadoAnterior),
    Total is ResultadoAnterior + (N * 10).


mismo_nivel(P1, P2):- 
    personaje(P1, Nivel, _),
    personaje(P2, Nivel, _),
    P1 \== P2.

es_balanceado(P):- 
    personaje(P, _, Vida),
    Vida =:= 100.


mas_fuerte(P1, P2):-
    personaje(P1, Nivel, _),
    personaje(P2, Nivel2, _),
    Nivel > Nivel2.

mismo_objeto(P1, P2, Obj):-
    inventario(P1, L1), inventario(P2, L2),
    member(Obj, L1), member(Obj, L2).

