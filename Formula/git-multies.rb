class GitMulties < Formula
  desc "Git sub-commands for run git-pull, git-status, git-branch on sub-directories"
  homepage "https://github.com/lululau/utils/tree/master"
  url "https://github.com/lululau/utils/raw/master/git-multies/git-multies-1.1.0.zip"
  sha256 "fe6c43e6a0b0ca8d1cfb4be1309ce597016acd46d8a36b2b2dcc88d6c4680dba"
  version "1.1.0"

  def install
    bin.install 'git-multi-pull'
    bin.install 'git-multi-status'
    bin.install 'git-multi-branch'
  end
end
