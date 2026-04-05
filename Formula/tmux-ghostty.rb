class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tmux-ghostty"
  url "https://github.com/Woo-kk/tmux-ghostty/releases/download/v0.1.5/tmux-ghostty_v0.1.5_darwin_universal.tar.gz"
  sha256 "2e3674c15bc33af92652e20cedd939249bbd349eb2099575f2d932708839c22e"
  version "0.1.5"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.5", shell_output("#{bin}/tmux-ghostty version")
  end
end
