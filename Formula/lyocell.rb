class Lyocell < Formula
  desc "High-performance load testing tool (k6 clone) on Java 25 & GraalVM"
  homepage "https://github.com/wilhg/lyocell"
  version "0.3.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wilhg/lyocell/releases/download/v0.3.0/lyocell-macos-aarch64"
    sha256 "86e74d56bf155213a89a7bb7f70eb9c49e75fa450066fd6d7e11df63614ff481"
  elsif OS.linux?
    url "https://github.com/wilhg/lyocell/releases/download/v0.3.0/lyocell-linux-amd64"
    sha256 "612e19eca83ab4a6b4c2b3030ef7ad7a16a9f07725de6c60b9e7e198313d5058"
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
