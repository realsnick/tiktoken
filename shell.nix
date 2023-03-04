{ pkgs ? import <nixpkgs> { } }:
with pkgs;
pkgs.mkShell {
  buildInputs = [
    rustup
    python3
  ];

  shellHook = ''
    export OPENSSL_LIB_DIR=${pkgs.openssl_1_1}/lib
    rustup override set nightly
  '';
}
