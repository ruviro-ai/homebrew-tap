class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.5.0/ruviro_0.5.0_darwin_arm64.tar.gz"
      sha256 "1766e0973451216ab49c6180032e104f41cf24ee0edd4263e7f86375d48a72d2"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.5.0/ruviro_0.5.0_darwin_amd64.tar.gz"
      sha256 "459c508f6db84ce715541786ca41da7347b2c560efc0684cd7e9823d1d2642d5"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.5.0/ruviro_0.5.0_linux_arm64.tar.gz"
      sha256 "529cdfbc8f971e6226e2f51665f5cb0bc54a4d4c5aea7109de515bc830f2fe00"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.5.0/ruviro_0.5.0_linux_amd64.tar.gz"
      sha256 "ca3a88b6b91831581ef549aa7c24e534eddcac6b4f52b4a8ce31b8f6ce5c2a6e"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
