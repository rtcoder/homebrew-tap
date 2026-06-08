class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  license "MIT"
  version "1.41.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.41.1/devdoctor-macos-arm64"
      sha256 "bbd32c6d531f607f58cc9990b8c9af08f0f16e51d1c5f30332ee664f1a4b0b6b"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.41.1/devdoctor-macos-x64"
      sha256 "4f1954617e9c52316c6758b341f2edb4cd3ca156653a5b00cebc195a733abcbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.41.1/devdoctor-linux-arm64"
      sha256 "45bfc0d8664465b210d72021cbe6236bb7ee40c7bd91b5da1fe116f61bcdf7fc"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.41.1/devdoctor-linux-x64"
      sha256 "1423499558e79f535aab806b94cd83db07c04d2148add60e78fc82d3929da3ae"
    end
  end

  def install
    binary = Dir["devdoctor-*"].first
    chmod 0755, binary
    bin.install binary => "devdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devdoctor --version")
  end
end
