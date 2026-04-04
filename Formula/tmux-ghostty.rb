class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tumx-ghostty"
  url "https://github.com/Woo-kk/tumx-ghostty/releases/download/v0.1.1/tmux-ghostty_v0.1.1_darwin_universal.tar.gz"
  sha256 "b7a54c300e9b363e4552b6e34dec507dcb0e013f5cc14bd7cc72e5edf67c49ba"
  version "0.1.1"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.1", shell_output("#{bin}/tmux-ghostty version")
  end
end
