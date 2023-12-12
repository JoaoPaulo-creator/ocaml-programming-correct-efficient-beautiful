(* Application 
  Recebe uma funcao com um numero x argumento, e o resultado retornado segue na ordem dos argumentos inputados
*)

let (@@) f x = f x;;

(* Reverse applicationa

  Recebe uma funcao com um numero x argumento, e inverte a ordem dos argumentos, conforme no exemplo abaixo, onde
  a funcao recebe os argumetnos x f e retorna f x

  Eh basicamente o pipe operator no Elixir
*)
let (|>) x f = f x;; 


let square x = x * x;;
5 |> succ |> square |> square |> succ;;
- : int = 1297

(* Compose *)
