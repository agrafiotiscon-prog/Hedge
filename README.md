# Hedge

Runs [virattt/ai-hedge-fund](https://github.com/virattt/ai-hedge-fund) (`aihf` 2.5.0) in your browser through GitHub Codespaces, with nothing to install on your computer.

Educational only: the app paper-trades with fake money and never places real trades.

## Open it

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/agrafiotiscon-prog/Hedge)

1. Click the button, then **Create codespace**.
2. Wait about 3 minutes while it installs the app.
3. The app opens in a new browser tab. If your browser blocks the tab, open the **Ports** panel and click the globe icon next to **AI Hedge Fund (8000)**.

You can also type `aihf` in the codespace terminal to run the same app there.

## API keys

You can look around the app without keys. Running a backtest or a paper-trading session needs:

- `FINANCIAL_DATASETS_API_KEY`: market data. Get a free key at [financialdatasets.ai](https://financialdatasets.ai).
- A key for the AI model the investor agents (Buffett, Graham, Munger and others) reason with. The default is Claude, so `ANTHROPIC_API_KEY`; press `m` in the app to pick OpenAI, Google, DeepSeek, xAI or Kimi instead.

The **Create codespace** page has boxes for the data key and the Anthropic key. If you leave them empty, the app asks for each key when you start your first run and saves it inside the codespace. To change them later, use **GitHub → Settings → Codespaces → Secrets** (give them access to this repository), then restart the codespace.

## Good to know

- The tab's address (`https://<codespace>-8000.app.github.dev`) is private to your GitHub account. It also opens on your phone if you're signed in to GitHub there, but the layout is built for a wide screen.
- A codespace stops after 30 minutes of inactivity. Reopen it from [github.com/codespaces](https://github.com/codespaces) and the app starts again with your funds and keys intact. Personal GitHub accounts include free Codespaces hours each month.
- Your funds, backtest results and saved keys live in `~/.hedge-fund/` inside the codespace.
