# Generated surface — written by the wind publish pipeline from tag v0.4.1.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.4.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.4.1/wind-darwin-arm64"
      sha256 "b74020e086b2f81e3187b65a0c0aa56be80892d368e7aca2eae5266c3fc02f21"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.4.1/wind-darwin-x64"
      sha256 "aa0de53356168242a9357f5e854eab19112a5f7ab9f9d25d40ff4bf344a4dda4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.4.1/wind-linux-x64"
      sha256 "ebed98fd0c18abdf082b35665978da7206e4b429c7d4a07143206a4066cd62a6"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
