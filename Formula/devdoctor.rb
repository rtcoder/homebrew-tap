class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  url "https://github.com/rtcoder/devdoctor/releases/download/v1.36.0/devdoctor.phar"
  sha256 "66058708cced8d27cb186469fbad51c14b9839b97dc990789ee761b06d66a40a"
  license "MIT"
  version "1.36.0"

  depends_on "php"

  def install
    bin.install "devdoctor.phar" => "devdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devdoctor --version")
  end
end
