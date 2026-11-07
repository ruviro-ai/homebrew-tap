class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.19.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.19.0/ruviro_0.19.0_darwin_arm64.tar.gz"
      sha256 "3f0273d27b3f396c368915a36aa65f1a1bdb4ac87575db165cbf5f8736876f8a"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.19.0/ruviro_0.19.0_darwin_amd64.tar.gz"
      sha256 "f99266967c141679fbe6cfb58377c4f27366041e7b60d83a1c3f0e4c46b12abb"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.19.0/ruviro_0.19.0_linux_arm64.tar.gz"
      sha256 "cec335852499be6533f79fad1c4c2a17edbb8376704794e736bc37a7a0c8e691"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.19.0/ruviro_0.19.0_linux_amd64.tar.gz"
      sha256 "28ed673f20ebdee088faad36a6d63f09a31de7083bd94282d46ae22be76c2326"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
