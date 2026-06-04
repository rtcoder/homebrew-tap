class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  url "https://github.com/rtcoder/devdoctor/releases/download/v1.0.0/devdoctor.phar"
  sha256 "8b6957227d544d434037f197b2d76b610a85eca439905ac43ac9f54d613f2281"
  license "MIT"
  version "1.0.0"

  depends_on "php"

  def install
    bin.install "devdoctor.phar" => "devdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devdoctor --version")
  end
end
