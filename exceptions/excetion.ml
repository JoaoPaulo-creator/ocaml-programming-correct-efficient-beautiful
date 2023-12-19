(* Exception in ocaml sao variants. As execeptions podem carregar um valor ou apenas ter um nome *)

type exn -> (* por padrao as exceptions sao do tipo exn. Exn eh uma variante nativa do Ocaml e eh extensivel, ou seja, as exception extendem exn. *)


(* criando uma exception *)
exception MyException of string;;

(* Lacando uma exception *)
raise (MyException "Deu ruim doidao");;
Exception: MyException "Deu ruim doidao".


raise : exn -> 'a
