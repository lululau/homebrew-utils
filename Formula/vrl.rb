class Vrl < Formula
  desc "Simple script for view logs on remote server via lnav"
  homepage "https://github.com/lululau/utils/tree/master"
  url "https://github.com/lululau/utils/raw/master/vrl/vrl", using: :nounzip
  sha256 "a918b318594fa433964152f68a54297efaeb979f1b89f6a8f1924b46c133c244"
  version "1.0.0"

  depends_on "fzf" => :recommended
  depends_on "yq" => :recommended

  def install
    bin.install 'vrl'
  end
end
