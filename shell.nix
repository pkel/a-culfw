{ pkgs ? import <nixpkgs> {} }:

let arm = pkgs.gcc-arm-embedded-6; in

pkgs.mkShell {
  buildInputs = [
    arm
    pkgs.bossa
    pkgs.minicom

    # keep this line if you use bash
    pkgs.bashInteractive
  ];

  shellHook = ''
    export ARMBASE=${arm}
  '';
}
