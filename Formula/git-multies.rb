class GitMulties < Formula
  desc "Git sub-commands for run git-pull, git-status, git-branch on sub-directories"
  homepage "https://github.com/lululau/utils/tree/master"
  url "https://github.com/lululau/utils/raw/master/git-multies/git-multies-1.0.0.zip"
  sha256 "4d2635b1875cccc89ebb9941697785768ae8010b0562d5190b239a143f76f180"
  version "1.0.0"

  def install
    bin.install 'git-multi-pull'
    bin.install 'git-multi-status'
    bin.install 'git-multi-branch'
  end
end
