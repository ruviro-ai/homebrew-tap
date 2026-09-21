class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.10.0/ruviro_0.10.0_darwin_arm64.tar.gz"
      sha256 "b7d00f7f2502c01c829440697103afe40cb7aee2ef28b34acb31dbd4885b1278"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.10.0/ruviro_0.10.0_darwin_amd64.tar.gz"
      sha256 "d6243e81c24b5999b6fe04a64c1328a18f7d274528905b179d4d5debd2b0da38"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.10.0/ruviro_0.10.0_linux_arm64.tar.gz"
      sha256 "449090043829651ec422d6c750294ee36bff9524148db216384749b815f23c03"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.10.0/ruviro_0.10.0_linux_amd64.tar.gz"
      sha256 "b2d2a18fd65d403ff4a838898f058bfd4653c5b1816d4573d673417640ea3cc6"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
