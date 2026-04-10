class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tmux-ghostty"
  url "https://github.com/Woo-kk/tmux-ghostty/releases/download/v0.1.7-terminal-targeting.2/tmux-ghostty_v0.1.7-terminal-targeting.2_darwin_universal.tar.gz"
  sha256 "086ed6fd2dffa9706872074ce70c6c01edf0821b3d4bcfdfffd0b37147444e2b"
  version "0.1.7-terminal-targeting.2"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.7-terminal-targeting.2", shell_output("#{bin}/tmux-ghostty version")
  end
end
