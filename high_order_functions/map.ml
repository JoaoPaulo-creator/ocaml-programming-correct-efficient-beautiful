let rec concat3110 t =
  match t with
  | [] -> []
  | h :: t -> (h ^ "3110") :: concat3110 t;;


(* Implementacao de um map, semelhante, senao igual, ao map antivo de ocmal *)

let rec map f = function
  | [] -> []
  | h :: t -> f h :: map f t;;


let stringlist_of_intlist lst = map(fun x -> string_of_int x)lst;;

stringlist_of_intlist [1;2;3;4];;
(* Output *)
- : string list = ["1"; "2"; "3"; "4"]


(* Por mais que funcao stringlist_of_intlist funcione de boa, sintaticamente falando existe uma forma melhor de se escreve-la:
*) 
let stringlist_of_intlist lst = map string_of_int lst;;
(* map itera uma lista e retorna uma nova lista, operando as expressoes programadas *)
