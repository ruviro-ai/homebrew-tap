class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.14.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.14.0/ruviro_0.14.0_darwin_arm64.tar.gz"
      sha256 "7c2316d1183b95e29b7cfb0c53880b3cea3d91b05cb158a477ff2ca81a565000"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.14.0/ruviro_0.14.0_darwin_amd64.tar.gz"
      sha256 "60add645e4d62d947e8065990e9694615c8462faa300f803af8830abac47811b"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.14.0/ruviro_0.14.0_linux_arm64.tar.gz"
      sha256 "ed87e26254fb16ac5bcc71105e830aa0ec2a453a8aa934d2fa52e92872a1f8d5"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.14.0/ruviro_0.14.0_linux_amd64.tar.gz"
      sha256 "ff509e510965a6dcc3113e40ce08c92b7707d48ef40f510bf7f93b0683a58f10"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
