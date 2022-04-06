class DuaCli < Formula
  desc "View disk space usage and delete unwanted data, fast"
  homepage "https://lib.rs/crates/dua-cli"
  url "https://github.com/Byron/dua-cli/archive/refs/tags/v2.17.1.tar.gz"
  sha256 "d9af81b30f83d080472e91da3e07b42294904827ad5274d9aaf51d346072d2f1"
  license "MIT"

  depends_on "rust" => :build

  patch do
    url "https://raw.githubusercontent.com/lululau/homebrew-utils/master/Patches/dua-cli.diff"
    sha256 "e293515c1d9b73091f033da882ee5b7291f26586ea2f312e48297e6785a02956"
  end

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
