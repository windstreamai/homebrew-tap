# Generated surface — written by the wind publish pipeline from tag v0.4.0.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.4.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.4.0/wind-darwin-arm64"
      sha256 "6bd960cdcf5a0cf266c33ea1b71c8658531a6ae9f717397e411b2b51dc33795d"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.4.0/wind-darwin-x64"
      sha256 "e43a72a384795b0f0696b9b7edac4f6f1f62f5b58ca6850911c84282fb850a4d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.4.0/wind-linux-x64"
      sha256 "4a0d68c168f2db0032fde80dc0b067570245146654c782890d80867fe9983095"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
