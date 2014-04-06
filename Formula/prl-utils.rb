require 'formula'

class PrlVirtualizationSDK9 < Requirement
  fatal true

  def parallels_virtualization_sdk
    '/Library/Frameworks/ParallelsVirtualizationSDK.framework'
  end

  def satisfied?
    File.exist? parallels_virtualization_sdk
  end

  def message; <<-EOS.undent
    Requires Parallels Virtualization SDK 9 for Mac, download and install it from:
    http://www.parallels.com/downloads/desktop/
    EOS
  end
end

class PrlUtils < Formula

  homepage 'https://github.com/rickard-von-essen/prl-utils'
  head "https://github.com/rickard-von-essen/prl-utils", :using => :git, :branch => "master"

  depends_on PrlVirtualizationSDK9

  def install
    system "make", "PREFIX=#{prefix}"
  end

  test do
    #system "#{bin}/prltype"
  end

end
