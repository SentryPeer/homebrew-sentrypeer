class Sentrypeer < Formula
  desc "SIP honeypot for a distributed p2p list of bad actor IP addresses and phone numbers"
  homepage "https://sentrypeer.org"
  url "https://github.com/SentryPeer/SentryPeer/releases/download/v0.0.5/sentrypeer-0.0.5.tar.gz"
  sha256 "db450f82aaf348ddb370937ead53f2df0a2d790b042a2c5c301c6e6f4847c67b"
  license any_of: ["GPL-2.0-only", "GPL-3.0-only"]

  depends_on "cmocka" => [:build, :test]
  depends_on "curl" => [:build, :test]
  depends_on "libosip"
  depends_on "jansson"
  depends_on "libmicrohttpd"
  depends_on "pcre2"

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make", "install"
  end

  test do
    system "make", "check"
    system "sentrypeer", "-V"
  end
end
