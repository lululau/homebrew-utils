class GitFire < Formula
  desc "Git sub-command for cleanup current git repository without losses"
  homepage "https://github.com/lululau/utils/tree/master"
  url "https://github.com/lululau/utils/raw/master/git-fire/git-fire", using: :nounzip
  sha256 "e963c80ca72e4de462cee9a3eb2ed6b52598fe6f096452f0e1316a0ae7c85577"
  version "1.0.0"

  def install
    bin.install 'git-fire'
  end
end
