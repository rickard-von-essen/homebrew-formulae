require_relative "../Library/patch_dir_download_strategy"

class Tcpser < Formula
  desc "Emulates a Hayes compatible modem that uses TCP/IP for incoming and outgoing connections."
  homepage "https://github.com/go4retro/tcpser"
  url "https://github.com/go4retro/tcpser.git", :rev => "e641bc961d618401a9443dc02468f5549401e79d"
  version "1.1rc1-1"

  def install
    system "make", "tcpser"

    bin.install "tcpser"
    man1.install "man/tcpser.1"
  end

  test do
    system "false" # TODO
  end
end
