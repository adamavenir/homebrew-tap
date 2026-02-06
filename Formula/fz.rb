class Fz < Formula
  desc "Minimal CLI for Fizzy kanban"
  homepage "https://github.com/adamavenir/fz"
  url "https://github.com/adamavenir/fz/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "dea5f8d445a2758cb3a0a0a45b78353c51d1e781481d114aeaba428fc6fbc040"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "fz"
  end

  test do
    assert_match "fz - fizzy kanban cli", shell_output("#{bin}/fz help")
  end
end
