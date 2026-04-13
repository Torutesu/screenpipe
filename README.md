# SHOGUN AI 将軍

> Work Memory + Always-on Agent. For those who move fast.

[Website](https://syogun.com) · [Docs](https://docs.syogun.com)

---

## What is SHOGUN?

SHOGUN records your screen, audio, and keyboard 24/7 — all local, all yours.
It builds a persistent Work Memory layer so your AI agent always knows what you're doing,
what you decided, and what comes next.

- **local-first** — your data never leaves your machine
- **always-on** — passive capture, zero friction
- **agent-ready** — pipe any LLM into your work context

> "Littlebird remembers. SHOGUN acts."

## Quick Start

### macOS / Linux

```bash
curl -fsSL https://syogun.com/install | sh
shogun record
```

### Windows

Download from [syogun.com/download](https://syogun.com/download) or use the desktop app.

## Blade Store

Browse and install community blades (automation plugins):

```bash
shogun blade list
shogun blade install meeting-summary
```

## Architecture

SHOGUN is built with Rust (backend) + Tauri + Next.js (desktop app).

- `crates/` — Core Rust crates (capture, audio, vision, server)
- `apps/` — Desktop application (Tauri + Next.js)

## MCP Server

SHOGUN works as an MCP server for Claude, Cursor, and other AI tools:

```bash
shogun mcp setup
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT · Built by [Select KK](https://syogun.com)

SHOGUN is built on top of [Screenpipe](https://github.com/mediar-ai/screenpipe) (MIT).
