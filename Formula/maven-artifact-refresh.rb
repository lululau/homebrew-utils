class MavenArtifactRefresh < Formula
  desc "A small script for refresh artifact in local .m2 Maven repository"
  homepage "https://liuxiang.coding.net/p/utils/d/utils/git/tree/master"
  url "https://liuxiang.coding.net/p/utils/d/utils/git/raw/master/maven-artifact-refresh/maven-artifact-refresh-1.0.0.zip"
  sha256 "5c47e061b7304cae65b311712cb993177ed426c28e8d523453c0e69d73e7144e"
  version "1.0.0"

  depends_on "fzf" => :recommended

  def install
    bin.install 'mar'
    bin.install 'mad'
  end
end
