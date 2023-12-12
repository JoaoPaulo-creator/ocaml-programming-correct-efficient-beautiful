let y = 
  match 42 with
  | fooo -> fooo;;


(* matching strings *)

let z = 
  match "foo" with
  | "foo" -> 42
  | _ -> 0;;

(* Evaluating to: *)
- val z : int = 0

let a = 
  match [] with
  | [] -> "empty"
  | _ -> "not empty";;


- val a : string = "empty"

let a = 
  match [1; 2] with
  | [] -> "empty"
  | _ -> "not empty";;

  val a : string = "not empty"


let b =
  match ["Taylor"; "Swift"] with
  | [] -> "empty"
  | head :: tail -> head;; (* nessa linha, ocaml entende que x :: z representam head e tail dessa lista. Nesse caso, se tiver head ao tail, retorna head que eh Taylor *)

(* pattern matching em tuplas *)

let fst3 y =
  match y with
  | (a,b,c) -> a;;

fst3 (1,2,3);;
- : int = 1



(* pattern matching em recors *)
type student = {name: string; age: int}

let j = {name = "Joe"; age = 20};;

let name_with_year s = 
  match s with
  | {name; year} -> name ^ " '" string_of_int year;;


(* pattern matching em listas *)
let empty lst =
  match lst with 
  | [] -> true
  | _ :: _ -> false;;


let rec sum lst =
  match lst with
  | [] -> 0
  | h :: t -> h + sum t;;


let rec append l1 l2 =
  match l1 with
  | [] -> l2
  | h :: t -> h :: append t l2;;