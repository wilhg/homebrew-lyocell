class Lyocell < Formula
  desc "High-performance load testing tool (k6 clone) on Java 25 & GraalVM"
  homepage "https://github.com/wilhg/lyocell"
  version "0.3.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wilhg/lyocell/releases/download/v0.3.2/lyocell-macos-aarch64"
    sha256 "e095a6d8ea7979bcb3dd141e9a52d943401900178e437b22848e85c67a1fbf19"
  elsif OS.linux?
    url "https://github.com/wilhg/lyocell/releases/download/v0.3.2/lyocell-linux-amd64"
    sha256 "3c82e4032814ad6b52e7d03bd86944aee9e27f6bfaf9a0968a59fd68f63a7d0c"
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
