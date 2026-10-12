class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.15.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.15.0/ruviro_0.15.0_darwin_arm64.tar.gz"
      sha256 "2e243b3925c9204cca2e7c55d99e3655006c58bf44d291f4745850ae20889bbe"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.15.0/ruviro_0.15.0_darwin_amd64.tar.gz"
      sha256 "10cfa166d8ce0b8e7acf9b34fa2e66adeae1ca0500e4e307df7cf54f92d63c07"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.15.0/ruviro_0.15.0_linux_arm64.tar.gz"
      sha256 "451f55192bc02909bc2909279faba0485e357e3653b4c1e41a7d0d73ada0c3df"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.15.0/ruviro_0.15.0_linux_amd64.tar.gz"
      sha256 "505138d9bcba62c45fc5eb8ac3f6fba0bd4e530dfccdeb495fa3a465a9125d92"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
