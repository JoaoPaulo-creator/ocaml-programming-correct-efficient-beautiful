let rec bad_sum lst = 
  match lst with
  | [] -> 0
  | _ -> List.hd lst + bad_sum (List.tl lst)