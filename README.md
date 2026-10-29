ValidarRegistro.psc

+------------+---------+--------------------------+
| Edad >= 14 | Acepta  | Resultado                |
+------------+---------+--------------------------+
|     V      |    V    | Registro exitoso         |
|     V      |    F    | No puedes registrarte    |
|     F      |    V    | No puedes registrarte    |
|     F      |    F    | No puedes registrarte    |
+------------+---------+--------------------------+

14 S: Registro exitoso.
13 S: No puedes registrarte.
30 n: No puedes registrarte.
14 s: Registro exitoso.

ValidarEdad.psc

-1: Edad inválida.
0: Edad válida.
120: Edad válida.
121: Edad inválida.

Parqueadero.psc

Probaría los valores de minutos -1, 0, 15 y 16.

+------+--------------+-------------+------------+-----------------------------------+
| Regla| Tipo         | Minutos     | Factura    | Resultado                         |
+------+--------------+-------------+------------+-----------------------------------+
| R1   | Cualquiera   | Menos de 0  | Cualquiera | Error: minutos negativos          |
| R2   | Ni 1 ni 2    | 0 o más     | Cualquiera | Error: tipo no válido             |
| R3   | Carro o moto | De 0 a 15   | Cualquiera | Gratis                            |
| R4   | Carro o moto | Más de 15   | No         | Horas * Tarifa, máximo $30.000    |
| R5   | Carro o moto | Más de 15   | Sí         | Lo mismo que R4, dividido entre 2 |
+------+--------------+-------------+------------+-----------------------------------+

Casos borde.

+---+--------+-----+-------+----+---------------------+-------+
| # | Tipo   | Min | Fact  | H  | Esperado            | Prueba|
+---+--------+-----+-------+----+---------------------+-------+
| 1 | Carro  | 15  | No    | -  | 0                   | Ok    |
| 2 | Carro  | 16  | No    | 1  | 4000                | Ok    |
| 3 | Carro  | 60  | No    | 1  | 4000                | Ok    |
| 4 | Carro  | 61  | No    | 2  | 8000                | Ok    |
| 5 | Moto   | 61  | Si    | 2  | 2000                | Ok    |
| 6 | Carro  | 600 | No    | 10 | 30000 (tope)        | Ok    |
| 7 | Carro  | 600 | Si    | 10 | 15000               | Ok    |
| 8 | 3      | 30  | No    | -  | Tipo no valido      | Ok    |
| 9 | Carro  | -5  | No    | -  | Minutos negativos   | Ok    |
+---+--------+-----+-------+----+---------------------+-------+

Semaforo.psc

+---+----------+----------------------+----------------------+----------------------+
| # | Unidades | Camino               | Esperado             | Obtenido             |
+---+----------+----------------------+----------------------+----------------------+
| 1 |    -1    | Negativo             | Error: Valor negativo| Error: Valor negativo|
| 2 |     0    | Cero                 | Rojo: Agotado        | Rojo: Agotado        |
| 3 |     3    | Entre 1 y 10         | Amarillo: Pedir      | Amarillo: Pedir      |
| 4 |     7    | Entre 1 y 10         | Amarillo: Pedir      | Amarillo: Pedir      |
| 5 |    10    | Límite amarillo      | Amarillo: Pedir      | Amarillo: Pedir      |
| 6 |    11    | Primer valor verde   | Verde: Todo bien     | Verde: Todo bien     |
| 7 |    20    | Mayor a 10           | Verde: Todo bien     | Verde: Todo bien     |
+---+----------+----------------------+----------------------+----------------------+

+------------+----------+---------------+---------------+----------------------+------------------+
| PASO       | unidades | unidades < 0  | unidades = 0  | unidades > 0 y <= 10 | Salida           |
+------------+----------+---------------+---------------+----------------------+------------------+
| Lee datos  |    7     |               |               |                      |                  |
| Primer Si  |    7     | Falso         |               |                      |                  |
| Segundo Si |    7     | Falso         | Falso         |                      |                  |
| Tercer Si  |    7     | Falso         | Falso         | Verdadero            |                  |
| Escribe    |    7     | Falso         | Falso         | Verdadero            | Amarillo: Pedir. |
+------------+----------+---------------+---------------+----------------------+------------------+

Bisiesto.psc

+---+------+--------------------------------------+-----------------------------+-----------------------------+
| # | año  | Camino que prueba                    | Esperado                    | Obtenido                    |
+---+------+--------------------------------------+-----------------------------+-----------------------------+
| 1 | 2023 | No divisible entre 4                 | 2023 no es año bisiesto     | 2023 no es año bisiesto     |
| 2 | 2024 | Divisible entre 4 y no entre 100     | 2024 es año bisiesto        | 2024 es año bisiesto        |
| 3 | 1900 | Divisible entre 100 pero no entre 400| 1900 no es año bisiesto     | 1900 no es año bisiesto     |
| 4 | 2000 | Divisible entre 400                  | 2000 es año bisiesto        | 2000 es año bisiesto        |
| 5 | 2100 | Divisible entre 100 pero no entre 400| 2100 no es año bisiesto     | 2100 no es año bisiesto     |
| 6 | 1996 | Divisible entre 4 y no entre 100     | 1996 es año bisiesto        | 1996 es año bisiesto        |
+---+------+--------------------------------------+-----------------------------+-----------------------------+

+----------------------+------+---------------------+------------------+-------------------+-------------------+-----------------------------+
| PASO                 | año  | año mod 4 = 0       | año mod 100 <> 0 | (mod 4 y mod 100) | año mod 400 = 0   | Salida                      |
+----------------------+------|---------------------|------------------|-------------------|-------------------|-----------------------------+
| Lee datos            | 1900 |                     |                  |                   |                   |                             |
| Evalúa mod 4         | 1900 | Verdadero (resto 0) |                  |                   |                   |                             |
| Evalúa mod 100       | 1900 | Verdadero           | Falso (resto 0)  |                   |                   |                             |
| Evalúa el paréntesis | 1900 | Verdadero           | Falso            | Falso             |                   |                             |
| Evalúa mod 400       | 1900 | Verdadero           | Falso            | Falso             | Falso (resto 300) |                             |
| Escribe (SiNo)       | 1900 | Verdadero           | Falso            | Falso             | Falso             | 1900 no es año bisiesto.    |
+----------------------+------|---------------------|------------------|-------------------|-------------------|-----------------------------+

+----------------------+------+---------------+------------------+-------------------+-----------------+--------------------------+
| PASO                 | año  | año mod 4 = 0 | año mod 100 <> 0 | (mod 4 y mod 100) | año mod 400 = 0 | Salida                   |
+----------------------+------+---------------+------------------+-------------------+-----------------+--------------------------+
| Lee datos            | 2000 |               |                  |                   |                 |                          |
| Evalúa el paréntesis | 2000 | Verdadero     | Falso            | Falso             |                 |                          |
| Evalúa mod 400       | 2000 | Verdadero     | Falso            | Falso             | Verdadero       |                          |
| Escribe (Si)         | 2000 | Verdadero     | Falso            | Falso             | Verdadero       | 2000 es un año bisiesto. |
+----------------------+------+---------------+------------------+-------------------+-----------------+--------------------------+