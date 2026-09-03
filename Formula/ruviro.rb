class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.7.0/ruviro_0.7.0_darwin_arm64.tar.gz"
      sha256 "384a0d89db6ea6f7a0e6d2b308c543712198774663657b21b663348551011b44"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.7.0/ruviro_0.7.0_darwin_amd64.tar.gz"
      sha256 "2c77ae23c0a458e74a98ebb1831b07abf4678b0f2017061d6747d50cae1f6fdc"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.7.0/ruviro_0.7.0_linux_arm64.tar.gz"
      sha256 "8ab0c7986bea0f324c4071b43b996ae0bd79d65e63c051282a36d61165bf7ea6"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.7.0/ruviro_0.7.0_linux_amd64.tar.gz"
      sha256 "6b3e38d7f09a7d9beba8d4b28de5701d464e7720e00d5d1c93951e986bc52a3a"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
