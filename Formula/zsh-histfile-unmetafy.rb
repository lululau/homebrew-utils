class ZshHistfileUnmetafy < Formula
  desc "View disk space usage and delete unwanted data, fast"
  homepage "https://github.com/lululau/zsh-histfile-unmetafy"
  url "https://github.com/lululau/zsh-histfile-unmetafy/archive/refs/heads/master.zip"
  sha256 "b19a3575d6922183a35454f7dc7ddef25da960af7297df84d79251738dbc4d47"
  version "1.0.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
