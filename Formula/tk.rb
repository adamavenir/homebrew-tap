class Tk < Formula
  desc "Git-backed issue tracker for AI agents"
  homepage "https://github.com/adamavenir/ticket"
  url "https://github.com/adamavenir/ticket/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "03d7b4fc3c9bdca97107a801c1f6a96dd08f6c153ad1e7ae079a2d129e63890d"
  license "MIT"

  def install
    bin.install "ticket" => "tk"
  end

  test do
    assert_match "minimal ticket system", shell_output("#{bin}/tk help")
  end
end
