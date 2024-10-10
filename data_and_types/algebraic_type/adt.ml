(* tipo de pokomons *)  
type ptype = TNormal | TFire | TWater

(* Efetividade *)
type peff = ENormal | ENotVery | ESuper

(* Foi colocar um letra como prefixo das variants, pois caso contratio, o compilador vai se confundir
pegando o tipo de uma variant ao inves da outra.

Eh uma forma idiotmatica de Ocaml para lidar da melhor forma em caso de construtores com mesmos nomes no mesmo arquivo

*)


(* Em Ocaml, usa-se a palavra 'of' inves de to, para indicar
que a funcao vai retornar a transformacao de um tipo para outro.

Exemplo: string_of_int, que vai retornar uma string representando aquele inteiro 


Nesse caso, mult_of_eff vai retornar a representacao de uma multiplicacao da efetividade
do pokemon
*)
let mult_of_eff m =  
  match m with
  | ENormal -> 1.
  | ENotVery -> 0.5
  | ESuper -> 2.0

let eff t1 t2 =
  match t1, t2 with
  | TFire, TFire -> ENotVery
  | TWater, TWater -> ENotVery
  | TFire, TWater -> ENotVery
  | TWater, TFire -> ESuper
  | _ -> ENormal


(* 

O codigo acima tambem pode ser escrito dessa forma:

let eff t1 t2 =
  match t1, t2 with
  | TFire, TFire | TWater, TWater | TFire, TWater -> ENotVery
  | TWater, TFire -> ESuper
  | _ -> ENormal
 *)

type pokemon = {
  name : string;
  hp : int;
  ptype : ptype
}

let charmander = {
  name = "Charmarnder";
  hp = 100;
  ptype = TFire
}


