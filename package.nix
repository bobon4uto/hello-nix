{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "hello-world";
  version = "1.0";

  src = ./. ;
 
  buildInputs = [];

  buildPhase = ''
    gcc $src/hello.c -o hello
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv hello $out/bin/
  '';



	meta = {
    #homepage = "https://";
    description = "hello";
    longDescription = ''
			hello
    '';
    #license = lib.licenses.mit;
    #platforms = lib.platforms.all;
    mainProgram = "hello";
  };
}

