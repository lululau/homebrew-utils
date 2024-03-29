class MountBrewPythonIntoPyenv < Formula
  desc "Mount Homebrew installed python into pyenv"
  homepage "https://github.com/lululau/utils/tree/master"
  url "https://github.com/lululau/utils/raw/master/mount-brew-python-into-pyenv/mount-brew-python-into-pyenv", using: :nounzip
  sha256 "8c8f38b99cbece231e0771f4692eed8ced513753043aa0970e1b3e2f19efef13"
  version "1.0.0"

  def install
    bin.install 'mount-brew-python-into-pyenv'
  end
end
