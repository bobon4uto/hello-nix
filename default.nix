{
stdenv

}:

stdenv.mkDerivation {
  pname = "hello-world2";
  version = "2.0";

  src = ./. ;
 
  nativeBuildInputs = [
		stdenv.cc 
	];
#  buildInputs = [
#	  gnumake
#  ];

  buildInputs = [];

  buildPhase = ''
    gcc $src/hello.c -o hello2
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv hello2 $out/bin/
  '';



	meta = {
    #homepage = "https://";
    description = "hello2";
    longDescription = ''
			hello2
    '';
    #license = lib.licenses.mit;
    #platforms = lib.platforms.all;
    mainProgram = "hello2";
  };
}

