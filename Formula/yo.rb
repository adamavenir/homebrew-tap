class Yo < Formula
  desc "Ping/pong between Claude and your phone"
  homepage "https://github.com/adamavenir/yo"
  url "https://github.com/adamavenir/yo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  depends_on "bun" => :build

  def install
    system "bun", "build", "--compile", "cli.ts", "--outfile", "yo"
    bin.install "yo"
  end

  test do
    assert_match "send a message", shell_output("#{bin}/yo")
  end
end
