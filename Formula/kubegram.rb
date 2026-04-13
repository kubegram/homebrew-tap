class Kubegram < Formula
  desc "AI-driven visual Kubernetes infrastructure CLI"
  homepage "https://www.kubegram.com"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kubegram/kubegram/releases/download/kubegram-cli%2Fv0.1.0/kubegram_0.1.0_darwin_arm64.tar.gz"
      sha256 "5c97439c9b9a0c169c6e4e21766a4fc0452ab30fa3aa5f47175741f65f747791"
    end
    on_intel do
      url "https://github.com/kubegram/kubegram/releases/download/kubegram-cli%2Fv0.1.0/kubegram_0.1.0_darwin_amd64.tar.gz"
      sha256 "6536dc08b94f23cc9fd729dacc7325266c5128c887d38bb1d56077f2729333ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kubegram/kubegram/releases/download/kubegram-cli%2Fv0.1.0/kubegram_0.1.0_linux_arm64.tar.gz"
      sha256 "32c3eaf9f9a13bc85144c25dac3033f950fb892f5eb583f41335b6de052dac8e"
    end
    on_intel do
      url "https://github.com/kubegram/kubegram/releases/download/kubegram-cli%2Fv0.1.0/kubegram_0.1.0_linux_amd64.tar.gz"
      sha256 "982ae6cdc002ded4e6a476a2d624144d2635917f01bd8d89bd3e2a0969298808"
    end
  end

  def install
    bin.install "kubegram"
  end

  test do
    system "#<built-in function bin>/kubegram", "version"
  end
end
