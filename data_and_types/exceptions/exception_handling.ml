let safe_div x y =
  (* semelhante ao pattern matching, mas nesse caso para lidar uma exception 
     O primeiro padrao verifica se a divisao eh por zero, se sim, retorna 0 e assim nao mata o programa.*)
  try x / y with
  | Division_by_zero -> 0
