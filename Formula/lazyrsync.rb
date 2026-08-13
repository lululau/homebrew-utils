class Lazyrsync < Formula
  desc "Terminal UI for rsync — profiles, dry-run preview, live progress"
  homepage "https://lazyrsync.westpoint.io/"
  url "https://github.com/lululau/lazyrsync/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "9ec94e72566599dc6aa14bd8046f4aa91def6de76890607d96ff2ccb1384cbfb"
  version "0.3.1"
  license "MIT"
  head "https://github.com/lululau/lazyrsync.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyrsync --version")
  end
end
