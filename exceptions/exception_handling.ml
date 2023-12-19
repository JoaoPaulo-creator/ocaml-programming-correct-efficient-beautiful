let safe_div x y =
  (* semelhante ao pattern matching, mas nesse caso para lidar uma exception *)
  try x / y with
  | Division_by_zero -> 0
