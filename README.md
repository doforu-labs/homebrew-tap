# Doforu Homebrew Tap

Homebrew tap for [Doforu](https://doforu.ai/) — a local-first AI agent runtime with multi-agent orchestration.

## Requirements

- macOS 12 (Monterey) or newer
- [Homebrew](https://brew.sh/) 6.0 or newer

## Install

> **Important:** since Homebrew 6.0, third-party taps are not trusted automatically.
> You must `brew tap` this repository first — Homebrew will no longer do it for you.

### Option A — fully qualified name (2 commands, recommended)

```sh
brew tap doforu-labs/tap
brew install --cask doforu-labs/tap/doforu
```

### Option B — trust the whole tap, then use the short name

```sh
brew tap doforu-labs/tap
brew trust doforu-labs/tap
brew install --cask doforu
```

Option B lets you use `brew install --cask doforu` / `brew upgrade --cask doforu` from then on.

## Upgrade

```sh
brew upgrade --cask doforu
```

## Uninstall

Remove the application only:

```sh
brew uninstall --cask doforu
```

Remove the application **and** its user data (`~/.doforu`, preferences, caches):

```sh
brew uninstall --zap --cask doforu
```

## Notes

- The application is code-signed with a Developer ID certificate and notarized by Apple,
  so it passes Gatekeeper without any extra steps.
- This tap only distributes the prebuilt `.dmg` published by Doforu.
- Versions are synced from <https://files.doforu.ai/downloads/latest-mac.yml>.

## Troubleshooting

**`Error: Cask 'doforu' is unavailable`**
You forgot to tap first. Run `brew tap doforu-labs/tap`.

**`Error: Refusing to load cask doforu-labs/tap/doforu from untrusted tap`**
Install with the fully qualified name (Option A), or run `brew trust doforu-labs/tap`.

**`brew search doforu` returns nothing**
That is expected: third-party taps are not indexed by Homebrew's search API.
You need to know the tap name in advance.
