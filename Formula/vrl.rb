class Vrl < Formula
  desc "Simple script for view logs on remote server via lnav"
  homepage "https://liuxiang.coding.net/p/utils/d/utils/git/tree/master"
  url "https://liuxiang.coding.net/p/utils/d/utils/git/raw/master/vrl/vrl", using: :nounzip
  sha256 "74e522c567a57cf30657bb5ae140c81fc51e9a1e49670534fb7eede615ed3426"
  version "1.0.0"

  depends_on "fzf" => :recommended
  depends_on "yq" => :recommended

  def install
    bin.install 'vrl'
  end
end
