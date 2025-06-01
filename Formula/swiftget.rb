class Swiftget < Formula
  desc "A CLI tool to download files"
  homepage "https://github.com/tuliopc23/swiftget-cli"
  url "https://github.com/tuliopc23/swiftget-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "524f07cb51cd83329602e900eb4ebb98aebd728ef0228f81867b04dab0255b6c"
  license "MIT"

  depends_on :xcode

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install ".build/release/swiftget"
  end

  test do
    output = shell_output("#{bin}/swiftget --version")
    assert_match "swiftget version 1.0.0", output
  end
end

