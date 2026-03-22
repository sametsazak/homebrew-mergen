class Mergen < Formula
  desc "macOS security auditing CLI — CIS Benchmark checks and auto-remediation"
  homepage "https://github.com/sametsazak/mergen"
  url "https://github.com/sametsazak/mergen/archive/refs/tags/v2.2.tar.gz"
  sha256 "069cc7e2f12416f7053d26db845755aa5aa60d60d9b83992d14eda13bebe1b57"
  license "MIT"
  version "2.2"

  depends_on :macos
  depends_on "go" => :build

  def install
    Dir.chdir("mergen-cli") do
      system "go", "build",
        "-trimpath",
        "-ldflags", "-s -w -X main.version=#{version}",
        "-o", bin/"mergen",
        "."
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mergen --version 2>&1", 0)
  end
end
