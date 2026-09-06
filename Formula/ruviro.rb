class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.8.0/ruviro_0.8.0_darwin_arm64.tar.gz"
      sha256 "95448f614bfd71b2f5647771b19caa5f0d69cb033a562e1c72fc6ff7fee6f72b"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.8.0/ruviro_0.8.0_darwin_amd64.tar.gz"
      sha256 "3a7d882ad29e3491dc2c63d8ba5dece6de11ab16dfa3e839ae1caf69e920c91e"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.8.0/ruviro_0.8.0_linux_arm64.tar.gz"
      sha256 "9dba8ae066697ed8a675963c89b2c8c94f6d3383a7ea823891a22cc451896fe3"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.8.0/ruviro_0.8.0_linux_amd64.tar.gz"
      sha256 "2c8d0b2291c400fadf4e8107ea133d12c7c7108660a82f8ee45119c3c1ec3f7f"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
