# hello-nix
testing nix packaaging capabilities  
create file `mypackages.nix` or smthng (replace all appearences of bobon4uto with your name and hello-nix with your package) 
```nix
pkgs:

let
hello-nix = import (pkgs.fetchFromGitHub {
      owner = "bobon4uto";
      repo = "hello-nix";
      rev = "main"; # specific commit hash or branch
			sha256 = "awuQjXPE6Jr2xZIhPqpaFxRZj4PvyJcXXNrL0/JypRY=";
    }){ inherit pkgs; };
hello-nix-latest = import (builtins.fetchGit {
			url = "https://github.com/bobon4uto/hello-nix.git";
			ref = "refs/heads/main";
			allRefs=true;
    }){ inherit pkgs; };
in
  [
    hello-nix-latest
  ]

```

Do this in configuration.nix (replace my name vith yours obviously  
this assumes you use something like packages.nix, but since mypackages eturns a list you can use it anywhere
```nix
  users.users.vova = {
  # your definitions ...
    packages = (import /home/vova/.config/packages.nix pkgs) ++ (import /home/vova/.config/mypackages.nix pkgs);
  };
```
home-manager would be smarter i think, but I havent figured out how to make it work lol
