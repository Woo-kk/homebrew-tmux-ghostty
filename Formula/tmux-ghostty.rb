class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tmux-ghostty"
  url "https://github.com/Woo-kk/tmux-ghostty/releases/download/v0.1.8/tmux-ghostty_v0.1.8_darwin_universal.tar.gz"
  sha256 "408e658a43c66a75f1a35ce8e97caba8106056261fbe899881f3178d68ecd41d"
  version "0.1.8"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.8", shell_output("#{bin}/tmux-ghostty version")
  end
end
