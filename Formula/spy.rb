class Spy < Formula
  desc "Monitor active Claude Code and Codex conversations"
  homepage "https://github.com/adamavenir/spy"
  url "https://github.com/adamavenir/spy/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "599b58c96dd23da6c76e986ac879a412370467856fa9966dc939a945748a9bac"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "spy"
  end

  test do
    assert_match "spy - Monitor active", shell_output("#{bin}/spy --help")
  end
end
