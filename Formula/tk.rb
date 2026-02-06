class Tk < Formula
  desc "Git-backed issue tracker for AI agents"
  homepage "https://github.com/adamavenir/ticket"
  url "https://github.com/adamavenir/ticket/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  def install
    bin.install "ticket" => "tk"
  end

  test do
    assert_match "minimal ticket system", shell_output("#{bin}/tk help")
  end
end
