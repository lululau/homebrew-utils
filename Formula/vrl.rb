class Vrl < Formula
  desc "Simple script for view logs on remote server via lnav"
  homepage "https://liuxiang.coding.net/p/utils/d/utils/git/tree/master"
  url "https://liuxiang.coding.net/p/utils/d/utils/git/raw/master/vrl/vrl", using: :nounzip
  sha256 "10cebe7f8b04557012e5156f93fdb42445cfac40982244da3939cb03d413b0e6"
  version "1.0.0"

  depends_on "fzf" => :recommended
  depends_on "yq" => :recommended

  def install
    bin.install 'vrl'
  end
end
