class CommitWisp < Formula
  desc "Reviewable, token-aware AI commit messages from staged changes"
  homepage "https://github.com/siray-code/commit-wisp"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.2.0/commit-wisp-aarch64-apple-darwin.tar.gz"
      sha256 "5a09eff428635e0bff19f284798e8566b46ab0d6eb28d86c01566fbaacf40b9d"
    else
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.2.0/commit-wisp-x86_64-apple-darwin.tar.gz"
      sha256 "7471268e068565b01cfa4e0432e428edc251d22bfe331a05f743f5efc9f5376a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.2.0/commit-wisp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79ef2d94e019d5756ee388f46fe89c9a7a4cc569d9178a384d145b94e458e4b1"
    else
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.2.0/commit-wisp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c5428dd68e8612d19eaee0942aa519dd815f3629b71bdcd5473cf09986361b8"
    end
  end

  def install
    bin.install "commit-wisp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-wisp --version")
  end
end
