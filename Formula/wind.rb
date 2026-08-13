# Generated surface — written by the wind publish pipeline from tag v0.3.6.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.3.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.6/wind-darwin-arm64"
      sha256 "120d78d370211fe495bca03f1cb5f5cd73f7bc896c1550024669019798779889"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.6/wind-darwin-x64"
      sha256 "b96ba65ed810ccbf25f0d1d40b68f8cdc37e1ac027a37df893b41f480d5cac1b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.6/wind-linux-x64"
      sha256 "4130629b20cc7be09caf1616cd55404457caeeca15762bf117a859a024fa729b"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
