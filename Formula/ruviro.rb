class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.18.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.18.0/ruviro_0.18.0_darwin_arm64.tar.gz"
      sha256 "8fa1cd1cf465b6f26df69f22d74559fc4d95a2a8d890ef1fef907f8829cf2e4e"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.18.0/ruviro_0.18.0_darwin_amd64.tar.gz"
      sha256 "e8260d67ff1e9760855ed0055abeb12b02997bc5598ab9b7addcfbdea9569b18"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.18.0/ruviro_0.18.0_linux_arm64.tar.gz"
      sha256 "b6887ee43eb04af04753fdfdc99f3414c1e60cf8ddba307b7696696c5a76e7cf"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.18.0/ruviro_0.18.0_linux_amd64.tar.gz"
      sha256 "94629a2f9d913a2521e5d26a746ad43b7f8d6feb5cb740063d05ec3dc0498cef"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
