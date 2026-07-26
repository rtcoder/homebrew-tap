class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.10"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.10/ytrack_0.1.10_darwin_arm64.tar.gz"
      sha256 "3334520f8413ceef5cb487e5d6a302f60929303bcc9b28ea47d1550fe44b9bb1"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.10/ytrack_0.1.10_darwin_amd64.tar.gz"
      sha256 "28b374a2d6d26b46f495abfc9d1f5a37735e3b5e7a6bf86e8d79be5d37ba74c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.10/ytrack_0.1.10_linux_arm64.tar.gz"
      sha256 "eec7fa69dd3294723ec1e4a14f49466d44ff44939c76f299a7d324b6a5bec7fc"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.10/ytrack_0.1.10_linux_amd64.tar.gz"
      sha256 "71726dd570f32f27535ea79bcb504fa73bb3c39de081b0866bc9a11d5cfa9df5"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
