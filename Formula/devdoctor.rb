class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  url "https://github.com/rtcoder/devdoctor/releases/download/v1.38.1/devdoctor.phar"
  sha256 "790fb1f5c9409695ed029f18bf71b6c129b5931ed2917b6c93fd1ca765441c44"
  license "MIT"
  version "1.38.1"

  depends_on "php"

  def install
    bin.install "devdoctor.phar" => "devdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devdoctor --version")
  end
end
