class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tmux-ghostty"
  url "https://github.com/Woo-kk/tmux-ghostty/releases/download/v0.1.7-terminal-targeting.1/tmux-ghostty_v0.1.7-terminal-targeting.1_darwin_universal.tar.gz"
  sha256 "6f6108a4b8678653855a227162d2de9d47e7cfdb713950c08d5e7e4603383d89"
  version "0.1.7-terminal-targeting.1"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.7-terminal-targeting.1", shell_output("#{bin}/tmux-ghostty version")
  end
end
