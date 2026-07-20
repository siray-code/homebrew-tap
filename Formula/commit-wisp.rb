class CommitWisp < Formula
  desc "Reviewable, token-aware AI commit messages from staged changes"
  homepage "https://github.com/siray-code/commit-wisp"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/siray-code/commit-wisp/releases/download/v1.0.0/commit-wisp-aarch64-apple-darwin.tar.gz"
      sha256 "358f7fe7054645b7b368d61d6edd3eac676e6453f2cf6c0afd4b828f8d14a2ef"
    else
      url "https://github.com/siray-code/commit-wisp/releases/download/v1.0.0/commit-wisp-x86_64-apple-darwin.tar.gz"
      sha256 "f73c2a3e070ba19d98d0b004815f0b31832c587755fada8cf8813eca2b07ee34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/siray-code/commit-wisp/releases/download/v1.0.0/commit-wisp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "964a9d8d66f4cf1643ec52662c74ea3459b0615ba3cc4fd1216859471cf10857"
    else
      url "https://github.com/siray-code/commit-wisp/releases/download/v1.0.0/commit-wisp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "182cc66b1d09ae2aaf4305f466055a2e21be49179fffebb56ba49a79a762f269"
    end
  end

  def install
    bin.install "commit-wisp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-wisp --version")
  end
end
