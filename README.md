# [Homebrew Tap](https://docs.brew.sh/Taps) formulae
[![Build and Test](https://github.com/SentryPeer/homebrew-sentrypeer/actions/workflows/main.yml/badge.svg)](https://github.com/SentryPeer/homebrew-sentrypeer/actions/workflows/main.yml)
[![Stability: Active](https://masterminds.github.io/stability/active.svg)](https://masterminds.github.io/stability/active.html)
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/sentrypeer/homebrew-sentrypeer?sort=semver)](https://github.com/SentryPeer/homebrew-sentrypeer/releases)

Install [SentryPeer](https://github.com/SentryPeer/SentryPeer) from this homebrew tap

    brew tap sentrypeer/sentrypeer
    brew install sentrypeer

## Build locally

    brew install --build-from-source ./sentrypeer.rb

## Testing and auditing the formula

    brew tap sentrypeer/sentrypeer
    brew install --include-test sentrypeer
    brew audit --strict --new --online
