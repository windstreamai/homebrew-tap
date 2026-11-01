# Generated surface — written by the wind publish pipeline from tag v0.4.2.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.4.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.4.2/wind-darwin-arm64"
      sha256 "45f779e22a17b2a6a1650ef151f4ed2bc23b18a4068bad0db857ccdb3cb4b8e1"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.4.2/wind-darwin-x64"
      sha256 "0c02333307d3f3476b7e825d2ab33c2a81901dbe876bc178760950744ff6a50a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.4.2/wind-linux-x64"
      sha256 "12be84c2e7eba37dedc3568e93738a9d604a0e47f7377ac1039df1c102d2f5c2"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
