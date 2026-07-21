# Generated surface — written by the wind publish pipeline from tag v0.3.2.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.2/wind-darwin-arm64"
      sha256 "46c1ea41b906a6b413d16bc1329d5d44c6a4740fde5db8a796643baca83570aa"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.2/wind-darwin-x64"
      sha256 "ec517aa9a7ab37c0ea54253bdbbef1d552e45291078f268f69273e7f0300b8ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.2/wind-linux-x64"
      sha256 "fc0b14218529f9ec623c2929f84839935b573479e3d5034e9324187b437a9015"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
