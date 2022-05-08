class Sentrypeer < Formula
  desc "Honeypot for a distributed p2p list of bad actor IP addresses and phone numbers"
  homepage "https://sentrypeer.org"
  url "https://github.com/SentryPeer/SentryPeer/releases/download/v1.4.1/sentrypeer-1.4.1.tar.gz"
  sha256 "2d1fc0ab77823958bedd903c473c397bb4d43885ffd01ab6d04a1993aa5dd59f"
  license any_of: ["GPL-2.0-only", "GPL-3.0-only"]

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "cmocka" => [:build, :test]
  depends_on "curl" => [:build, :test]
  depends_on "pkg-config" => :build
  depends_on "jansson"
  depends_on "libmicrohttpd"
  depends_on "libosip"
  depends_on "pcre2"
  depends_on "opendht"

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make", "install"
  end

  test do
    system "make", "check"
    system "sentrypeer", "-V"
  end
end
