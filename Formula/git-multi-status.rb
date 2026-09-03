class GitMultiStatus < Formula
  desc "Git sub-command for batch viewing the status of all git repositories in the current directory"
  homepage "https://github.com/lululau/utils/tree/master"
  url "https://github.com/lululau/utils/raw/master/git-multi-status/git-multi-status", using: :nounzip
  sha256 "8125e22331029f1f1c3b22b186e3552063865e838ac608379a76dd0418c1114e"
  version "1.0.0"

  def install
    bin.install 'git-multi-status'
  end
end
