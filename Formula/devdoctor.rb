class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  license "MIT"
  version "1.46.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.46.0/devdoctor-macos-arm64"
      sha256 "f96c458169d32c91841e486bd665c109d5f5cc23019ae76f27d6fb8c317f3faa"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.46.0/devdoctor-macos-x64"
      sha256 "afb3f868b4f4e0d90ee56fc3d740111142ed721b9fb22d1e867d97c607e59700"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.46.0/devdoctor-linux-arm64"
      sha256 "6bff85bad0e62d447c7e45823235bfaa635cc08ec8936784eda4d2802ec1e161"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.46.0/devdoctor-linux-x64"
      sha256 "edd916e32c2eb437762bfbeb920a61a5fd3e00142c2aa3c1de1cb5b659e9c930"
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
