class Ccal < Formula
  desc "CLI China Lunar Calender"
  homepage "https://liuxiang.coding.net/p/utils/d/utils/git/tree/master"
  url "https://liuxiang.coding.net/p/utils/d/utils/git/raw/master/ccal/ccal-1.0.0.zip"
  sha256 "e97f45e769283bc35df4b46047a652b9a21b44d54043168cb096d4dcb8c74a4a"
  version "1.0.0"

  def install
    bin.install 'ccal'
    lib.install 'ccal-lib'
  end
end
