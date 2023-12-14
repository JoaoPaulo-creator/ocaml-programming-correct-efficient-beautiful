type intlist = 
  | Nil
  | Cons of int * intlist (* int vai ser a head da lista, e int_list a tail dessa lista *)



let rec length_intlist = function
  | Nil -> 0
  | Cons (_, t) -> 1 + length_intlist t


type stringlist = 
  | Nil
  | Cons of string * stringlist (* int vai ser a head da lista, e int_list a tail dessa lista *)


let rec length_stringlist = function
  | Nil -> 0
  | Cons (_, t) -> 1 + length_stringlist t


(* Uma variant parametrizada:

  Esse tipo de variant vai ser o primeiro contato com abstracao em ocaml.
  Ela vai ser to tipo 'a (alfa), e assim vai ser possivel ser reaproveita-la
  e evitar repeticoes desnecessarias
*)

type 'a mylist =
  | Nil
  | Cons of 'a * 'a mylist

let rec length = function
  | Nil -> 0
  | Cons (_, t) -> 1 + length t


  (* Um jeito mais idiomatico em ocaml para escrever o codigo acima, seria dessa forma abaixo: *)  
type 'a mylist =
  | []
  | (::) of 'a * 'a mylist

let rec length = function
  | [] -> 0
  | _ :: t -> 1 + length t
(* O que esta escrito acima eh basicamente como a implementacao da lib nativa de Ocaml foi feita *)



