class Spy < Formula
  desc "Monitor active Claude Code and Codex conversations"
  homepage "https://github.com/adamavenir/spy"
  url "https://github.com/adamavenir/spy/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3ea09026cf2d3b44dded38c83cc4a67edec30dab839341cc01c4b233797effde"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "spy"
  end

  test do
    assert_match "spy - Monitor active", shell_output("#{bin}/spy --help")
  end
end
