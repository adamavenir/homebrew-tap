class Yo < Formula
  desc "Ping/pong between Claude and your phone"
  homepage "https://github.com/adamavenir/yo"
  url "https://github.com/adamavenir/yo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  depends_on "bun" => :build

  def install
    system "bun", "build", "--compile", "cli.ts", "--outfile", "yo"
    bin.install "yo"
  end

  test do
    assert_match "send a message", shell_output("#{bin}/yo")
  end
end
