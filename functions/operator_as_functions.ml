(* Em ocaml eh possivel usar operadores como funcoes *)
(+) 2 3;;
- : int = 5

(* Eh possivel usar com todos os operadores, porem existe uma boa pratica que eh recomendada a ser usada nesses casos
  que eh colocar um espaco em branco entre o operador e os operandos, como no exemplo abaixo
*)   

( + ) 2 3;;


(* Isso se torna necessario, pois em multiplicacao, ocaml pode confundir o operador com um comentario,
  assim como este.
*)
( * ) 2 3;;
- : int = 6


(* Com o sinal de igual, eh criado uma funcao que realiza comparacoes *)
(=);;
- : 'a -> 'a -> bool = <fun>

(=) 1 2;;
- : bool = false

(=) 2 2;;
- : bool = true
