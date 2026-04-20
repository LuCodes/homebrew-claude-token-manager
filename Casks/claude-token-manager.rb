cask "claude-token-manager" do
  version "1.2.0"
  sha256 "4963a8768f6000e8908267b11220dae7ba0aa8b963ff1dabfbfa3109d58b0a73"

  url "https://github.com/LuCodes/claude-token-manager/releases/download/v#{version}/ClaudeTokenManager.zip"
  name "Claude Token Manager"
  desc "Native macOS menu bar app for Claude Code usage and claude.ai limits"
  homepage "https://github.com/LuCodes/claude-token-manager"

  depends_on macos: ">= :ventura"

  app "Claude Token Manager.app"

  zap trash: [
    "~/Library/Preferences/com.lucas.claude-token-manager.plist",
    "~/Library/Application Support/Claude Token Manager",
  ]
end
