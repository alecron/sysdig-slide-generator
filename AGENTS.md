# Development Guide

Instructions for contributing to the sysdig-slide-generator plugin.

## Project Structure

```
.claude-plugin/plugin.json       # Plugin manifest (name, version, metadata)
marketplace.json                 # Marketplace catalog for plugin distribution
skills/sysdig-slide-generator/   # The actual skill
  SKILL.md                       # Main skill file (workflow orchestration)
  assets/
    sysdig-theme.css             # Complete reveal.js custom theme (all layout classes)
    template.html                # HTML skeleton with CDN links + placeholders
  references/
    sysdig-design-system.md      # Color palette, typography, spacing rules
    slide-layouts.md             # HTML templates for all 23 layout types
    svg-decorations.md           # SVG patterns for chevrons, diamonds, etc.
    revealjs-reference.md        # reveal.js API reference
  scripts/
    open-presentation.sh         # Opens HTML in default browser (macOS)
examples/                        # Generated example presentations
```

## How the Skill Works

1. `SKILL.md` is loaded when Claude Code detects a presentation request
2. It reads `assets/template.html` as the HTML skeleton
3. It reads `assets/sysdig-theme.css` and embeds it in the `<style>` tag
4. It reads `references/slide-layouts.md` for HTML templates per slide type
5. It generates `<section>` elements for each slide and injects them into the template
6. It writes the final `presentation.html`, `speaker-notes.md`, and `outline.md`

## CSS Architecture

All styling uses CSS custom properties defined in `sysdig-theme.css`:

- **Design tokens** are in `:root` (colors, fonts, spacing)
- **Layout classes** are one per slide type (e.g., `.slide-cover-dark`, `.slide-one-col`)
- **Component classes** are reusable (`.sysdig-table`, `.sysdig-highlight`, `.sysdig-card`)
- **SVG decorations** are embedded as CSS `background-image` data URIs in divider classes

### Key Rules

- Every `<section>` gets exactly ONE layout class
- Do NOT add `data-background-color` attributes -- CSS classes handle backgrounds
- Do NOT add inline styles -- use the existing classes
- Accent colors (blue, red, yellow, purple) are for diagrams only, never for slide backgrounds

## Adding a New Layout

1. Design the layout and add its CSS class to `assets/sysdig-theme.css`
2. Add the HTML template to `references/slide-layouts.md`
3. Add it to the Layout Selection table in both `slide-layouts.md` and `SKILL.md`
4. Test by generating a presentation that uses the new layout

## Testing Changes

```bash
# Generate a test presentation using the skill
# (invoke the skill in Claude Code with a test topic)

# Open in browser
./skills/sysdig-slide-generator/scripts/open-presentation.sh presentation.html

# Check:
# - All layouts render correctly
# - SVG decorations display
# - Footer appears on content slides, hidden on covers/dividers/closing
# - Speaker notes work (press S)
# - PDF export works (append ?print-pdf in Chrome)
```

## Conventions

- **Commits**: Use conventional commits (`feat:`, `fix:`, `docs:`, `refactor:`)
- **CSS**: Follow existing naming patterns (`.slide-{type}`, `.sysdig-{component}`)
- **Layouts**: Max 6 bullets per slide, max ~40 words body text per slide
- **Speaker notes**: Every slide must have notes in `<aside class="notes">`
