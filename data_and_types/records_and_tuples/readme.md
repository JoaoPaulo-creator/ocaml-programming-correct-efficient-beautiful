# Decidindo se vale a pena usar uma lista, tupla ou record

## Qual o tamanho do conjunto de dados?

Se o tamanho for ilimitado (unbounded length), usa uma lista, pois listas sao unbounded

Tuplas e records sao bounded length (tem tamanho limitado)

## Agora, como definir entre um record e uma tupla

Se o tipo de acesso aos valores, for via nome, entao record, senao tupla
