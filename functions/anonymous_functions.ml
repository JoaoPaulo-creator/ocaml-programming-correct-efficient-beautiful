(* Definindo a funcao anonima *)
(* uma function que recebe inteiro e retorna inteiro *)
(* 
eh interessante criar funcoes anonimas com a sintaxe abaixo, mas eh uma de ter para quando ocaml for aplica-las
assim a linguagem faz o parse corretamente
*)
(fun x -> x + 1)



(* Aplicando/chamando a funcao*)

(* O lado esquerdo, referente a funcao, eh parseada como uma funcao, e o lado direito, o argumento passado a funcao
  eh justamente parseada como um argumento
*)
(fun x -> x + 1) 3110;;

(* pipe operator funcaiona tambem *)
3110 |> (fun x -> x + 1);; (* A sintaxe eh um pouco diferente, mas o resultado eh o mesmo *)

(* uma funcao com mais de um argumento *)
(fun x y -> (x +. y) /. 2.)  3110. 2110.;;

(* Recaptulando: lado esquerdo eh a funcao com argumentos e um body, do lado direito os valores a serem passado como argumento dessa funcao *)


(*
Importante:
  - A funcao anonima nao precisa de computacao extra
  - O evaluate apenas vai ocorrer quando a funcao for aplicada/chamada
  - Funcoes podem receber outras funcoes como argumento
  - Funcoes conseguem retornar outras funcoes  

*)
