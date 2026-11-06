class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.17.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.17.0/ruviro_0.17.0_darwin_arm64.tar.gz"
      sha256 "19a45f0b8c75e46b9959a8b052e67d6f2c386755e80acf38a3e345025e00d1c3"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.17.0/ruviro_0.17.0_darwin_amd64.tar.gz"
      sha256 "a3ee55074fd25a681c29c61cfbaf5059e9a11774860799c26d679b0f7482a69f"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.17.0/ruviro_0.17.0_linux_arm64.tar.gz"
      sha256 "58d6f44faf162500a6ae8830b74f2439a8ad0bb464a7a049a6171a6674056737"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.17.0/ruviro_0.17.0_linux_amd64.tar.gz"
      sha256 "e82b33b021f16b43cd99b226b3f60e43f39475e3220f60f4bf4e493aa7597e79"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
