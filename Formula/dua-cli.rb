class DuaCli < Formula
  desc "View disk space usage and delete unwanted data, fast"
  homepage "https://github.com/lululau/dua-cli"
  # lululau's fork of Byron/dua-cli with snapshot hotkeys:
  # `E` exports the scan to a cache dir, `R` rescans an imported snapshot and writes it back.
  url "https://github.com/lululau/dua-cli/archive/60135518ed8c2baafeef8dee87fb55c18af28e56.tar.gz"
  sha256 "1658b4b81944746e41604a11c304d64e4d2b9c86f05400f5ada4c099e14163fa"
  version "2.45.1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Test that usage is correct for these 2 files.
    (testpath/"empty.txt").write("")
    (testpath/"file.txt").write("01")

    # The "-EOS" is needed instead of "~EOS" in order to keep
    # the expected indentation at the start of each line.
    expected = <<-EOS
      0  B #{testpath}/empty.txt
      2  B #{testpath}/file.txt
      2  B total
    EOS

    assert_equal expected, shell_output("#{bin}/dua -A #{testpath}/*.txt")
  end
end
