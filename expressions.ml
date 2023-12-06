3110 (* eh um int *)
3110 + 2000 (* eh um int *)
3110 +. 213432 (* retorna um erro, pois eh uma expressao de soma entre floats, mas nao ha nenhum float
   pra ser possivel fazer uma soma dessas, sera necessario converter os numeros para float, nesse caso *)
3110. +. float_of_int 213432 (* retorna float *)
3110. +. 213432.;; (* retorna float *)
3110 > 2 (* retorna true, bool *)
3110 < 2 (* retorna false, bool *)
3110 (* eh um int *)

(*
O mesmo vai valer para subtracies, multiplicações e divisões   

*)