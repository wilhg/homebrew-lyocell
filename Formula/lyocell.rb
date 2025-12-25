class Lyocell < Formula
  desc "High-performance load testing tool (k6 clone) on Java 25 & GraalVM"
  homepage "https://github.com/wilhg/lyocell"
  version "0.3.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wilhg/lyocell/releases/download/v0.3.3/lyocell-macos-aarch64"
    sha256 "e3eae9e7c777f67cf754885cf614ec07cd14ce0359b6b456984a4fb5a565404e"
  elsif OS.linux?
    url "https://github.com/wilhg/lyocell/releases/download/v0.3.3/lyocell-linux-amd64"
    sha256 "36a7785bfb226e087bbd8eb42ac0096ddd1b4546cb8239eb68b15377005b5d43"
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
