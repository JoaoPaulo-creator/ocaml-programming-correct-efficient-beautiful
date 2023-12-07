(* 
para indicar que a funcao pode ser usada de maneira recursiva,
eh necessario excrever de forma explicita, utilizando da keyword rec 
*)

let rec fact n = 
  match n with
  | 0 -> 1
  | _ -> n * fact (n - 1);; (* 
     Necessario ter o n - 1, pois no calculo de fatoriais, o numero multiplica seu valor atual por ele mesmo menos 1
     Ex.: 5! = 5 * 4 * 3 * 2 * 1
     Nesse caso, como n vai valer 5, sempre que fizer o looping, o continua valendo 5, dessa forma nao seria possivel
     calcular seu fatorial

     n = 5 // valor atual
     n * n - 1
     ou seja, em um dado momento, o n vai valer 4, entao 4 * 4 - 1 e assim por diante
     *)

let () = 
  let r = fact 10
  in print_int r;;
