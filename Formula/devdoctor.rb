class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  url "https://github.com/rtcoder/devdoctor/releases/download/v1.37.0/devdoctor.phar"
  sha256 "212e729ed00dd9e8ab48ec05a91b2571641ac2767ab43a533cd3a926b95a303d"
  license "MIT"
  version "1.37.0"

  depends_on "php"

  def install
    bin.install "devdoctor.phar" => "devdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devdoctor --version")
  end
end
