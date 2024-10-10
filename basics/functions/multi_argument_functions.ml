(* Em ocaml nao existem funcoes que tenham mais de um argumento

Exemplo:
let add a b = a + b;;
Na primeira vista parece que que a funcao acima tem dois argumentos, mas na verdade ela tem um argumento, e o "segundo argumenot"
eh uma funcao.

Ou seja, na pratica a funca add eh desse jeito

let add a = (fun b -> a + b);;


Reforçando: funcoes sao valores. Podemos usar funcoes em qualquer lugar que tenha valores

- funcoes podem ter outras funcoes como argumentos
- funcoes podem retornar funcoes como resultado

*)