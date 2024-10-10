(* Definindo a funcao nomeada *)
let a x = x + 1;;

(* Ao chamar/aplicar essa funcao, o resultado sera 2, pois esta funcao retorna a soma de 1 + 1 *)
a 2;;


(* Observacao

nem toda definicao que possui let eh uma funcao
let a = 2;; nao eh uma funcao
let a b = b * 2;; eh uma funcao
*)

(* Tambem eh possivel escrever a funcao desta maneira *)
let inc_one = fun x -> x + 1;;
2 |> inc_one;;

(*
Importante:
  - A funcao anonima nao precisa de computacao extra
  - O evaluate apenas vai ocorrer quando a funcao for aplicada/chamada
  - Funcoes podem receber outras funcoes como argumento
  - Funcoes conseguem retornar outras funcoes  

*)
let () =
  (* let a = inc_one 2 in print_int a;; *)
  2 |> inc_one |> print_int ;;