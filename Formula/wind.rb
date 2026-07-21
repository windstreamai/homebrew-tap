# Generated surface — written by the wind publish pipeline from tag v0.3.3.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.3.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.3/wind-darwin-arm64"
      sha256 "33cecf08325c32eb74d95c0026a14aacaf5d1d0bae2a2cd4ae9e789036355d43"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.3/wind-darwin-x64"
      sha256 "bab0b78137220e02558daaf79c38bb6993b58eb313b891a389293279f2e2e2d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.3/wind-linux-x64"
      sha256 "eb7dd2c00af0c67cb7ddea0b6758f2411f699b59e259608f674b83d999f9a003"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
