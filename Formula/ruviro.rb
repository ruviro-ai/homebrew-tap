class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.20.2"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.2/ruviro_0.20.2_darwin_arm64.tar.gz"
      sha256 "59602ef2123fe685ebdb486e2499ab829f3be15924e904c1e2aac5d48c7ecc0c"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.2/ruviro_0.20.2_darwin_amd64.tar.gz"
      sha256 "f4cee9f40ee60acfa1fd465c149b86ce8d58f8dadbf41450cec77b1a633a8d1d"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.2/ruviro_0.20.2_linux_arm64.tar.gz"
      sha256 "0f1caeb91c6e5cc6465d52fe555751b72b10bdb1f92caa6bec77ef41a0ee5f91"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.2/ruviro_0.20.2_linux_amd64.tar.gz"
      sha256 "843e87700a7391edcfebc679e42abe9aa2c9cfa5d6e728db95d429d3fcd80fea"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
