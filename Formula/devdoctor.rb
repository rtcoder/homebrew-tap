class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  url "https://github.com/rtcoder/devdoctor/releases/download/v1.38.0/devdoctor.phar"
  sha256 "c6488c54fc58ed84b8a269426798739bc40417954602d6bc7115ed6f2145d69e"
  license "MIT"
  version "1.38.0"

  depends_on "php"

  def install
    bin.install "devdoctor.phar" => "devdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devdoctor --version")
  end
end
