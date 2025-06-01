class Swiftget < Formula
  desc "A Swift-based package manager and downloader"
  homepage "https://github.com/tuliopc23/swiftget"
  url "https://github.com/tuliopc23/swiftget/archive/v1.0.0.tar.gz"
  sha256 "" # This will need to be updated with the actual SHA256 of the release
  license "MIT"

  depends_on "swift"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/swiftget"
  end

  test do
    system "#{bin}/swiftget", "--help"
  end
end

