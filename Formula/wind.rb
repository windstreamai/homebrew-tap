# Generated surface — written by the wind publish pipeline from tag v0.3.4.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.3.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.4/wind-darwin-arm64"
      sha256 "777fb50170674693cf0d1b0b6dd0174a49ec1a9961fb24093273c8580eb419a8"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.4/wind-darwin-x64"
      sha256 "488b5503b4f657ee5af1035f67111b5cb34e80f628f8d20d1bc04d922b43f9cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.4/wind-linux-x64"
      sha256 "df02df0d254ac0e78801dd151f586d6b041791c28620990263b94fa7e49f523e"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
