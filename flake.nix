{
  description = "website dev environment";

  # Indirect ref: resolves through the machine's registry pin (~/nix
  # modules/darwin/nix.nix) so this locks the same nixpkgs rev as the system.
  inputs.nixpkgs.url = "nixpkgs";

  outputs =
    { nixpkgs, ... }:
    let
      forSystems =
        f:
        nixpkgs.lib.genAttrs [ "aarch64-darwin" "aarch64-linux" "x86_64-linux" ] (
          s: f nixpkgs.legacyPackages.${s}
        );
    in
    {
      devShells = forSystems (pkgs: {
        # Every tool a script in scripts/ or a config here actually invokes:
        #   hugo                 the site (config.toml, themes/etch)
        #   wrangler             Cloudflare Pages/D1/R2 (wrangler.toml, media-pipeline.sh)
        #   pandoc texliveSmall  make-pdf-epub.sh (pandoc → pdflatex)
        #   yt-dlp ffmpeg        media-pipeline.sh (ffprobe ships in ffmpeg)
        #   jq python3           media-pipeline.sh (stdlib-only python)
        # NOT here: whisper-cli stays global (~/nix transcribe() shell
        # function needs it outside this repo); perl comes with macOS.
        default = pkgs.mkShellNoCC {
          packages = with pkgs; [
            hugo
            wrangler
            pandoc
            texliveSmall
            yt-dlp
            ffmpeg
            jq
            python3
          ];
        };
      });
    };
}
