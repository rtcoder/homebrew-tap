class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  license "MIT"
  version "1.48.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.48.0/devdoctor-macos-arm64"
      sha256 "b3e06393ece811924cb8b2ec87647d1481ebc452f901add8635832c681710d7d"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.48.0/devdoctor-macos-x64"
      sha256 "cf3089f2935a1246c3569f2fc83e3f57b1c43a9e3a77c0b269a0adbc452e6479"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.48.0/devdoctor-linux-arm64"
      sha256 "8bcd3b1f0029520b7320006898612f00df6184c8e3a992e58cf91b9215879316"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.48.0/devdoctor-linux-x64"
      sha256 "d9be31fd714d4dff4079ca57f2c45ded02a0d70373175a02775f87f8fa635418"
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
