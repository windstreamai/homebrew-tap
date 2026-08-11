# Generated surface — written by the wind publish pipeline from tag v0.3.5.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.3.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.5/wind-darwin-arm64"
      sha256 "5464924f03b3428bdc60f51e7420eadd51acc3a28e1c3fa961aac63090f367d3"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.5/wind-darwin-x64"
      sha256 "57e1b0c673279c920288d5fc47473b781c64dc6b8b1f9fbfc2935452378c3d48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.5/wind-linux-x64"
      sha256 "7a71096fd3b5fce49b0425de06d06e65e7c03688410653a2bc8f1a21fc398944"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
