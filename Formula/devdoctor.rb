class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  url "https://github.com/rtcoder/devdoctor/releases/download/v1.39.0/devdoctor.phar"
  sha256 "6cb46ce88821008616ec7c5aecc91d586d89b1737da7a72ce74e32bd2174f546"
  license "MIT"
  version "1.39.0"

  depends_on "php"

  def install
    bin.install "devdoctor.phar" => "devdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devdoctor --version")
  end
end
