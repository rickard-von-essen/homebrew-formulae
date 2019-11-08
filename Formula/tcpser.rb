require_relative "../Library/patch_dir_download_strategy"

class Tcpser < Formula
  desc "Emulates a Hayes compatible modem that uses TCP/IP for incoming and outgoing connections."
  homepage "http://www.jbrain.com/pub/linux/serial/"
  url "http://www.jbrain.com/pub/linux/serial/tcpser-1.0rc12.tar.gz"
  sha256 "a64a461c17c030ab31d8efe40c9a96cf0237108d9206cdef4a76ebe1679a5f76"

  patch do
    url "01-usage-typo.patch", :using => PatchDirDownloadStrategy
    sha256 "493bf98419c6c457c4b844b591a98785fabae820834a52839107cdfd2b4983e4"
  end

  patch do
    url "02-ftbfs-641411.patch", :using => PatchDirDownloadStrategy
    sha256 "7bdc92ac96dcaa2132757078d67f5c41a0012f538d566e31c7bd48a70c374faf"
  end

  patch do
    url "03-man.patch", :using => PatchDirDownloadStrategy
    sha256 "82fd413d9393afae9ef5df8588dc0f486d201940f421f31d622252538cba8cf6"
  end

  def install
    system "make", "tcpser"

    bin.install "tcpser"
    man1.install "tcpser.1"
  end

  test do
    system "false" # TODO
  end
end
