class CommitWisp < Formula
  desc "Reviewable, token-aware AI commit messages from staged changes"
  homepage "https://github.com/siray-code/commit-wisp"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.1.0/commit-wisp-aarch64-apple-darwin.tar.gz"
      sha256 "92b3f0d019e5a45247818dcffbdd38bcbec3d7e584a7a3f1f0e5066ec063fe60"
    else
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.1.0/commit-wisp-x86_64-apple-darwin.tar.gz"
      sha256 "fe6311ece0bba36a6daeb8d2e670e2003fc11048693d2ee6da23a97b20263922"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.1.0/commit-wisp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "536861b5ce4246c994b51e231c487c62f787dc00bcd9b2f3bd497acab05140f2"
    else
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.1.0/commit-wisp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b89f7e087824c7142c4c59988397bf0a3126ec942732dc65a50d8c3db499038"
    end
  end

  def install
    bin.install "commit-wisp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-wisp --version")
  end
end
