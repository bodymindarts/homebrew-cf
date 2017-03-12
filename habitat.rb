# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Habitat < Formula
  desc ""
  homepage "habitat.sh"
  v = "v0.19.0" # CI Managed
  # remove v from version number
  @@verNum = v.sub "v", ""

  version v
  url "https://github.com/habitat-sh/habitat/archive/#{@@verNum}.zip"
  sha256 "8b0771bfa8140ff1d9959ef9e93e1a51363292ac5e578986cfe805aa081c031f" #CI Managed

  def install
    system "./components/hab/install.sh", "-v", "#{@@verNum}"
  end

  test do
    system "#{bin}/hab -V"
  end
end

