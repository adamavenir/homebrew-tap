class Tk < Formula
  desc "Git-backed issue tracker for AI agents"
  homepage "https://github.com/adamavenir/ticket"
  url "https://github.com/adamavenir/ticket/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "460f12b53a7232b873ebd3d4d3925d610dfddc4655dd9136ac506b0768522a3e"
  license "MIT"

  def install
    bin.install "ticket" => "tk"
  end

  test do
    assert_match "minimal ticket system", shell_output("#{bin}/tk help")
  end
end
