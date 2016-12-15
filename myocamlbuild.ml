open Ocamlbuild_plugin

(* used in tests *)
let _ =
  Unix.putenv "PPX_GETENV_CHECK" "42"

let () = dispatch (fun phase ->
  match phase with
  | After_rules ->
    flag ["ocaml"; "compile"; "ppx_byte"] &
      S[A"-ppx"; A"src/ppx_hardcaml.byte"];
    flag ["ocaml"; "compile"; "ppx_native"] &
      S[A"-ppx"; A"src/ppx_hardcaml.native"]
  | _ -> ())
