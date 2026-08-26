class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.1.0/ruviro_0.1.0_darwin_arm64.tar.gz"
      sha256 "77558c7a5d38845be7848bd962121cf690ee23d4ac4ee31e4b3a1afeb9c61169"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.1.0/ruviro_0.1.0_darwin_amd64.tar.gz"
      sha256 "5861278b5a04b51809ee8f136fa778f417514809d094c19d6b9fc5bc95f2ef6d"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.1.0/ruviro_0.1.0_linux_arm64.tar.gz"
      sha256 "eb8c804424588f51466fcf0e76c04e264b7ad706dfb90913323cfc11b021fafb"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.1.0/ruviro_0.1.0_linux_amd64.tar.gz"
      sha256 "c31bf2532e9cf33a234f1856d71aff1a31e9820313c6f283ff7b49e1ff2a8aa5"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
