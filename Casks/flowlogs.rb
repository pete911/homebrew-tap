# This file was generated by GoReleaser. DO NOT EDIT.
cask "flowlogs" do
  desc "Create and view AWS FlowLogs."
  homepage "https://github.com/pete911/flowlogs"
  version "0.0.10"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "flowlogs"

  on_macos do
    on_intel do
      url "https://github.com/pete911/flowlogs/releases/download/v0.0.10/flowlogs_0.0.10_darwin_amd64.tar.gz"
      sha256 "c27d89b968102edf997ce8bf63a2ddeb27fc9f862272d656aa7277a4844265a3"
    end
    on_arm do
      url "https://github.com/pete911/flowlogs/releases/download/v0.0.10/flowlogs_0.0.10_darwin_arm64.tar.gz"
      sha256 "35ab89d4ece8da528a5f2e6daf2ff79902b5b702f4a0c9bc0d52a3a30139f28d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pete911/flowlogs/releases/download/v0.0.10/flowlogs_0.0.10_linux_amd64.tar.gz"
      sha256 "fc3a11f4c8079b4a4ad82a50748975c05dd23804b1ae173d280360f260618806"
    end
    on_arm do
      url "https://github.com/pete911/flowlogs/releases/download/v0.0.10/flowlogs_0.0.10_linux_arm64.tar.gz"
      sha256 "9db0dbdc6863420b9f65758a693efc004f679e41f4cf343bad914a70287c1e41"
    end
  end

  postflight do
    if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/flowlogs"]
    end
  end

  # No zap stanza required
end
