class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  url "https://github.com/rtcoder/devdoctor/releases/download/v1.38.2/devdoctor.phar"
  sha256 "5e79b73ab9488b5ccb51ba3193b36efd50d41b2db0c335de0d5989190ce03b26"
  license "MIT"
  version "1.38.2"

  depends_on "php"

  def install
    bin.install "devdoctor.phar" => "devdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devdoctor --version")
  end
end
