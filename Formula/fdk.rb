class Fdk < Formula
  desc "Docker CLI client using fzf"
  homepage "https://github.com/lululau/utils/tree/master"
  url "https://github.com/lululau/fzf-docker/archive/refs/tags/1.0.1.zip"
  sha256 "86a1154eb9d13f84c656ae602a4b1552bc5cc86db1997b2b073063980c8244cc"
  version "1.0.1"

  depends_on "fzf"

  def install

    bin.install 'fdk'
    bin.install 'fdkx'
    bin.install 'fdki'
    bin.install 'fdkc'
  end
end
