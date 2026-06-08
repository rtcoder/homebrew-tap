class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  license "MIT"
  version "1.43.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.43.0/devdoctor-macos-arm64"
      sha256 "49dff8ba14af09a210e4e0cb9cf2c4b64ea1ce588fb12f9a57ae1f668156d165"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.43.0/devdoctor-macos-x64"
      sha256 "47198c6fce37f0432319eaffd3cd9446423f68857440db447038e439867f9eb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.43.0/devdoctor-linux-arm64"
      sha256 "abf82209b5f73f8978a6810a11e2426009769ae6c52de852bbffd0f46bb9539d"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.43.0/devdoctor-linux-x64"
      sha256 "4dfb4cfbea05cd8d9fa340943bc37fc34676c36ba6ea04ca833ac871375af8b8"
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
