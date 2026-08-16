# Generated surface — written by the wind publish pipeline from tag v0.3.7.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.3.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.7/wind-darwin-arm64"
      sha256 "1c3b5382d001ae902b95dbee033df3637eee7cf4188b1f6f5112df886276a51d"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.7/wind-darwin-x64"
      sha256 "f4df1413cf757f51549af22bd0f1bdfba38a77cea5762ef55301cb2d4a3623bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.7/wind-linux-x64"
      sha256 "adf61aac7ac3626c43e464aedb21d823f6b1b712af620a56b2cc5297af50ecd1"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
