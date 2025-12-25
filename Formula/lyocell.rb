class Lyocell < Formula
  desc "High-performance load testing tool (k6 clone) on Java 25 & GraalVM"
  homepage "https://github.com/wilhg/lyocell"
  version "0.3.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wilhg/lyocell/releases/download/v0.3.6/lyocell-macos-aarch64"
    sha256 "f832eb8f2fce0d42f017658c72fd2bf376f0e0cd895ce0479bf87f416c1ee8f9"
  elsif OS.linux?
    url "https://github.com/wilhg/lyocell/releases/download/v0.3.6/lyocell-linux-amd64"
    sha256 "9beca46b7eaeab752945a9ece7b59da5d9ad85b492d86d61d8825f4c648d2e51"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "lyocell-macos-aarch64" => "lyocell"
    elsif OS.linux?
      bin.install "lyocell-linux-amd64" => "lyocell"
    end
  end

  test do
    system "#{bin}/lyocell", "--version"
  end
end
