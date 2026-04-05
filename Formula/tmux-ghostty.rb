class TmuxGhostty < Formula
  desc "Shared terminal broker for Ghostty powered by tmux"
  homepage "https://github.com/Woo-kk/tmux-ghostty"
  url "https://github.com/Woo-kk/tmux-ghostty/releases/download/v0.1.3/tmux-ghostty_v0.1.3_darwin_universal.tar.gz"
  sha256 "f3c1c6f972dd922b6a78a8337fc84c3deb92826463337b13ff0531df513bb214"
  version "0.1.3"

  def install
    bin.install "tmux-ghostty", "tmux-ghostty-broker"
  end

  test do
    assert_match "v0.1.3", shell_output("#{bin}/tmux-ghostty version")
  end
end
