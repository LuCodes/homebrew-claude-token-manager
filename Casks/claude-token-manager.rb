cask "claude-token-manager" do
  version "3.1.1"
  sha256 "7fedec47a97a2bbf6b36d01b7175c403a8cde1c48ef12a8ee9307bc3f5e1c8c4"

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
