# Awesome Cloudflare [![Awesome](https://awesome.re/badge-flat.svg)](https://awesome.re)

![Cloudflare logo](https://github.com/user-attachments/assets/e5b22d60-9f7a-4526-b827-b588e264f89d)
> A curated list of **awesome resources, tools, frameworks, and articles** for the [Cloudflare Developer Platform](https://www.cloudflare.com/en-gb/developer-platform/products/).
> Covers Workers, KV, R2, D1, Pages, Durable Objects, AI, and more.

## Contents

- [Official Resources](#official-resources)
- [Core Platform & SDKs](#core-platform--sdks)
- [Frameworks & Libraries](#frameworks--libraries)
- [Developer Tools](#developer-tools)
- [Templates & Examples](#templates--examples)
- [Infrastructure & Operations](#infrastructure--operations)
- [Networking & Performance](#networking--performance)
- [Security & Privacy](#security--privacy)
- [Data & Storage](#data--storage)
- [AI & Machine Learning](#ai--machine-learning)
- [Demos & Experiments](#demos--experiments)

---

## Official Resources

- [Cloudflare Developer Documentation](https://developers.cloudflare.com/) - Comprehensive docs covering all Cloudflare products and APIs, from Workers and Pages to security and networking.
- [Cloudflare Developers Blog](https://blog.cloudflare.com/tag/developer/) - Official blog featuring technical deep-dives, announcements, and use cases for Cloudflare's developer tools.
- [Cloudflare Community Forum](https://community.cloudflare.com/) - Active community for discussing Cloudflare products, getting help, and sharing use cases.

---

## Core Platform & SDKs

### Official SDKs
- [cloudflare-go](https://github.com/cloudflare/cloudflare-go) - Official Go library for the Cloudflare API with typed request/response objects and middleware support.
- [cloudflare-python](https://github.com/cloudflare/cloudflare-python) - Official Python SDK with sync/async support, Pydantic models, and comprehensive type safety.
- [cloudflare-typescript](https://github.com/cloudflare/cloudflare-typescript) - Official TypeScript library providing type-safe access to Cloudflare's REST API.

### Runtime & Core Tools
- [Workerd Runtime](https://github.com/cloudflare/workerd) - Cloudflare's open-source runtime for Workers, enabling Workers-compatible environments outside Cloudflare.
- [Miniflare](https://developers.cloudflare.com/workers/wrangler/local-development/#miniflare) - Fully local Cloudflare Workers simulator supporting D1, R2, KV, Durable Objects, and more.
- [Wrangler CLI](https://developers.cloudflare.com/workers/wrangler/) - The official CLI for building, previewing, and deploying Cloudflare Workers.

---

## Frameworks & Libraries

### Web Frameworks
- [Hono](https://hono.dev/) - Ultra-fast web framework for Cloudflare Workers and other runtimes, using a high-performance Trie router.
- [itty-router](https://github.com/kwhitley/itty-router) - Lightweight, zero-dependency router optimized for Cloudflare Workers.
- [Workers GraphQL Server](https://github.com/cloudflare/workers-graphql-server) - Apollo GraphQL server optimized for Workers with KV caching and TypeScript support.
- [PartyKit](https://github.com/partykit/partykit) - Framework for real-time apps and multiplayer experiences on Workers using Durable Objects.

### Language Support
- [Workers RS (Rust)](https://github.com/cloudflare/workers-rs) - Write Cloudflare Workers in pure Rust compiled to WebAssembly for edge deployment.
- [Workers Py (Python)](https://github.com/cloudflare/workers-py) - Experimental project enabling Python support for Workers via Pyodide.
- [Boring](https://github.com/cloudflare/boring) - BoringSSL bindings for Rust with TLS adapters for tokio and hyper.

### Utilities & Processing
- [LOL HTML](https://github.com/cloudflare/lol-html) - Low-latency streaming HTML rewriter in Rust with CSS selector API, powering Workers' HTMLRewriter.
- [HTML Rewriter WASM](https://github.com/cloudflare/html-rewriter-wasm) - WebAssembly implementation of HTMLRewriter for parsing and transforming HTML.
- [Chanfana](https://github.com/cloudflare/chanfana) - Cloudflare's tool for generating OpenAPI schemas and validation in Workers apps.
- [Workers OAuth Provider](https://github.com/cloudflare/workers-oauth-provider) - OAuth 2.1 provider for Workers with PKCE support and end-to-end encryption.

### Lua Libraries
- [Lua Resty JSON](https://github.com/cloudflare/lua-resty-json) - High-performance JSON parser with 30-50% faster performance than cjson.
- [Lua Cap'n Proto](https://github.com/cloudflare/lua-capnproto) - Pure Lua implementation of Cap'n Proto data interchange format.
- [Lua Aho-Corasick](https://github.com/cloudflare/lua-aho-corasick) - Efficient multi-pattern string matching algorithm implementation.

---

## Developer Tools

### CLI & Development
- [Create Cloudflare (C3)](https://developers.cloudflare.com/workers/wrangler/commands/#create-cloudflare-app) - Scaffolding CLI (`npm create cloudflare@latest`) for bootstrapping new Cloudflare apps with popular frameworks and bindings.
- [Wrangler GitHub Action](https://github.com/cloudflare/wrangler-action) - Official GitHub Action to deploy Workers automatically from your CI pipeline.
- [Puppeteer](https://github.com/cloudflare/puppeteer) - Fork of Puppeteer Core optimized for Cloudflare Browser Workers with minimal size.
- [WorkersKV GUI](https://github.com/cloudflare/workerskv.gui) - Cross-platform desktop GUI for exploring Workers KV Namespace data.

### Infrastructure as Code
- [Terraform Provider Cloudflare](https://github.com/cloudflare/terraform-provider-cloudflare) - Official Terraform provider for managing Cloudflare resources as Infrastructure as Code.
- [CF Terraforming](https://github.com/cloudflare/cf-terraforming) - CLI to convert existing Cloudflare resources into Terraform configurations.

### API & Documentation
- [API Schemas](https://github.com/cloudflare/api-schemas) - OpenAPI schemas for the Cloudflare API for building integrations.
- [JSON Schema Tools](https://github.com/cloudflare/json-schema-tools) - Monorepo of tools for JSON Schema processing and API documentation generation.

---

## Templates & Examples

### Starter Templates
- [Workers Templates](https://github.com/cloudflare/templates) - Starter templates for building full-stack serverless applications with multiple framework support.
- [Rust WASM Worker Template](https://github.com/cloudflare/rustwasm-worker-template) - Template for building Workers in Rust compiled to WebAssembly.
- [Worker Speedtest Template](https://github.com/cloudflare/worker-speedtest-template) - Internet speed test implementation with Performance Timing API.

### Example Applications
- [Workers Chat Demo](https://github.com/cloudflare/workers-chat-demo) - Real-time chat app demonstrating Durable Objects for stateful serverless applications.
- [Production SaaS](https://github.com/cloudflare/production-saas) - Example SaaS application showcasing best practices for building on Cloudflare's stack.
- [Orange](https://github.com/cloudflare/orange) - Example app demonstrating Cloudflare Realtime (WebRTC) infrastructure for video/audio calls.
- [D1 Northwind](https://github.com/cloudflare/d1-northwind) - Full-stack demo app showcasing D1 database with Workers, built with React and TypeScript.
- [Python Workers Examples](https://github.com/cloudflare/python-workers-examples) - Collection of Python Workers examples including FastAPI and LangChain integration.
- [Queues Web Crawler](https://github.com/cloudflare/queues-web-crawler) - Web crawler example using Queues, Browser Rendering, and Workers KV.

### Framework Integrations
- [Next on Pages](https://github.com/cloudflare/next-on-pages) - CLI for deploying Next.js apps on Cloudflare Pages with support for SSR and edge functions.
- [Cloudflare Frameworks Support](https://developers.cloudflare.com/workers/get-started/quickstarts/framework-guides/) - Official integrations for Next.js, Astro, SvelteKit, Remix, and more on Cloudflare's platform.

---

## Infrastructure & Operations

### Deployment & Management
- [Foundations](https://github.com/cloudflare/foundations) - Modular Rust toolkit for building distributed, production-grade systems with logging, tracing, and metrics.
- [Shellflip](https://github.com/cloudflare/shellflip) - Rust library for graceful process restarts enabling zero-downtime upgrades.
- [Tableflip](https://github.com/cloudflare/tableflip) - Go library for graceful process restarts without dropping connections.

### Certificate Management
- [Origin CA Issuer](https://github.com/cloudflare/origin-ca-issuer) - Kubernetes cert-manager issuer for Cloudflare Origin CA certificates.
- [CertMgr](https://github.com/cloudflare/certmgr) - Automated TLS certificate management using CFSSL with service restart capabilities.
- [Gokeyless](https://github.com/cloudflare/gokeyless) - Go implementation of Keyless SSL, enabling TLS without sharing private keys.

### Monitoring & Observability
- [AlertManager2ES](https://github.com/cloudflare/alertmanager2es) - Stores Prometheus AlertManager notifications in Elasticsearch for historical analysis.
- [UptimeFlare](https://github.com/lyc8503/UptimeFlare) - Free serverless uptime monitoring and status pages powered by Cloudflare Workers and Pages.
- [Counterscale](https://counterscale.dev/) - Self-hosted, privacy-friendly analytics running entirely on Cloudflare Workers.

### Database Tools
- [CF-PgBouncer](https://github.com/cloudflare/cf-pgbouncer) - Lightweight PostgreSQL connection pooler with TLS and PAM support.

### Specialized Services
- [Wildebeest](https://github.com/cloudflare/wildebeest) - ActivityPub and Mastodon-compatible server built on Cloudflare's stack.

---

## Networking & Performance

### Tunneling & Proxies
- [Cloudflared (Cloudflare Tunnel)](https://github.com/cloudflare/cloudflared) - Securely expose local services to the internet via Cloudflare's network.
- [Pingora](https://github.com/cloudflare/pingora) - High-performance Rust framework for building HTTP proxies and servers, used internally to replace Nginx.
- [MMProxy](https://github.com/cloudflare/mmproxy) - Lightweight TCP proxy that preserves client IP addresses when using proxy-protocol.
- [Cloudflared-web](https://github.com/WisdomSky/Cloudflared-web) - Community-built web UI for managing Cloudflare Tunnels easily without the CLI.

### Protocol Implementations
- [Quiche](https://github.com/cloudflare/quiche) - Rust implementation of the QUIC protocol and HTTP/3 used in Cloudflare's infrastructure.
- [Boringtun](https://github.com/cloudflare/boringtun) - Userspace WireGuard VPN implementation written in Rust.
- [ODoH-RS](https://github.com/cloudflare/odoh-rs) - Rust implementation of Oblivious DNS over HTTPS protocol for privacy-preserving DNS.

### Traffic Analysis & Filtering
- [BPF Tools](https://github.com/cloudflare/bpftools) - Packet analyst toolkit for analyzing pcap dumps and generating BPF filtering rules.
- [CBPFC](https://github.com/cloudflare/cbpfc) - Classic BPF to extended BPF compiler for kernel programming.
- [Rakelimit](https://github.com/cloudflare/rakelimit) - Multi-dimensional fair-share rate limiter in BPF for UDP traffic.
- [Wirefilter](https://github.com/cloudflare/wirefilter) - Rust engine for Wireshark-like packet filtering expressions.
- [ebpf_exporter](https://github.com/cloudflare/ebpf_exporter) - Prometheus exporter for custom eBPF metrics.
- [GoFlow](https://github.com/cloudflare/goflow) - High-scalability sFlow/NetFlow/IPFIX collector (deprecated, use goflow2).

### Performance Testing
- [Cloudflare Speedtest](https://github.com/cloudflare/speedtest) - Component to perform network speed tests against Cloudflare's edge network.

### Time Synchronization
- [Roughtime](https://github.com/cloudflare/roughtime) - Experimental secure clock synchronization protocol implementation.

### Data Processing
- [Go-Stream](https://github.com/cloudflare/go-stream) - Go framework for stream processing analysis with graph-based pipelines.

---

## Security & Privacy

### PKI & TLS
- [CFSSL](https://github.com/cloudflare/cfssl) - Cloudflare's PKI/TLS toolkit for certificate management and cryptographic operations.
- [SSL Config](https://github.com/cloudflare/sslconfig) - Cloudflare's battle-tested SSL configuration and OpenSSL patches for secure web servers.
- [TLS-Tris](https://github.com/cloudflare/tls-tris) - Experimental TLS 1.3 implementation for Go with enhanced protocol features.

### Cryptography
- [CIRCL](https://github.com/cloudflare/circl) - Cryptographic library implementing modern and post-quantum algorithms in Go.
- [ZKP-ECDSA](https://github.com/cloudflare/zkp-ecdsa) - Zero-knowledge proofs for ECDSA signatures enabling privacy-preserving verification.
- [Red October](https://github.com/cloudflare/redoctober) - Go server implementing two-man rule encryption with multi-party access control.

### Security Tools
- [Flan Scan](https://github.com/cloudflare/flan) - Lightweight network vulnerability scanner built on top of Nmap.
- [Sandbox](https://github.com/cloudflare/sandbox) - Simple Linux seccomp filtering library for dynamic and static executables.
- [SVG Hush](https://github.com/cloudflare/svg-hush) - Makes SVG files safe to serve by removing scripts and cross-origin resources.

### Privacy
- [Privacy Pass Issuer](https://github.com/cloudflare/privacypass-issuer) - TypeScript implementation of Privacy Pass protocol for Workers with Blind-RSA tokens.
- [Privacy Pass Extension](https://github.com/cloudflare/pp-browser-extension) - Browser extension implementing Privacy Pass protocol for unlinkable authentication.
- [UtahFS](https://github.com/cloudflare/utahfs) - FUSE-based encrypted filesystem with ORAM support for privacy-preserving cloud storage.

### Password Management
- [Gokey](https://github.com/cloudflare/gokey) - Deterministic password manager in Go that generates site-specific passwords on the fly.

---

## Data & Storage

### Databases
- [Prisma ORM](https://www.prisma.io/docs/orm/reference/cloudflare-workers) - Type-safe ORM supporting Cloudflare Workers and D1 for building data-driven apps.

### Storage Solutions
- [Serverless Registry](https://github.com/cloudflare/serverless-registry) - Lightweight container registry implementation using Workers and R2 with Docker-compatible workflows.

---

## AI & Machine Learning

- [Cloudflare AI SDKs](https://github.com/cloudflare/ai) - SDKs and examples for integrating Cloudflare's Workers AI with popular tooling like the Vercel AI SDK.
- [Cloudflare Agents](https://github.com/cloudflare/agents) - Framework for deploying AI-powered agents on Cloudflare Workers and Durable Objects.
- [MCP Server Cloudflare](https://github.com/cloudflare/mcp-server-cloudflare) - Model Context Protocol servers connecting LLMs to Cloudflare services for natural language interaction.
- [AI Utils](https://github.com/cloudflare/ai-utils) - Developer toolkit for Workers AI with embedded function calling and OpenAPI integration.

---

## Demos & Experiments

### Games & Fun
- [Doom WASM](https://github.com/cloudflare/doom-wasm) - WebAssembly port of Chocolate Doom with WebSockets multiplayer support.
- [Doom Workers](https://github.com/cloudflare/doom-workers) - Multiplayer Doom using Workers and WebSockets for real-time networking.

### Technical Demos
- [ChatGPT Plugin](https://github.com/cloudflare/chatgpt-plugin) - Example ChatGPT plugins using Workers with GitHub search and weather demos.
- [Turnstile Demo Workers](https://github.com/cloudflare/turnstile-demo-workers) - Demonstrates Cloudflare Turnstile bot protection with form implementations.
- [Workers Web Experiments](https://github.com/cloudflare/workers-web-experiments) - Advanced micro-frontend architecture experiments for serverless applications.

### Internet Infrastructure
- [Is BGP Safe Yet?](https://github.com/cloudflare/isbgpsafeyet.com) - Web service tracking BGP security through RPKI deployment status.
- [Saffron](https://github.com/cloudflare/saffron) - High-performance cron parser powering Workers Cron Triggers functionality.
