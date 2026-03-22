cask "mergen-app" do
  version "2.1"
  sha256 "49940ea5718b496aacec76beb9fae299cf839b1ed1a115ff199e2f10f8e4db02"

  url "https://github.com/sametsazak/mergen/releases/download/v#{version}/Mergen.dmg"
  name "Mergen"
  desc "macOS security auditing app — CIS Benchmark checks and auto-remediation"
  homepage "https://github.com/sametsazak/mergen"

  app "Mergen.app"

  zap trash: [
    "~/Library/Application Support/mergen",
    "~/Library/Logs/mergen",
    "~/Library/Preferences/com.sametsazak.mergen.plist",
  ]
end
