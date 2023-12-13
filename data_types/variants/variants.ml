type primary_color  = Red | Green | Blue

let r = Red
type point = float * float

type shape = 
| Circle of {center: point; radius: float}
| Rectangle of {lower_left: point; upper_right: point}

let c1 = Circle {center = (0., 0.); radius = 1.}
let r1 = Rectangle {lower_left = (-1., -1.); upper_right = (1., 1.)}

(* pattern matchin de variants *)
let avg a b = 
    (a +. b) /. 2.


let center s = 
  match s with
  | Circle {center; radius} -> center
  | Rectangle {lower_left; upper_right} ->
        (* patter matching using let *)
        let (x_ll, y_ll) = lower_left in
        let (x_ur, y_ur) = upper_right in
        (avg x_ll x_ur, avg y_ll y_ur)
