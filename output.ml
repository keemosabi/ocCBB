open Soup;;

let toFile (s : string) : unit =
  let oc = open_out "testHTML.html" in
  output_string oc s;;

let printNodes (ns : 'a nodes) : unit =

