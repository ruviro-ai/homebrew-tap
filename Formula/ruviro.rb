class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.20.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.0/ruviro_0.20.0_darwin_arm64.tar.gz"
      sha256 "48e3ff2afe7bfe264fb378de2aca5037110805c24a2f41f4a73cf3e35d442f72"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.0/ruviro_0.20.0_darwin_amd64.tar.gz"
      sha256 "65e2a43adc5c0e46fe9f901617c1c3a13733c1082adddacec070f140dbb1acc1"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.0/ruviro_0.20.0_linux_arm64.tar.gz"
      sha256 "0b92d3e9b72e0673bd23e4a1b981188170e50ecab0e6d647e8354679891dc52b"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.0/ruviro_0.20.0_linux_amd64.tar.gz"
      sha256 "3a82ec91b266883f6c2023db43045717bbbe7e4b5adc1b09c50d87087d2f4e9f"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
