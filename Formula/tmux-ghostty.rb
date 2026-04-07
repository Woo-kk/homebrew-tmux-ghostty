class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tmux-ghostty"
  url "https://github.com/Woo-kk/tmux-ghostty/releases/download/v0.1.7-experiment.1/tmux-ghostty_v0.1.7-experiment.1_darwin_universal.tar.gz"
  sha256 "2d2ec8a83755eb541dce2b65ca53fd339e210ca3b595d38b9644f8b4048b9f37"
  version "0.1.7-experiment.1"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.7-experiment.1", shell_output("#{bin}/tmux-ghostty version")
  end
end
