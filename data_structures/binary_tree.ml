type 'a tree =
  | Leaf
  | Node of 'a * 'a tree * 'a tree 



(* A comparacao de uma arvore e uma lista. Sao muito semelhantes.*)
type 'a tree =                        type 'a mylist =
  | Leaf                                | Nil
  | Node of 'a * 'a tree * 'a tree      | Cons of 'a * 'a mylist


let rec size t =
  match t with
  | Leaf -> 0
  | Node (_, l, r) -> 1 + size l + size r


let rec sum t = 
  match t with
  | Lead -> 0
  | Node (v, l, r) -> v + sum l + r
