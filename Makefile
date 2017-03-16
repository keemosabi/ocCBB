all: siconsensus

siconsensus:
	ocamlbuild -use-ocamlfind siconsensus.byte
