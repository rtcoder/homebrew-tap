class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  url "https://github.com/rtcoder/devdoctor/releases/download/v0.12.0/devdoctor.phar"
  sha256 "075b603d64fed50bd8028dd5becf770ba25d9efa7f4cab2401b993c553a0285e"
  license "MIT"
  version "0.12.0"

  depends_on "php"

  def install
    bin.install "devdoctor.phar" => "devdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devdoctor --version")
  end
end
