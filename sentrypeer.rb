class Sentrypeer < Formula
  desc "Honeypot for a distributed p2p list of bad actor IP addresses and phone numbers"
  homepage "https://sentrypeer.org"
  url "https://github.com/SentryPeer/SentryPeer/releases/download/v3.0.1/sentrypeer-3.0.1.tar.gz"
  sha256 "7485ceaa06c58fcde6f9b0763988d5a405802ded218357991e898d91d821748f"
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
