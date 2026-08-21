# OLS Governance Sandbox

A single self-contained HTML file: `governance-sandbox.html`. Open it directly in a browser — no build step, no server, no dependencies.

## Hosting

This folder is set up to deploy to **GitHub Pages** via `.github/workflows/pages.yml` — it publishes this `sandbox/` directory as a static site on every push to `main` (or manual dispatch), no build step involved. `index.html` here just redirects to `governance-sandbox.html` so the site root opens the app directly.

**One-time setup** (repo admin, ~30 seconds): GitHub → this repo → **Settings → Pages → Build and deployment → Source: "GitHub Actions"**. After that, the workflow runs automatically and the URL is shown on that same Settings → Pages screen (and as the workflow's deployment URL) — typically `https://<org>.github.io/<repo>/`.

Because it's fully client-side, GitHub Pages (or any static host — Netlify, Cloudflare Pages, S3, etc.) is sufficient; nothing here needs a server.

It lets you define Ecosystems, Agents, Apps (archetype × ecosystem) and Labs (hypothesis + scenario), then run an app inside a lab and read a risk report mapped to the [OLS-RAF v1.0](../framework/OLS-RAF-v1.0.md) framework.

## Simulated vs. live

Every agent defaults to **sim** — a fully offline, seeded, reproducible simulation. No key, no network calls, works exactly as a governance-pattern teaching tool always did.

Any agent can instead be pointed at a real model:

- **Frontier** — Anthropic, OpenAI, Google (Gemini), DeepSeek, Kimi (Moonshot AI)
- **Edge** — Ollama, for a local/on-device model
- **Custom** — any OpenAI-compatible `chat/completions` endpoint (vLLM, LM Studio, LiteLLM, your own proxy)

Set these up in the **Connections** view. Then in **Agent factory**, switch an agent's provider from `sim` to a configured one. In the **Run console**, turning on **Live calls** makes that run's connected steps hit the real API — real tokens, real cost, real latency, real model output in the console — while the OLS-RAF risk-event overlay (which failure modes "fire," at what seed) stays exactly as scripted, by design, so lab results stay reproducible regardless of which model actually ran.

## This is a client-only tool

There is no backend. API keys you enter in Connections are stored only in this browser's `localStorage` and sent directly from this page to each provider's API. That means:

- Nothing passes through any server of ours.
- Anyone with access to this browser profile can read the keys from DevTools — don't use a key with more privilege or budget than you're willing to expose client-side.
- Some providers (OpenAI, DeepSeek, Kimi at time of writing) do not send CORS headers on browser-origin requests, so a direct call from this page will typically fail with a network error. Use the **Test connection** button in Connections to check; if it fails, point that provider's base URL at your own CORS-forwarding proxy, or use the **Custom** provider slot for anything OpenAI-compatible you host yourself. Anthropic and Google generally do allow direct browser calls.

Pricing shown per provider is a user-editable estimate for the sandbox's cost display, not a live price feed — verify current pricing with the provider before relying on it for real budgeting.
