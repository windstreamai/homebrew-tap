# Generated surface — written by the wind publish pipeline from tag v0.3.9.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.3.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.9/wind-darwin-arm64"
      sha256 "e66ac6b20b28d0bb2664edc2bdef06ec9187a22a34fefe117f4cf0f4bb02f7fb"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.9/wind-darwin-x64"
      sha256 "ea538d83ca2b087e7f36d05d1323f52fe63afba265e37e2e8024c32a3fef7eae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.9/wind-linux-x64"
      sha256 "74ee7401ec7563bee94efb6ce4f12270428bacf5393d5163c295146e0e6218e1"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
