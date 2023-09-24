with import <nixpkgs> { };
mkShell {
  # name = "";
  buildInputs = [ nodejs-slim nodePackages.pnpm ];
}
