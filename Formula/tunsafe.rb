class Tunsafe < Formula
  desc "High performance and secure VPN client that uses the WireGuard protocol"
  homepage "https://tunsafe.com/"
  url "https://github.com/TunSafe/TunSafe/archive/v1.5-rc1.tar.gz"
  sha256 "9fa945066049dfa0fc8029b418fd0fc256639a7339a25510d40a147510b72f58"
  head "https://github.com/TunSafe/TunSafe.git"

  # depends_on "clang6" => :build

  def install
    system "make"
    bin.install "tunsafe"
  end

  test do
    assert_true shell_output("#{bin}/tunsafe genkey").strip.end_with?("=")
  end
end
