require "formula"

class BtIntel < Formula
  desc "BT CLI Tool for Intel"
  homepage "https://github.com/bounser-org/bt"
  url "https://github.com/bounser-org/bt/releases/download/v1.2/bt-darwin-x86_64-v1.2.tar.gz"
  sha256 "56a69f404805bd482aa372515de1f110168e25e832ab8430990d718dd72b9e87"
  head "https://github.com/bounser-org/bt.git"

  def install
    bin.install "bt"
  end

  # Homebrew requires tests.
  test do
    assert_match "v1.2", shell_output("#{bin}/bt version")
  end
end
