class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.12.0/ruviro_0.12.0_darwin_arm64.tar.gz"
      sha256 "017b9f93a3c5c3f05968e2956dd6551c612cde9c892c373a41f990a64e2d1c25"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.12.0/ruviro_0.12.0_darwin_amd64.tar.gz"
      sha256 "e6e305704b83ed6bed5305716159a7a15b0597df8ee8af620b18767b660f55bb"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.12.0/ruviro_0.12.0_linux_arm64.tar.gz"
      sha256 "5d981b786daa61eb2f021b75277bd21c66ec4072f94599989089bbdb9f064d98"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.12.0/ruviro_0.12.0_linux_amd64.tar.gz"
      sha256 "88169b240871d7c6a9cf26a228932eeeb40dfb583b64d5f305386f892a68af20"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
