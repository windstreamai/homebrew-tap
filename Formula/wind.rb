# Generated surface — the publish pipeline owns this file from v0.3.1 on.
# This v0.3.0 formula was steward-authored as the pipeline's reference template
# (manual publish rehearsal, 2026-07-17). A hand edit after v0.3.1 is drift.
class Wind < Formula
  desc "Wind Stream CLI — brackets a piece of work and connects it to Wind Stream"
  homepage "https://github.com/windstreamai/wind-cli"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.0/wind-darwin-arm64"
      sha256 "b5e578e0ee6d9e231ffd0a63e09869364dbfb61a4b76fc96b6e1b5d4ea4f0276"
    end
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.0/wind-darwin-x64"
      sha256 "bda479dd770f9db5aa97afbfaa3876d693645e077db0ee3efaa71e7aa8863342"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/windstreamai/wind-cli/releases/download/v0.3.0/wind-linux-x64"
      sha256 "01690bda49a7891f4ad2cc65641f399bb35aeb45fcc5538d544f32bdc4d1cec3"
    end
  end

  def install
    bin.install Dir["wind-*"].first => "wind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wind --version")
  end
end
