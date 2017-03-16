

let toFile (s : string) : unit =
  let oc = open_out "testHTML.html" in
  output_string oc s;;

