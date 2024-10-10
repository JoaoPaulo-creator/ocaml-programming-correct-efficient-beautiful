# Sintaxe de um variant type


Eh semelhante ao um record type, porem os construtores sao separados por pipes

### Exemplo de record type e

```ml
type student = {
  name: string;
  graduation_year: int;
}
```

## Agora um exemplo de variant type

```ml
type colours = 
    | Red
    | Blue
    | Green
```
Ocaml requer que o nome dos construtores tenham a primeira letra capitalizadam, ou seja, a primeira letra tem que ser maiuscula.
As vezes, os construtores vem acompanhado da palavra 'of', que nesse caso, vai indicar o tipo de dados que vai conter naquele construtor

Resposta dada pelo chat gpt:
<strong>"The of keyword is used in the definition of variant types to specify the data that should be associated with a particular constructor."</strong>

Exemplo encontrado em ...

"...the different tags will have arguments that describe the data available in each case. Note that variants can have multiple arguments, which are separated by *s."


```ml
type basic_color =
  | Black | Red | Green | Yellow | Blue | Magenta | Cyan | White

type weight = Regular | Bold
type color =
  | Basic of basic_color * weight (* basic colors, regular and bold *)
  | RGB   of int * int * int      (* 6x6x6 color cube *)
  | Gray  of int                  (* 24 grayscale levels *)
```

Lembrando que esse dados adicionais sao opcionais

## Construtores constantes e nao constantes

Construtores constantes sao aqueles que nao "carregam" dados, ou seja, que nao um dado atribuido/especificada. Ja os nao constantes, possuem esse tipo de dados especificado.
O argumento por nao ser constante um construtor que possui um tipo de dados definido, eh que esse o dado carregado no construtor pode mudar.
