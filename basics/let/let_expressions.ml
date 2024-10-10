(* Usando let como expresion   *)
let a = 0 in a;;

(* O que faz esse let ser uma expressao e nao uma definiticao
eh in e o que vem em seguida*)
let b = 2 in b * 2;;


let c = 3 in let d = 4 in c + d;; (* retorn 7 *)


(* No cenario abaixo, a ultima expressao sera retornada, como se a primeira expressao fosse sobrescrita*)
let e = 3 in let d = 6 in e;;


