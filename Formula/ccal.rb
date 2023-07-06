class Ccal < Formula
  desc "CLI China Lunar Calender"
  homepage "https://liuxiang.coding.net/p/utils/d/utils/git/tree/master"
  url "https://liuxiang.coding.net/p/utils/d/utils/git/raw/master/ccal/ccal-1.0.0.zip"
  sha256 "cc2aee1dda6fbab84e2c50869d6d5b7c7232b8ca13128ac02c2f32a264d75713"
  version "1.0.0"

  def install
    bin.install 'ccal'
    lib.install 'ccal-lib'
  end
end
