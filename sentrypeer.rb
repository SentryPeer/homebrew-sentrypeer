class Sentrypeer < Formula
  desc "Honeypot for a distributed p2p list of bad actor IP addresses and phone numbers"
  homepage "https://sentrypeer.org"
  url "https://github.com/SentryPeer/SentryPeer/releases/download/v2.0.1/sentrypeer-2.0.1.tar.gz"
  sha256 "358cc2ee99fade7d91f5e41f9a0a94e7526f96f61b4bbcd91aa34c3ac079aaa3"
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
  depends_on "curl"

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make", "install"
  end

  test do
    system "make", "check"
    system "sentrypeer", "-V"
  end
end
