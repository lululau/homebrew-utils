class Ccal < Formula
  desc "CLI China Lunar Calender"
  homepage "https://github.com/lululau/utils/tree/master"
  url "https://github.com/lululau/utils/raw/master/ccal/ccal-1.0.1.zip"
  sha256 "e3c0e50d859d0d777494eae875307e3c2565ef84753db54fc402f129f33328e7"
  version "1.0.1"

  def install
    bin.install 'ccal'
    lib.install 'ccal-lib'
  end
end
