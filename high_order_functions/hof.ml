(* 
   Funcoes sao valores assim como qualquer valor em Ocaml.
   Significa que da para passar funcoes em volta de outros argumentos.
*)


let double x = 2 * x
let square x = x * x

let quad x = double (double x)
let fourth x = square (square x)

let twice f x = f (f x)

let quad x = twice double x
let fourth x = twice square x
