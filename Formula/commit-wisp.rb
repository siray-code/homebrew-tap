class CommitWisp < Formula
  desc "Reviewable, token-aware AI commit messages from staged changes"
  homepage "https://github.com/siray-code/commit-wisp"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.3.1/commit-wisp-aarch64-apple-darwin.tar.gz"
      sha256 "60a883156a36dc80e62d1299c304b88f50cde92d3e4afe997cbbd58f097c2a69"
    else
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.3.1/commit-wisp-x86_64-apple-darwin.tar.gz"
      sha256 "45ff3123d8726f5ec3031488a5595eb17bf11e132aa3780cc31c6c169cb8e113"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.3.1/commit-wisp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ce16382cb59b467fca3028d8251621abba305357e867ace3c2e691e01210328"
    else
      url "https://github.com/siray-code/commit-wisp/releases/download/v0.3.1/commit-wisp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce8e0a90aa12f5af9b0fc9101726f68c6bbda05636caa6b8adc1341fad085219"
    end
  end

  def install
    bin.install "commit-wisp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-wisp --version")
  end
end
