class Kubegram < Formula
  desc "AI-driven visual Kubernetes infrastructure CLI"
  homepage "https://www.kubegram.com"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kubegram/kubegram/releases/download/kubegram-cli%2Fv0.1.0/kubegram_0.1.0_darwin_arm64.tar.gz"
      sha256 "fe9cde8568cd1ee9d4def2fa623a4185c51321222fff7f9e66287bbc97b216ba"
    end
    on_intel do
      url "https://github.com/kubegram/kubegram/releases/download/kubegram-cli%2Fv0.1.0/kubegram_0.1.0_darwin_amd64.tar.gz"
      sha256 "40cf7ed6b8f79ffcd94a6e70271fcefe6cda43c898c4795bb7907eb1bcb367f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kubegram/kubegram/releases/download/kubegram-cli%2Fv0.1.0/kubegram_0.1.0_linux_arm64.tar.gz"
      sha256 "4f398d6262f3735a8ed7423c8c14a0342a773dd2112e66db9f81d625d33c5650"
    end
    on_intel do
      url "https://github.com/kubegram/kubegram/releases/download/kubegram-cli%2Fv0.1.0/kubegram_0.1.0_linux_amd64.tar.gz"
      sha256 "7350d487d48bb74ffae3d66b118908048c18740f99708cba47e4d53d4856affc"
    end
  end

  def install
    bin.install "kubegram"
  end

  test do
    system "#<built-in function bin>/kubegram", "version"
  end
end
