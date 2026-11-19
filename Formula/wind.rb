# Generated surface — written by the wind publish pipeline from tag v0.5.0.
# A hand edit is drift by definition; changes belong in the generator
# (scripts/generate-formula.ts in the source repo).
class Wind < Formula
  desc "CLI for bracketing work sessions and connecting them to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.5.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.5.0/wind-darwin-arm64"
      sha256 "cd56597e303c97292e2059b60e444a80b76553e7baa8cdd1ad3315163f542efb"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.5.0/wind-darwin-x64"
      sha256 "106d436e3fcc643e6b5cd0aeb119f8e57d8a4bd75bca5fd6fae544e7b5c2e844"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.5.0/wind-linux-x64"
      sha256 "0bd73aeb1a1146ed595155b0844310cb449c92db6c0a5eedcbf4356d6cd29ba8"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
