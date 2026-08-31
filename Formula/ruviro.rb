class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.4.0/ruviro_0.4.0_darwin_arm64.tar.gz"
      sha256 "78036a1cbb9a4bca098e63315788fe0087336c7b2a490f9256d3f1f9a3bc05bb"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.4.0/ruviro_0.4.0_darwin_amd64.tar.gz"
      sha256 "535bd6668504d5d7f85c5bdda68407be164653697b7c3ad12332fdda90bf8215"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.4.0/ruviro_0.4.0_linux_arm64.tar.gz"
      sha256 "3505d4cdaec5e362c5cb209b683dbd91acbce7b44230e5f2af762c9012019067"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.4.0/ruviro_0.4.0_linux_amd64.tar.gz"
      sha256 "2e10fdcc9cf0dfc63c86e5f2a2d90d72d1857156d8939f8b18856404088412bc"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
