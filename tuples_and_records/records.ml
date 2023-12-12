type student = {
  name: string;
  graduation_year: int;
}

let joao = {
  name = "Joao";
  graduation_year = 2016;
}

(* acessando a propriedade *)
(* joao.name;; *)

(* records precisam ser definidas antes de serem utilizadas, entao neste caso, para que funcione direito *)

{joao with name = "Estudante Daora Mesmo"};;
(* A linha acima cria uma copia do record joao, com a propriedade name alterada para "Estudante Daora Mesmo", porem a record joao continua com os mesmos valores, pois eh imutavel * )
