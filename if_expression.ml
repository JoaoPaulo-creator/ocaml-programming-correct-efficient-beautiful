if "batman" > "superman" then "asdalksjd" else "boo";; (* Operacao funcioa sem problemas, apesar de verificar se uma string eh maior que outra*)

(*
O fato disso ocorrer, eh que ocaml compara as strings de forma lexicografica, ou seja, ele compara os caracteres de cada string,
um a um, e verifica se o primeiro eh maior que o segundo, se for, retorna true, se nao, retorna false.   
*)

if 0 > "superman" then "asdalksjd" else "boo";;
Error: This expression has type string but an expression was expected of type
         int


(*
A expressao acima nao funciona, pois nao eh possivel comparar um inteiro com uma string, pois sao tipos diferentes. Ocaml nao permite comparar tipos diferentes.
*)