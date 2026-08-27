class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.3.0/ruviro_0.3.0_darwin_arm64.tar.gz"
      sha256 "66a9db3fd1ea66da64b83be0d98ef8626f6f15505d2fed4bb36a0d815c54d7ed"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.3.0/ruviro_0.3.0_darwin_amd64.tar.gz"
      sha256 "dd0879b79ced14237bf030085cf593ed3a062f384a71206f7a4fb733da3f4d27"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.3.0/ruviro_0.3.0_linux_arm64.tar.gz"
      sha256 "bf4c0620d0283d3e9e8f863d590b5a5c23e1aabb0bc354e7fb03f58ebd957ace"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.3.0/ruviro_0.3.0_linux_amd64.tar.gz"
      sha256 "353266a962116646184c48d3afa287bdfe091f022e87569fde6db1c7cf772172"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
