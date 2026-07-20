class CommitWisp < Formula
  desc "Reviewable, token-aware AI commit messages from staged changes"
  homepage "https://github.com/siray-code/commit-wisp"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.3.2/commit-wisp-aarch64-apple-darwin.tar.gz"
      sha256 "982d0dc723c4b9e5b42cd53434cb25d891a7cbc8c46a09b57770902c009ade8a"
    else
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.3.2/commit-wisp-x86_64-apple-darwin.tar.gz"
      sha256 "5dfd78b1a04fa36c2b066ee484c213027c89cc2d57aef0b989be98778e9abcfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.3.2/commit-wisp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c7ca26ce702ab82eb26c7dabf940195acf71e084d09eef8cb2c33ff98ee42ba"
    else
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.3.2/commit-wisp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf9e7093380818d16bf322c6716545f80de3c4db7aba79da916c0d181a4570c6"
    end
  end

  def install
    bin.install "commit-wisp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-wisp --version")
  end
end
