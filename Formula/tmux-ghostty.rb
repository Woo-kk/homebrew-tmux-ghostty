class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tmux-ghostty"
  url "https://github.com/Woo-kk/tmux-ghostty/releases/download/v0.1.2/tmux-ghostty_v0.1.2_darwin_universal.tar.gz"
  sha256 "b79581d96ca44b6c1939f9a1f1d0410366d64f61164852234a46569210fe4aa9"
  version "0.1.2"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.2", shell_output("#{bin}/tmux-ghostty version")
  end
end
