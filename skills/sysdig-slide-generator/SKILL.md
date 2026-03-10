---
name: sysdig-slide-generator
description: >-
  Use when the user asks to create a presentation, generate slides, make a slide deck,
  build a Sysdig presentation, or needs reveal.js HTML slides following the Sysdig corporate
  template. Also use when the user mentions slide deck, keynote, conference talk, pitch deck,
  or investor deck in a Sysdig context. Generates self-contained reveal.js HTML presentations
  with speaker notes matching the Sysdig visual identity.
---

# Sysdig Slide Generator

Generates self-contained reveal.js HTML presentations matching the Sysdig corporate visual identity. Outputs a complete `presentation.html` file, a `speaker-notes.md` presenter script, and an `outline.md` structure overview.

## When to Use

- User asks to create slides, a presentation, or a deck
- User mentions Sysdig presentation, sales deck, conference talk, or pitch
- User provides reference materials and wants them turned into slides
- User wants speaker notes or a presentation script

## When NOT to Use

- Simple markdown documents or wiki pages
- Internal notes or documentation (not presentations)

---

## Phase 1: Input Gathering

Before generating anything, collect these inputs from the user. Ask for any that are missing.

### Required
- **Topic / working title** — What is the presentation about?
- **Target audience** — Who will see this? (customers, internal team, investors, conference attendees, executives)
- **Desired slide count** — Default: 15-20 slides

### Optional (use sensible defaults if not provided)
- **Reference materials** — Folder path containing PDFs, transcripts, markdown docs, or other sources to analyze
- **Speaker name and title** — For the cover slide (default: leave as placeholder)
- **Key messages** — Mandatory talking points that must appear
- **Tone** — Technical, executive, sales, educational (default: professional/technical)
- **Include Q&A slide** — yes/no (default: yes, use Closing slide)

---

## Phase 2: Reference Analysis

If the user provided reference materials, analyze them in parallel.

### Process
1. List all files in the references folder
2. For each file, launch a **parallel subagent** (using Task tool) to:
   - Read the file (PDF, markdown, transcript, etc.)
   - Extract: key points, notable quotes, data/statistics, narrative threads
   - Output a structured summary (~200-400 words)
3. Collect all summaries

### Subagent Prompt Template
```
Analyze the following document for use in a presentation about [TOPIC] for [AUDIENCE].

Extract and organize:
1. **Key Points** — The 3-5 most important takeaways relevant to the topic
2. **Quotes** — Any notable quotes that could appear on a slide (with attribution)
3. **Data/Statistics** — Numbers, percentages, comparisons that support the narrative
4. **Narrative Threads** — How this content connects to the broader topic

Be concise. Focus on what would work on a slide (short, impactful statements).
```

---

## Phase 3: Content Synthesis

Merge all reference analyses (or work from the topic alone if no references) into a presentation structure.

### Process
1. Define the **narrative arc**: Problem → Context → Solution → Evidence → Call to Action
2. Create a slide-by-slide outline with:
   - Slide number
   - Layout type (from the Layout Selection Table below)
   - Title text
   - Content summary (what goes on this slide)
   - Speaker notes summary
3. Write the outline to `outline.md`
4. Present the outline to the user for approval before generating HTML

### Outline Format
```markdown
# Presentation Outline: [Title]

## Slide 1 — Cover (slide-cover-dark)
**Title:** Secure Every Second
**Speaker:** [Name], [Title]
**Notes:** Welcome, introduce self, frame the problem

## Slide 2 — Agenda (slide-agenda)
**Items:** 1. Problem, 2. Approach, 3. Results, 4. Next Steps
**Notes:** Set expectations

## Slide 3 — Callout Dark (slide-callout-dark)
**Eyebrow:** THE CHALLENGE
**Headline:** 95% of container vulnerabilities are never exploited
**Notes:** Shock the audience with the data point...

...
```

### Structural Rules
- ALWAYS start with a Cover slide (Cover Lumin or Cover Dark)
- ALWAYS include an Agenda slide as slide 2 or 3
- Place Section Dividers between major topic shifts (vary the pattern: chevrons, diamonds, mountains)
- ALWAYS end with a Closing slide
- Never use more than 3 consecutive slides of the same layout type
- Use Quote slides and Callout slides to break up dense content
- Maximum 6 bullet points per content slide
- Aim for ~60/40 split: 60% content slides, 40% visual/structural slides (covers, dividers, quotes, callouts)

---

## Phase 4: HTML Generation

Once the outline is approved, generate the reveal.js HTML file.

### Process
1. Read `assets/template.html` — this is the HTML skeleton
2. Read `assets/sysdig-theme.css` — embed its contents in the `<style>` tag (replacing the `{{SYSDIG_THEME_CSS}}` placeholder)
3. Read `references/slide-layouts.md` — use the HTML templates for each slide
4. For each slide in the outline:
   - Select the correct layout template from slide-layouts.md
   - Fill in the content (title, body text, bullets, quotes, table data, etc.)
   - Add speaker notes in `<aside class="notes">` tags
   - For section dividers, the SVG backgrounds are handled by CSS classes — just apply the class
5. Replace `{{TITLE}}` in the HTML template with the presentation title
6. Replace `{{SLIDES}}` with all generated `<section>` elements
7. Write the complete HTML to `presentation.html` in the working directory

### HTML Assembly Order
```
1. Cover slide
2. Agenda slide
3. [Section Divider]
4. Content slides for section 1
5. [Section Divider]
6. Content slides for section 2
7. ... repeat ...
8. [Final Quote or Callout]
9. Closing slide
```

### Important Rules
- Every `<section>` must have exactly ONE layout class (e.g., `class="slide-one-col"`)
- Speaker notes go inside each `<section>` as `<aside class="notes">...</aside>`
- For highlighted text in quotes: `<span class="sysdig-highlight"><strong>phrase</strong></span>`
- For the quote icon SVG, copy it exactly from slide-layouts.md
- Tables use `class="sysdig-table"` with `class="col-highlight"` on the featured column
- The CSS handles all backgrounds, colors, and decorations — do NOT add inline styles
- Do NOT add `data-background-color` attributes — the CSS classes handle this

---

## Phase 5: Speaker Notes & Output

### Generate speaker-notes.md
```markdown
# Speaker Notes: [Title]

## Slide 1: [Slide Title]
[Full spoken script for this slide — 2-4 sentences, conversational tone]

## Slide 2: [Slide Title]
[Script continues...]

...
```

### Output Files
Write these files to the current working directory:
1. **`presentation.html`** — Self-contained reveal.js deck (open in any browser)
2. **`speaker-notes.md`** — Full presenter script
3. **`outline.md`** — Slide structure overview

### Post-Generation
After writing the files, run `scripts/open-presentation.sh presentation.html` to open in the default browser. Tell the user:
- Press **S** for speaker notes view
- Press **F** for fullscreen
- Press **Esc** for slide overview
- Append `?print-pdf` to the URL in Chrome for PDF export

---

## Layout Selection Quick Reference

| Content Type | Layout | CSS Class |
|---|---|---|
| Opening / first slide | Cover (Lumin or Dark) | `slide-cover-lumin` / `slide-cover-dark` |
| Agenda | Agenda | `slide-agenda` |
| Key points with bullets | One Column | `slide-one-col` |
| Key points (emphasis) | One Column Dark | `slide-one-col-dark` |
| Points + stat/callout | Content + Featured | `slide-content-featured` |
| Points + testimonial | Content + Quote | `slide-content-quote` |
| Comparison / side-by-side | Two Column | `slide-two-col` |
| Three related items | Three Column | `slide-three-col` |
| Text + image/visual | Right Side Image | `slide-image-right` |
| Data comparison (small) | Table / Chart | `slide-table` |
| Data comparison (wide) | Full Table | `slide-table-full` |
| Product UI walkthrough | UI Highlight | `slide-ui-highlight` |
| Diagram + credibility | Diagram + Quote | `slide-diagram-quote` |
| Section break | Section Divider | `slide-divider-chevron` / `-diamond` / `-mountain` / `-gradient` |
| Impact quote | Quote (full slide) | `slide-quote` |
| Bold statement / stat | Callout | `slide-callout-dark` / `slide-callout-lumin` |
| Final slide | Closing | `slide-closing` |

---

## Common Mistakes to Avoid

- **Too many bullets per slide** — Maximum 6 per slide. If you have more, split into two slides.
- **Skipping section dividers** — Place one between every major topic shift. They create visual rhythm.
- **Same layout 3+ times in a row** — Vary layouts to maintain visual interest.
- **Missing speaker notes** — Every slide must have notes. Notes are the presenter's safety net.
- **Accent colors for backgrounds** — Blue, red, yellow, purple are ONLY for diagrams and UI elements. Never for slide backgrounds.
- **Text overload** — If a slide has more than ~40 words of body text, it needs to be split or simplified.
- **Forgetting the highlight pattern** — In quotes, always highlight the most impactful phrase with `sysdig-highlight`.

---

## Resource Files

These are read on demand during generation:

| File | When to Read | Purpose |
|---|---|---|
| `assets/template.html` | Phase 4 | HTML skeleton with CDN links |
| `assets/sysdig-theme.css` | Phase 4 | CSS theme to embed in HTML |
| `references/slide-layouts.md` | Phase 4 | HTML templates per layout type |
| `references/sysdig-design-system.md` | If questions about colors/typography | Complete design token reference |
| `references/svg-decorations.md` | If generating custom SVG elements | SVG patterns for decorations |
| `references/revealjs-reference.md` | If questions about reveal.js config | API and feature reference |
