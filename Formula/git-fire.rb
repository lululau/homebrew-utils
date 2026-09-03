class GitFire < Formula
  desc "Git sub-command for cleanup current git repository without losses"
  homepage "https://github.com/lululau/utils/tree/master"
  url "https://github.com/lululau/utils/raw/master/git-fire/git-fire", using: :nounzip
  sha256 "e32da6b3511bb19df8ee4c6e313c0bf9b08dbc088cd16ca0f81b0e50b6a2953b"
  version "1.1.0"

  def install
    bin.install 'git-fire'
  end
end
