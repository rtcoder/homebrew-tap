class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  license "MIT"
  version "1.41.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.41.0/devdoctor-macos-arm64"
      sha256 "457176b48168a5d413175af3b670ad40829a0b02fec6848dc74e8647f9a9754d"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.41.0/devdoctor-macos-x64"
      sha256 "ff9104a2359d4e25b8e93fb1034f849644598316063cf3843def8823e29adfaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.41.0/devdoctor-linux-arm64"
      sha256 "3c6c9a88eff9f8b8ef75eeabb8e8296cec4b14dae2d0123af8650aa9a61f117d"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.41.0/devdoctor-linux-x64"
      sha256 "6338c1115ccce84bfabe8f480884243d7f1e5b509d103e54f751319db2ccd55d"
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
