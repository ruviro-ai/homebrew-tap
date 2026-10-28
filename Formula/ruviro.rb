class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.16.2"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.16.2/ruviro_0.16.2_darwin_arm64.tar.gz"
      sha256 "7b9314a5757ed4320d3f2030164734ab3835114f5d4cf77fba47c7a0362311de"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.16.2/ruviro_0.16.2_darwin_amd64.tar.gz"
      sha256 "90f4e6ab62b649d71938ccb5bccfc0cc93e45ace68a950fbb6253b991a25431a"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.16.2/ruviro_0.16.2_linux_arm64.tar.gz"
      sha256 "549dea679c379cfa97666eef1ae6e67420956d1608ae70093c6a2b98585b3e0f"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.16.2/ruviro_0.16.2_linux_amd64.tar.gz"
      sha256 "ebe12d10790ad6592e76cb8f0aa4bb1b2d96e9e386761c10bcfd47db2aef42da"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
