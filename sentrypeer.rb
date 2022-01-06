class Sentrypeer < Formula
  desc "SIP honeypot for a distributed p2p list of bad actor IP addresses and phone numbers"
  homepage "https://sentrypeer.org"
  url "https://github.com/SentryPeer/SentryPeer/releases/download/v0.0.4/sentrypeer-0.0.4.tar.gz"
  sha256 "e9ab67001d6a49e808b8cc4cc0f8520ed75a2456be041a3c9b7c4543231751fb"
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
