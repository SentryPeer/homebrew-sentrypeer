class Sentrypeer < Formula
  desc "Honeypot for a distributed p2p list of bad actor IP addresses and phone numbers"
  homepage "https://sentrypeer.org"
  url "https://github.com/SentryPeer/SentryPeer/releases/download/v3.0.2/sentrypeer-3.0.2.tar.gz"
  sha256 "10c21bcf7521949b0935124ed2f11b5d98f7879fc9e567c9a7ebd9cafbed8667"
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
