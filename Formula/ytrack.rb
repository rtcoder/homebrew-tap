class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.8"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.8/ytrack_0.1.8_darwin_arm64.tar.gz"
      sha256 "e5631b8de05d4ce3c843e0c815f6b87be6fbd5ac42c59bd41c7d76efb48b37cc"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.8/ytrack_0.1.8_darwin_amd64.tar.gz"
      sha256 "b508def129c44caabb9bb8feac88d061af6ca092bd9a596134a17ffd4aa698bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.8/ytrack_0.1.8_linux_arm64.tar.gz"
      sha256 "c96cd561cf29c2b98853277ced9acc27c6e1324c5e2e270a1481fd902908708f"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.8/ytrack_0.1.8_linux_amd64.tar.gz"
      sha256 "7ccbed6e8752468cf44953b502fe4cdec3e5293f8a296797ef9a052ada497d56"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
