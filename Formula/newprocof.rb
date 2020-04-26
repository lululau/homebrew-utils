class Newprocof < Formula
  desc "Git sub-command for cleanup current git repository without losses"
  homepage "https://liuxiang.coding.net/p/utils/d/utils/git/tree/master"
  url "https://liuxiang.coding.net/p/utils/d/utils/git/raw/master/newprocof.d/newprocof.d", using: :nounzip
  sha256 "c46f3bef9926cfec03812a6ed44306974fe1422e0abf12be47ecb6c216b94c16"
  version "1.0.0"

  def install
    bin.install 'newprocof.d'
  end
end
