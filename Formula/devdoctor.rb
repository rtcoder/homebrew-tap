class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  url "https://github.com/rtcoder/devdoctor/releases/download/v1.40.0/devdoctor.phar"
  sha256 "11080c09f2c6bdc50b8ca2a4c3d9a3712525d423a5c48a76f7566c4e4afddcdd"
  license "MIT"
  version "1.40.0"

  depends_on "php"

  def install
    bin.install "devdoctor.phar" => "devdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devdoctor --version")
  end
end
