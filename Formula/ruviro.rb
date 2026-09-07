class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.9.0/ruviro_0.9.0_darwin_arm64.tar.gz"
      sha256 "30d314097fcebdf3a1076a2915d9e7442a5c69271ca3658c1af6c6d4fccda964"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.9.0/ruviro_0.9.0_darwin_amd64.tar.gz"
      sha256 "a3171d8081641b026793485736026274ab7dde9a5c42a4357551198844a7e157"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.9.0/ruviro_0.9.0_linux_arm64.tar.gz"
      sha256 "5a3b635c1dcc51efa1ad659eeb2d5afc227f15b444967ee806775c5f0c178859"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.9.0/ruviro_0.9.0_linux_amd64.tar.gz"
      sha256 "023abe9368835792d8dfeac47cfe96f13a9e01c27412b65171a925c68c1ddbd2"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
