open Soup;;
open Lwt;;
open Cohttp;;
open Cohttp_lwt_unix;;

let body =
  Client.get (Uri.of_string "https://free.sportsinsights.com/free-odds/\
              free-odds-frame.aspx?SportGroup=sg6") >>= fun (resp, body) ->
  body |> Cohttp_lwt_body.to_string;;

let get_html () =
  Lwt_main.run body

let parse_html () =
  let htmlSoup = parse (get_html()) in
  let bodySoup = htmlSoup $ "#bodyConent" in
  let gameNodes = filter (fun n -> require (attribute "groupSort" n) = "40000000")
                  (elements (children bodySoup)) in


let print_nodes () =
  Output.toFile fold

