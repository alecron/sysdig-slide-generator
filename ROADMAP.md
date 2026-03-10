# Roadmap

Planned improvements and open tasks for the sysdig-slide-generator plugin. Contributions welcome.

## High Priority

- [ ] **Add real Sysdig SVG logo** -- Replace the text "sysdig" placeholder in cover, closing, and footer with the actual Sysdig logo as inline SVG. Should toggle dark/white via CSS `currentColor`.
- [ ] **Support image insertion** -- Allow users to provide image paths for `slide-image-right`, `slide-ui-highlight`, and `slide-diagram-quote` layouts. Currently these layouts have placeholder areas.
- [ ] **PDF export optimization** -- Integrate decktape or provide a script for high-quality PDF export. The `?print-pdf` method works but has quirks with SVG backgrounds.

## Medium Priority

- [ ] **Fragment/animation support** -- Add progressive reveal (`class="fragment"`) as an option for bullet slides. Should be opt-in, not default.
- [ ] **Marp fallback output** -- Generate a Marp-compatible markdown file alongside the HTML, for users who prefer simpler tooling or need Google Slides import.
- [ ] **Custom color theme override** -- Allow users to provide an alternate color palette (e.g., for co-branded presentations) without modifying the core CSS.
- [ ] **Chart/data visualization** -- Integrate a lightweight charting library (Chart.js or similar) for auto-generating bar/line/pie charts from data.

## Low Priority

- [ ] **Dark mode for content slides** -- Add dark variants for two-column, three-column, content-featured, and table layouts.
- [ ] **Multi-language speaker notes** -- Generate notes in the user's preferred language while keeping slide text in English (or vice versa).
- [ ] **CI: auto-generate example** -- GitHub Action that regenerates the example presentation on PRs that modify CSS or layouts, to catch visual regressions.
- [ ] **Slide reordering** -- Post-generation tool to let users reorder, duplicate, or remove slides without regenerating the entire deck.
- [ ] **Template variants** -- Support for alternate Sysdig sub-brands or event-specific themes (e.g., Sysdig CNAPP Summit, Falco Community).

## Completed

- [x] Core skill with 5-phase workflow
- [x] 23 slide layout types with CSS + HTML templates
- [x] SVG decorative elements (chevrons, diamonds, mountains, gradient)
- [x] Speaker notes support (reveal.js Notes plugin)
- [x] Footer with dynamic page numbering
- [x] Sysdig design system reference (colors, typography, spacing)
- [x] Plugin packaging for Claude Code marketplace
