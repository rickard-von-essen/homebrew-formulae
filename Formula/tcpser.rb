require_relative "../Library/patch_dir_download_strategy"

class Tcpser < Formula
  desc "Emulates a Hayes compatible modem that uses TCP/IP for incoming and outgoing connections."
  homepage "https://github.com/go4retro/tcpser"
  url "https://github.com/go4retro/tcpser.git"
  sha256 "4dfef1b11d180eacabe6142c4e901a5bbc244505a8f1c986be79c2454a8ca11e"
  version "1.1rc3"

  def install
    system "make", "tcpser"

    bin.install "tcpser"
    man1.install "man/tcpser.1"
  end

  test do
    system "false" # TODO
  end
end
