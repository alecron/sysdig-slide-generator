# sysdig-slide-generator

A Claude Code plugin that generates professional Sysdig-branded [reveal.js](https://revealjs.com/) presentations from reference materials. Provide a topic, audience, and optional source documents (PDFs, transcripts, markdown) and the skill orchestrates parallel AI agents to analyze references, synthesize content, and produce a self-contained HTML slide deck matching the Sysdig corporate visual identity.

## What You Get

- **`presentation.html`** -- Self-contained reveal.js deck (open in any browser, no server needed)
- **`speaker-notes.md`** -- Full presenter script
- **`outline.md`** -- Slide structure overview

## Example

See [`examples/cloud-security-2026/presentation.html`](examples/cloud-security-2026/presentation.html) for a 16-slide test deck exercising 12 different layout types.

## Installation

### As a Claude Code Plugin

```bash
# Add the marketplace
/plugin marketplace add alecron/sysdig-slide-generator

# Install the plugin
/plugin install sysdig-slide-generator
```

### As a Local Skill (alternative)

Clone the repo and symlink:

```bash
git clone https://github.com/alecron/sysdig-slide-generator.git ~/Developer/sysdig-slide-generator
ln -s ~/Developer/sysdig-slide-generator/skills/sysdig-slide-generator ~/.claude/skills/sysdig-slide-generator
```

## Usage

Once installed, the skill activates when you ask Claude Code to create a presentation, generate slides, or build a deck. You can also invoke it directly.

### Required Inputs

| Input | Description |
|-------|-------------|
| **Topic / title** | What is the presentation about? |
| **Target audience** | Customers, internal team, investors, conference, executives |
| **Slide count** | Default: 15-20 slides |

### Optional Inputs

| Input | Default |
|-------|---------|
| Reference materials folder | None (generates from topic alone) |
| Speaker name and title | Placeholder |
| Key messages | Inferred from references |
| Tone | Professional / technical |
| Include Q&A slide | Yes (Closing slide) |

### 5-Phase Workflow

1. **Input Gathering** -- Collect topic, audience, references
2. **Reference Analysis** -- Parallel agents analyze each source document
3. **Content Synthesis** -- Merge analyses into a narrative arc and slide outline
4. **HTML Generation** -- Assemble reveal.js HTML from layout templates + CSS theme
5. **Output** -- Write files and open in browser

## Available Slide Layouts

| Content Type | Layout | CSS Class |
|---|---|---|
| Opening slide | Cover (Lumin or Dark) | `slide-cover-lumin` / `slide-cover-dark` |
| Agenda | Agenda | `slide-agenda` |
| Key points with bullets | One Column | `slide-one-col` |
| Key points (emphasis) | One Column Dark | `slide-one-col-dark` |
| Points + stat/callout | Content + Featured | `slide-content-featured` |
| Points + testimonial | Content + Quote | `slide-content-quote` |
| Comparison | Two Column | `slide-two-col` |
| Three related items | Three Column | `slide-three-col` |
| Text + image | Right Side Image | `slide-image-right` |
| Data comparison (small) | Table / Chart | `slide-table` |
| Data comparison (wide) | Full Table | `slide-table-full` |
| Product UI | UI Highlight | `slide-ui-highlight` |
| Diagram + credibility | Diagram + Quote | `slide-diagram-quote` |
| Section break | Section Divider | `slide-divider-chevron` / `-diamond` / `-mountain` / `-gradient` |
| Impact quote | Quote | `slide-quote` |
| Bold statement / stat | Callout | `slide-callout-dark` / `slide-callout-lumin` |
| Final slide | Closing | `slide-closing` |

## Presentation Controls

| Key | Action |
|-----|--------|
| `S` | Speaker notes view |
| `F` | Fullscreen |
| `Esc` | Slide overview |
| Arrow keys | Navigate |

**PDF Export:** Append `?print-pdf` to the URL in Chrome, then Print > Save as PDF (landscape, no margins, background graphics enabled).

## Contributing

See [ROADMAP.md](ROADMAP.md) for planned improvements and open tasks. See [AGENTS.md](AGENTS.md) for development conventions.

## License

MIT
