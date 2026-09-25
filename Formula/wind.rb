# Generated surface — written by the wind publish pipeline from tag v0.3.10.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.3.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.10/wind-darwin-arm64"
      sha256 "989671c6ab8a5a6ecf4c56aa0192790e464437be47f4fb83dc60eab73e887ed8"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.10/wind-darwin-x64"
      sha256 "440c2a3b03f47c67ece180feb2b162462f4c6016a6021025d47b110342eab44e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.10/wind-linux-x64"
      sha256 "60318811d931f44c62fd21c0b056439425295b6775ffb4983e7f1d11cede9acd"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
