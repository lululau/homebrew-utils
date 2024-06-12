class Fdk < Formula
  desc "Docker CLI client using fzf"
  homepage "https://github.com/lululau/utils/tree/master"
  url "https://github.com/lululau/fzf-docker/archive/refs/tags/1.0.0.zip"
  sha256 "c952a6cc1217274d772ea290ff012072a2980830b544dd65e04860bb1ade2e0a"
  version "1.0.0"

  depends_on "fzf"

  def install

    bin.install 'fdk'
    bin.install 'fdkx'
    bin.install 'fdki'
    bin.install 'fdkc'
  end
end
