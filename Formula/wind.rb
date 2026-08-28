# Generated surface — written by the wind publish pipeline from tag v0.3.8.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.3.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.8/wind-darwin-arm64"
      sha256 "eb3907eb7139cf6ff764a749f2bf77bf823872abca56ced26e3e9455f5847490"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.8/wind-darwin-x64"
      sha256 "dea8800e422196ce006b511882f4bb735fc759abe23d7844b722ac76bd28b968"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.8/wind-linux-x64"
      sha256 "e96592f38f7cff25eae115b3949ec92c88ec2596ae120e036affe479f2b27dc6"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
