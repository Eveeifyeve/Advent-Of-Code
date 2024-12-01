# https://developers.google.com/idx/guides/devnix-reference
{ pkgs, ... }: {
  channel = "unstable"; # or "unstable"
  packages = [
    # Nix
    pkgs.nix
    pkgs.direnv
    pkgs.nix-direnv

    # Rust
    pkgs.rust
    pkgs.rustc
    pkgs.rust-analyzer
    pkgs.cargo
    pkgs.clippy
    pkgs.rustfmt
  ];
  idx = {
    extensions = [
      "mkhl.direnv"
      "rust-lang.rust-analyzer"
      "lyonsyonii.rust-syntax"
      "tamasfe.even-better-toml"
      "swellaby.vscode-rust-test-adapter"
    ];
  };
}