class Lyocell < Formula
  desc "High-performance load testing tool (k6 clone) on Java 25 & GraalVM"
  homepage "https://github.com/wilhg/lyocell"
  version "0.3.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wilhg/lyocell/releases/download/v0.3.8/lyocell-macos-aarch64"
    sha256 "5e9436a8faea5aede2c0a215e0bd469ab50b14d2540f72f5f023f305d51329a8"
  elsif OS.linux?
    url "https://github.com/wilhg/lyocell/releases/download/v0.3.8/lyocell-linux-amd64"
    sha256 "179ebb11b969a1e047937f753d73c9c06c5e65bf27043ae12a686bd9b1296964"
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
