require_relative "../Library/patch_dir_download_strategy"

class Tcpser < Formula
  desc "Emulates a Hayes compatible modem that uses TCP/IP for incoming and outgoing connections."
  homepage "https://github.com/go4retro/tcpser"
  url "https://github.com/go4retro/tcpser.git"
  sha256 "ff8ce62377f3918db0329fb9ee93b58f63181a387a5199e2557ea8041d874912"
  version "1.1.4"

  def install
    system "make", "tcpser"

    bin.install "tcpser"
    man1.install "man/tcpser.1"
  end

  test do
    system "false" # TODO
  end
end
