class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tmux-ghostty"
  url "https://github.com/Woo-kk/tmux-ghostty/releases/download/v0.1.6/tmux-ghostty_v0.1.6_darwin_universal.tar.gz"
  sha256 "43b123e436936f019fcba4c173ea09d0736ea613dcb91e7dbc2a77dd1e224f7d"
  version "0.1.6"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.6", shell_output("#{bin}/tmux-ghostty version")
  end
end
