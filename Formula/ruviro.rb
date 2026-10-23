class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.16.1"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.16.1/ruviro_0.16.1_darwin_arm64.tar.gz"
      sha256 "e1941476d5945bcaaf12afecd556f121b8f7c33a1bd9ab726fb6acb097abc597"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.16.1/ruviro_0.16.1_darwin_amd64.tar.gz"
      sha256 "2ce7d779ce188b82f70413058bbb0ff3659df636e80feb04ca2e398b73ee9f8c"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.16.1/ruviro_0.16.1_linux_arm64.tar.gz"
      sha256 "d8c5340b1cdc24fca248815be66e1f2e074c7886d61b607a62de5768f891ea1f"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.16.1/ruviro_0.16.1_linux_amd64.tar.gz"
      sha256 "93bd076633e6472427d46988c4fd15fe87804c081ce2423206a42e946e4820f3"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
