cask "claude-token-manager" do
  version "3.0.9"
  sha256 "927a8fddbea00586e662979fb6fce36194e82077763e4ae2a1d6870fff3c8f3c"

  url "https://github.com/LuCodes/claude-token-manager/releases/download/v#{version}/ClaudeTokenManager.zip"
  name "Claude Token Manager"
  desc "Native macOS menu bar app for Claude Code usage and claude.ai limits"
  homepage "https://github.com/LuCodes/claude-token-manager"

  depends_on macos: ">= :ventura"

  app "Claude Token Manager.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Claude Token Manager.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.lucas.claude-token-manager.plist",
    "~/Library/Application Support/Claude Token Manager",
  ]
end
