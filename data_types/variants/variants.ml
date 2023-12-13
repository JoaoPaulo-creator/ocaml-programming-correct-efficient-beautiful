type primary_color  = Red | Green | Blue

let r = Red
type point = float * float

type shape = 
| Circle of {center: point; radius: float}
| Rectangle of {lower_left: point; upper_right: point}
| Point of point

let c1 = Circle {center = (0., 0.); radius = 1.}
let r1 = Rectangle {lower_left = (-1., -1.); upper_right = (1., 1.)}
let p1 = Point (31., 10.)


(* pattern matchin de variants *)
let avg a b = 
    (a +. b) /. 2.


let center s = 
  match s with
  | Circle {center; radius} -> center
  | Rectangle {lower_left; upper_right} ->
        (* pattern matching using let *)
        let (x_ll, y_ll) = lower_left in (* esse lower_left eh o primeiro argumento ali do Rectangle *)
        let (x_ur, y_ur) = upper_right in (* esse upper_right eh o segundo argumento ali do Rectangle *)
        (avg x_ll x_ur, avg y_ll y_ur)
  | Point p -> p
  (* Point _ aqui poderia dar ruim, pois os dados de Point seriam perdidos  *)    

