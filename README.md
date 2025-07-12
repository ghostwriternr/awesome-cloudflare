# Awesome Cloudflare

> A curated list of **awesome resources, tools, frameworks, and articles** for the Cloudflare Developer Platform.
> Covers Workers, KV, R2, D1, Pages, Durable Objects, AI, and more.

## Contents

- [Official Resources](#official-resources)
- [Developer Tools & CLIs](#developer-tools--clis)
- [Edge Compute & Frameworks](#edge-compute--frameworks)
- [Storage & Databases](#storage--databases)
- [Monitoring & Analytics](#monitoring--analytics)
- [Networking & Tunneling](#networking--tunneling)
- [Security & Cryptography](#security--cryptography)

---

## Official Resources

- [Cloudflare Developer Documentation](https://developers.cloudflare.com/) - Comprehensive docs covering all Cloudflare products and APIs, from Workers and Pages to security and networking.
- [Cloudflare Developers Blog](https://blog.cloudflare.com/tag/developer/) - Official blog featuring technical deep-dives, announcements, and use cases for Cloudflare’s developer tools.
- [Cloudflare Community Forum](https://community.cloudflare.com/) - Active community for discussing Cloudflare products, getting help, and sharing use cases.

---

## Developer Tools & CLIs

- [Wrangler CLI](https://developers.cloudflare.com/workers/wrangler/) - The official CLI for building, previewing, and deploying Cloudflare Workers.
- [Create Cloudflare (C3)](https://developers.cloudflare.com/workers/wrangler/commands/#create-cloudflare-app) - Scaffolding CLI (`npm create cloudflare@latest`) for bootstrapping new Cloudflare apps with popular frameworks and bindings.
- [Miniflare](https://developers.cloudflare.com/workers/wrangler/local-development/#miniflare) - Fully local Cloudflare Workers simulator supporting D1, R2, KV, Durable Objects, and more.
- [Workerd Runtime](https://github.com/cloudflare/workerd) - Cloudflare’s open-source runtime for Workers, enabling Workers-compatible environments outside Cloudflare.
- [Wrangler GitHub Action](https://github.com/cloudflare/wrangler-action) - Official GitHub Action to deploy Workers automatically from your CI pipeline.
- [Workers Templates](https://github.com/cloudflare/worker-templates) - Official starter templates for building Workers with different stacks and patterns.

---

## Edge Compute & Frameworks

- [RedwoodSDK](https://redwood.dev/) - Full-stack React framework built for Cloudflare Workers with support for D1, KV, R2, Queues, and AI.
- [Hono](https://hono.dev/) - Ultra-fast web framework for Cloudflare Workers and other runtimes, using a high-performance Trie router.
- [itty-router](https://github.com/kwhitley/itty-router) - Lightweight, zero-dependency router optimized for Cloudflare Workers.
- [Cloudflare Frameworks Support](https://developers.cloudflare.com/workers/get-started/quickstarts/framework-guides/) - Official integrations for Next.js, Astro, SvelteKit, Remix, and more on Cloudflare’s platform.
- [Chanfana](https://github.com/cloudflare/chanfana) - Cloudflare’s tool for generating OpenAPI schemas and validation in Workers apps.
- [Workers RS (Rust)](https://github.com/cloudflare/workers-rs) - Write Cloudflare Workers in pure Rust compiled to WebAssembly for edge deployment.
- [Workers Py (Python)](https://github.com/cloudflare/workers-py) - Experimental project enabling Python support for Workers via Pyodide.
- [Next on Pages](https://github.com/cloudflare/next-on-pages) - CLI for deploying Next.js apps on Cloudflare Pages with support for SSR and edge functions.
- [PartyKit](https://github.com/partykit/partykit) - Framework for real-time apps and multiplayer experiences on Workers using Durable Objects.
- [Orange](https://github.com/cloudflare/orange) - Example app demonstrating Cloudflare Realtime (WebRTC) infrastructure for video/audio calls.

---

## Storage & Databases

- [Prisma ORM](https://www.prisma.io/docs/orm/reference/cloudflare-workers) - Type-safe ORM supporting Cloudflare Workers and D1 for building data-driven apps.

---

## Monitoring & Analytics

- [UptimeFlare](https://github.com/lyc8503/UptimeFlare) - Free serverless uptime monitoring and status pages powered by Cloudflare Workers and Pages.
- [Counterscale](https://counterscale.dev/) - Self-hosted, privacy-friendly analytics running entirely on Cloudflare Workers.

---

## Networking & Tunneling

- [Cloudflared (Cloudflare Tunnel)](https://github.com/cloudflare/cloudflared) - Securely expose local services to the internet via Cloudflare’s network.
- [Cloudflared-web](https://github.com/WisdomSky/Cloudflared-web) - Community-built web UI for managing Cloudflare Tunnels easily without the CLI.
- [Pingora](https://github.com/cloudflare/pingora) - High-performance Rust framework for building HTTP proxies and servers, used internally to replace Nginx.
- [Quiche](https://github.com/cloudflare/quiche) - Rust implementation of the QUIC protocol and HTTP/3 used in Cloudflare’s infrastructure.
- [Boringtun](https://github.com/cloudflare/boringtun) - Userspace WireGuard VPN implementation written in Rust.
- [ebpf_exporter](https://github.com/cloudflare/ebpf_exporter) - Prometheus exporter for custom eBPF metrics.
- [Wirefilter](https://github.com/cloudflare/wirefilter) - Rust engine for Wireshark-like packet filtering expressions.
- [Cloudflare Speedtest](https://github.com/cloudflare/network-quality) - Tool for measuring network performance against Cloudflare’s edge.

---

## Security & Cryptography

- [CFSSL](https://github.com/cloudflare/cfssl) - Cloudflare’s PKI/TLS toolkit for certificate management and cryptographic operations.
- [CIRCL](https://github.com/cloudflare/circl) - Cryptographic library implementing modern and post-quantum algorithms in Go.
- [Gokeyless](https://github.com/cloudflare/gokeyless) - Go implementation of Keyless SSL, enabling TLS without sharing private keys.
- [Flan Scan](https://github.com/cloudflare/flan) - Lightweight network vulnerability scanner built on top of Nmap.
- [Gokey](https://github.com/cloudflare/gokey) - Deterministic password manager in Go that generates site-specific passwords on the fly.
- [Privacy Pass Issuance](https://github.com/cloudflare/privacy-pass-issuance) - TypeScript library implementing Privacy Pass protocols for privacy-preserving authentication.

---

## Cloudflare AI

- [Cloudflare AI SDKs](https://github.com/cloudflare/ai) - SDKs and examples for integrating Cloudflare’s Workers AI with popular tooling like the Vercel AI SDK.
- [Cloudflare Agents](https://github.com/cloudflare/agents) - Framework for deploying AI-powered agents on Cloudflare Workers and Durable Objects.
- [Model Context Protocol (MCP) Server](https://github.com/cloudflare/mcp-server) - Server implementing MCP for managing context and state in LLM chat applications.

