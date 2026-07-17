# Generated surface — written by the wind publish pipeline from tag v0.3.1.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.1/wind-darwin-arm64"
      sha256 "2f961ff2b390ed2d9f9ec75c8fcf48e730df44b3eebb10bfcc61b4181c6cba84"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.1/wind-darwin-x64"
      sha256 "4dc3d35f9621cbea3e0041e7d761f866043e8bdd91c39191e8df05ed5069ac56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.1/wind-linux-x64"
      sha256 "75e7b1eb6b8642c8e14010e420a7d516072bfeb2f4f2034b0daf1f4205b23669"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
