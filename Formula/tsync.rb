class Tsync < Formula
  desc "Simple script for send COMMAND text to tmux's panes"
  homepage "https://liuxiang.coding.net/p/utils/d/utils/git/tree/master"
  url "https://liuxiang.coding.net/p/utils/d/utils/git/raw/master/tsync/tsync", using: :nounzip
  sha256 "f6e4479e29a7de6ac555200325eea993bfa63269308111065ee68ea93bd8529b"
  version "1.0.0"

  def install
    bin.install 'tsync'
  end
end
