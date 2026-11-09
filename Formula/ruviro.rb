class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.20.1"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.1/ruviro_0.20.1_darwin_arm64.tar.gz"
      sha256 "b87f44d0ed3f8e8377f52517fad581ec4a62d02ae255935e6873b8f38f09f51d"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.1/ruviro_0.20.1_darwin_amd64.tar.gz"
      sha256 "bdc856e3e7ba1cacbd7bd6505928505318e5831f33dd5e3e3f8beffebe314489"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.1/ruviro_0.20.1_linux_arm64.tar.gz"
      sha256 "842e0c4c5d130307a93b923869e11e0372eb9ef25d6594a62a3733bbf8715087"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.1/ruviro_0.20.1_linux_amd64.tar.gz"
      sha256 "0f4d2a335c54d057c1e4794a356b893fa315ec5a747fa125e55b00c7e319dff8"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
