class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tmux-ghostty"
  url "https://github.com/Woo-kk/tmux-ghostty/releases/download/v0.1.4/tmux-ghostty_v0.1.4_darwin_universal.tar.gz"
  sha256 "b9ad6e61b426f746cce9e4094e7918c0349856a306cdc0a85e6120dc0aeb6814"
  version "0.1.4"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.4", shell_output("#{bin}/tmux-ghostty version")
  end
end
