class Lyocell < Formula
  desc "High-performance load testing tool (k6 clone) on Java 25 & GraalVM"
  homepage "https://github.com/wilhg/lyocell"
  version "0.2.25"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wilhg/lyocell/releases/download/v0.2.25/lyocell-macos-aarch64"
    sha256 "ada58d8238454966b2dea685a2bd9ef0ff313736bd8a20099df17dded6dc8c3f"
  elsif OS.linux?
    url "https://github.com/wilhg/lyocell/releases/download/v0.2.25/lyocell-linux-amd64"
    sha256 "a4b8b4f460de4d6334225f17d9c7b81444fcb7d60aef64209819a6634d4d2aca"
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
