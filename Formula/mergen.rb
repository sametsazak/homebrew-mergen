class Mergen < Formula
  desc "macOS security auditing CLI — CIS Benchmark checks and auto-remediation"
  homepage "https://github.com/sametsazak/mergen"
  url "https://github.com/sametsazak/mergen/archive/refs/tags/v2.1.tar.gz"
  sha256 "0868de7435e01463466b2724125280ff1dbcd723bbd26d4cf1e3ca499844dca0"
  license "MIT"
  version "2.1"

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
