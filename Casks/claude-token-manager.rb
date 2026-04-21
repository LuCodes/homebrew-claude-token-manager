cask "claude-token-manager" do
  version "3.0.6"
  sha256 "671b26034b4c12b5bf54629a4777f9e04e5c8070e112bfff8daa7da6107236ee"

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
