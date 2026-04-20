class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tmux-ghostty"
  url "https://github.com/Woo-kk/tmux-ghostty/releases/download/v0.1.9/tmux-ghostty_v0.1.9_darwin_universal.tar.gz"
  sha256 "13a3b91c21d4447543f012d55f52fa887daa8ff81daaa6000e70403b34093184"
  version "0.1.9"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.9", shell_output("#{bin}/tmux-ghostty version")
  end
end
