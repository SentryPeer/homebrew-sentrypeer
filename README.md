# [Homebrew Tap](https://docs.brew.sh/Taps) formulae
[![Build and Test](https://github.com/SentryPeer/homebrew-sentrypeer/actions/workflows/main.yml/badge.svg)](https://github.com/SentryPeer/homebrew-sentrypeer/actions/workflows/main.yml)

Install [SentryPeer](https://github.com/SentryPeer/SentryPeer) from this homebrew tap

    brew tap sentrypeer/sentrypeer
    brew install sentrypeer

## Build locally

    brew install --build-from-source ./sentrypeer.rb

## Testing and auditing the formula

    brew tap sentrypeer/sentrypeer
    brew install --include-test sentrypeer
    brew audit --strict --new --online
