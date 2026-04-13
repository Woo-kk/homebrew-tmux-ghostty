class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tmux-ghostty"
  url "https://github.com/Woo-kk/tmux-ghostty/releases/download/v0.1.7/tmux-ghostty_v0.1.7_darwin_universal.tar.gz"
  sha256 "1b06d9450080871146a1a03fdff4a47faf90e0bf5a467d9488421b3afb76678f"
  version "0.1.7"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.7", shell_output("#{bin}/tmux-ghostty version")
  end
end
