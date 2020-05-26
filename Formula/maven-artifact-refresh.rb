class MavenArtifactRefresh < Formula
  desc "A small script for refresh artifact in local .m2 Maven repository"
  homepage "https://liuxiang.coding.net/p/utils/d/utils/git/tree/master"
  url "https://liuxiang.coding.net/p/utils/d/utils/git/raw/master/maven-artifact-refresh/maven-artifact-refresh-1.0.1.zip"
  sha256 "60919e4a77f347e9fd27439ab58a481b98a1c4a1314416fd331e75ce042fa400"
  version "1.0.1"

  depends_on "fzf" => :recommended

  def install
    bin.install 'mar'
    bin.install 'mad'
  end
end
