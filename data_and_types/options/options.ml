let extract o =
  match o with
  | Some i -> string_of_int i
  | None -> "";;


(* Criando uma funcao que retorna Some lenght de uma lista ou None *)

let rec list_max lst ('a : list) : 'a option = 
  match lst with
  | [] -> None
  | head :: tail -> Some (list_max h (list_max t)) (* Esse retorno nao sera possivel, pois head eh tipo 'a enquanto que some eh 'a optional. Pra funcionar sem problemas, devera ser escrito da seguinte forma: *) 

let rec list_max (lst : 'a  list) : 'a option = 
  match lst with
  | [] -> None
  | head :: tail -> begin
    match list_max tail with
      | None -> Some head
      | Some m -> Some (max head  m)
    end
    (* max eh uma palavra reservada do Ocaml. Nesse caso, o max recebe dois argumentos, sendo head e tail (nesse cenario obviamente). Entao eh calculado o maximo do head e o maximo do tail
  Begin e End sao outroas duas palavras reservadas de ocaml, e representam o abre e fecha parenteses.
*)

(* retorno *)
[1;2;3] |> list_max;;
- : int option = Some 3
(* Optional indica que a funcao podera retornar algo como pode retornar nada *)
