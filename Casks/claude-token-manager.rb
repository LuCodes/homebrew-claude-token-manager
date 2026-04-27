cask "claude-token-manager" do
  version "3.0.7"
  sha256 "cddd9b791461ba7b195b7a2f7978658d17de9f481b3312ab085c3ff37e5986c3"

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
