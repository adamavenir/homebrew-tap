class Tk < Formula
  desc "Git-backed issue tracker for AI agents"
  homepage "https://github.com/adamavenir/ticket"
  url "https://github.com/adamavenir/ticket/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "edb6f48e7d9738da60e29c85db5b2bb094d7957a90ce6a88c54ae847e2df17c8"
  license "MIT"

  def install
    bin.install "ticket" => "tk"
  end

  test do
    assert_match "minimal ticket system", shell_output("#{bin}/tk help")
  end
end
