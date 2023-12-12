(* *)

[];;
- : 'a list = []


[1;2;3];;
- : int list = [1; 2; 3]


[1;2;3; 4.];;
Error: This expression has type float but an expression was expected of type
         int



(* Adicionando um item a lista na primeira posicao. Isso vai ser util quando uma lista ja existir *)
1 :: [2;3];;
- : int list = [1; 2; 3]

(* adicionando a uma lista vazia*)
1 :: 2 :: 3 :: [];;
- : int list = [1; 2; 3]

(* Listas em ocaml sao imutaveis e sao single linked lists *)