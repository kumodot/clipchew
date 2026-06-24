<p align="center">
  <img src="ClipChew_banner.gif" alt="ClipChew in action" width="800">
</p>

# ClipChew 🐊

🇧🇷 **[Leia em Português (Brasil) →](LEIA-ME.md)**

**Chew. Process. Paste.**

A tiny floating button for Windows that rewrites whatever text you copy — polish it, shorten it, translate it, fix it — using a **local AI model**. Nothing leaves your computer: no cloud, no accounts, no API keys.

Type a message in Slack, copy it, hit a shortcut, and ClipChew puts the improved version back on your clipboard, ready to paste.

<p align="center">
  <img src="ClipChew_banner.jpg" alt="The ClipChew floating button" width="280">
</p>

---

## Contents

- [Requirements](#requirements)
- [Installation](#installation)
  - [Step 1 — Install Python](#step-1--install-python)
  - [Step 2 — Install the Python add-ons](#step-2--install-the-python-add-ons-clipchew-needs)
  - [Step 3 — Install Ollama and a model](#step-3--install-ollama-and-download-an-ai-model)
  - [Step 4 — Get ClipChew and run it](#step-4--get-clipchew-and-run-it)
- [How to use it](#how-to-use-it)
- [Settings](#settings)
- [Choosing a model](#choosing-a-model)
- [Troubleshooting](#troubleshooting)
- [Privacy](#privacy)
- [For developers](#for-developers)
- [License](#license)

---

## Requirements

| What | Details |
|---|---|
| **OS** | Windows 10 or 11 |
| **Python** | 3.9+ (with "Add to PATH" enabled) |
| **Python packages** | `requests`, `pyperclip`, `keyboard`, `pillow` |
| **Ollama** | Installed and running ([ollama.com](https://ollama.com/download)) |
| **An Ollama model** | Any model you've pulled — ClipChew works with **any model installed in Ollama**. A small, fast one is recommended (see [Choosing a model](#choosing-a-model)). |
| **Disk space** | ~3–5 GB for a small model |
| **Setup time** | ~10 minutes, one time |

> ClipChew is **not** tied to any specific model. Whatever you've pulled with `ollama pull` shows up in Settings and you can switch freely — even per preset.

---

## Installation

You'll install three things: **Python**, **Ollama** (the local AI engine), and **ClipChew** itself. Just follow the steps in order.

---

## Step 1 — Install Python

1. Go to **https://www.python.org/downloads/** and click the big yellow **Download Python** button.
2. Run the installer.
3. **IMPORTANT:** on the first screen, check the box **"Add python.exe to PATH"** at the bottom, then click **Install Now**.
4. When it finishes, click **Close**.

To confirm it worked: open the **Start menu**, type `cmd`, press Enter, and in the black window type:

```
python --version
```

You should see something like `Python 3.12.x`.

---

## Step 2 — Install the Python add-ons ClipChew needs

In that same black window (Command Prompt), paste this line and press Enter:

```
pip install requests pyperclip keyboard pillow
```

Wait for it to finish (you'll see "Successfully installed ...").

---

## Step 3 — Install Ollama and download an AI model

Ollama is the free program that runs the AI on your own machine.

1. Go to **https://ollama.com/download** and download the **Windows** version.
2. Run the installer and follow the prompts. When it's done, Ollama runs quietly in the background (look for its icon near the clock).
3. Now download an AI model. Open Command Prompt again and run:

```
ollama pull gemma3:4b
```

This downloads a few GB — give it a minute. When it finishes, ClipChew is ready to think.

> **Want better results?** Bigger models follow instructions (like keeping the original language) more reliably. If your PC can handle it, try:
> ```
> ollama pull qwen2.5:7b
> ```
> You can switch between any installed models later, right inside ClipChew's Settings.

---

## Step 4 — Get ClipChew and run it

1. Download this project (green **Code** button → **Download ZIP**) and unzip it anywhere, for example `Documents\ClipChew`.
2. Open that folder and **double-click `ClipChew.bat`**.

A small floating button appears on your screen. That's it! 🎉

> The little dot on the button is **green** when the AI is ready and **red** if Ollama isn't running.

---

## How to use it

1. **Select** some text in any app (Slack, email, browser…).
2. Press a **shortcut** — `Ctrl+Shift+F1`, `F2`, `F3`… each one is a different preset.
3. ClipChew copies your selection, rewrites it, and puts the result back on your clipboard.
4. Press **`Ctrl+V`** to paste the improved version.

You can also **click the button** to run the current preset, or **scroll the mouse wheel** over it to switch presets.

### The built-in presets

| Shortcut | Preset | What it does |
|---|---|---|
| `Ctrl+Shift+F1` | Polish it | Clean, natural, professional rewrite |
| `Ctrl+Shift+F2` | Fix it! | Fix grammar, spelling and typos |
| `Ctrl+Shift+F3` | Shorten it | Make it shorter and tighter |
| `Ctrl+Shift+F4` | Polish + Shorten | Both at once |
| `Ctrl+Shift+F5` | Translate to EN | Translate into English |
| `Ctrl+Shift+F6` | Translate to PT-BR | Translate into Brazilian Portuguese |
| `Ctrl+Shift+F7` | Caveman Token Saver | Ultra-short technical English |
| `Ctrl+Shift+F8` | Formalize | More formal and polite |
| `Ctrl+Shift+F9` | Humanize | Sound like a real person |
| `Ctrl+Shift+F10` | Email | Format as a complete email |
| `Ctrl+Shift+F12` | (Global run) | Run whichever preset is active |

> Most presets keep the **original language** of your text — write in English, get English back; write in Portuguese, get Portuguese back.

---

## Settings

**Right-click** the button → **Settings…** to:

- Add, edit, delete and **drag to reorder** presets (the shortcut number follows the position)
- Write your own AI instructions for each preset
- Pick a **button color** per preset
- Choose which **Ollama model** to use
- Turn **auto-copy** / **auto-paste** on or off
- Set the **Global run** shortcut
- Launch ClipChew automatically when Windows starts

<p align="center">
  <img src="ClipChew_settings.jpg" alt="ClipChew Settings window" width="640">
</p>

---

## Choosing a model

ClipChew runs on **any model you've installed in Ollama** — just `ollama pull` it and pick it in Settings. The trade-off is simple: **smaller = faster replies**, **bigger = better instruction-following** (especially for "keep the original language").

For snappy, near-instant rewrites on a typical laptop, start with a **lightweight** model:

| Model | Pull command | Notes |
|---|---|---|
| **Gemma 3 1B** | `ollama pull gemma3:1b` | Tiny and very fast — great for quick fixes/shortening. |
| **Llama 3.2 3B** | `ollama pull llama3.2:3b` | Fast, well-rounded default. |
| **Gemma 3 4B** | `ollama pull gemma3:4b` | The recommended balance of speed and quality. |
| **Qwen 2.5 7B** | `ollama pull qwen2.5:7b` | Best instruction-following here; needs a bit more RAM/time. |

**Tip:** you can assign a different model to each preset. Use a tiny model for "Shorten it" / "Fix it!" (where speed matters), and a larger one for "Email" or "Translate" (where quality matters). Set the default model — and the per-preset overrides — in **Settings**.

---

## Troubleshooting

**The dot is red / "Ollama offline"**
Ollama isn't running. Open the Start menu, run **Ollama**, and wait a few seconds. Make sure you did Step 3.

**Shortcuts do nothing**
Make sure only one copy of ClipChew is running (check the Task Manager for `python.exe` / `pythonw.exe`). Close extras and start it again.

**It translated my text when it shouldn't**
Small models sometimes slip. Open **Settings** and switch to a bigger model like `qwen2.5:7b` (after `ollama pull qwen2.5:7b`).

**Nothing gets copied / "is any text selected?"**
Select the text before pressing the shortcut, and make sure auto-copy is on in Settings.

---

## Privacy

ClipChew is **100% local**. Your text is processed by Ollama on your own computer and never sent anywhere. There are no accounts, no telemetry, and no API keys.

---

## For developers

ClipChew is a single Python file (`clipchew.py`) using only Tkinter and the Windows API via `ctypes`.

On first run, ClipChew creates its own `config.json` from built-in defaults — you don't need to ship one. A reference copy of the default presets and settings lives in **`config.example.json`** if you want to inspect or pre-seed it manually.

---

## License

ClipChew is free and open source, released under the **GNU General Public License v3.0** (see [`LICENSE`](LICENSE)). You are free to use, study, modify and share it, as long as derivative works remain under the GPL.

**Commercial licensing:** If you want to use ClipChew in a proprietary/closed-source product without the obligations of the GPL, a separate commercial license is available. Contact **Marcelo Souza** at marcelo@3donline.com.br.

---

Built by Marcelo Souza · Powered by [Ollama](https://ollama.com)
