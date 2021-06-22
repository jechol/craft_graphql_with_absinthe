let
  nixpkgs = import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/19.03.tar.gz";
    sha256 = "sha256:0q2m2qhyga9yq29yz90ywgjbn9hdahs7i8wwlq7b55rdbyiwa5dy";
  }) { };
in nixpkgs.mkShell {
  buildInputs = [
    nixpkgs.darwin.apple_sdk.frameworks.CoreServices
    nixpkgs.darwin.apple_sdk.frameworks.Foundation

    nixpkgs.erlangR20
    nixpkgs.elixir_1_5
  ];
}
