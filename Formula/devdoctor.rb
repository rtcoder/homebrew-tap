class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  license "MIT"
  version "1.47.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.47.0/devdoctor-macos-arm64"
      sha256 "475466b3fd8050c71487ec8138360837a6a1ac49c22c49d0127ad6864f9a25ca"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.47.0/devdoctor-macos-x64"
      sha256 "715d601282c32d9bc0ec22ba82baac1883678861fe407c8d286e896432c96ec3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.47.0/devdoctor-linux-arm64"
      sha256 "37e28d7d09bd1921b59727f8fcfffe6ec21eb0dc27b41cef2f22dec8aab4b5ea"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.47.0/devdoctor-linux-x64"
      sha256 "a32dfb168549ff97a803f85f5a43ab527902e1fcaf4ad5e5def819070949eacd"
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
