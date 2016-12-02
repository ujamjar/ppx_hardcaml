#use "topfind";;
#require "js-build-tools.oasis2opam_install";;

open Oasis2opam_install;;

generate ~package:"ppx_hardcaml"
  [ oasis_lib "ppx_hardcaml"
  ; oasis_lib "ppx_hardcaml_lib"
  ; file "META" ~section:"lib"
  ; oasis_exe "ppx" ~dest:"../lib/ppx_hardcaml/ppx"
  ]
