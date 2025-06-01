class Swiftget < Formula
  desc "A CLI tool to download files"
  homepage "https://github.com/tuliopc23/swiftget-cli"
  url "https://github.com/tuliopc23/swiftget-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4db037e6e63dc9e535c9dafbc5533033caf66448e0c62b53beaaa99a00457197"
  license "MIT"

  depends_on :xcode

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install ".build/release/swiftget"
  end

  test do
    system "#{bin}/swiftget", "--version"
  end
end

