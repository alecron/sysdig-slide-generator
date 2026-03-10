# Sysdig Design System Reference

## Color Palette

### Primary Colors

| Name | Hex | CSS Variable | Usage |
|------|-----|-------------|-------|
| Lumin | `#BDF78B` | `--sysdig-lumin` | Brand green. Cover backgrounds, highlights, accent bars, section headings on dark |
| White | `#FFFFFF` | `--sysdig-white` | Text on dark backgrounds, card backgrounds |
| Black | `#000000` | `--sysdig-black` | Primary text on light backgrounds, headers |

### Gray Scale

| Name | Hex | CSS Variable | Usage |
|------|-----|-------------|-------|
| Gray-10 | `#EAEBED` | `--sysdig-gray-10` | Light card backgrounds, table alternating rows, featured content boxes |
| Gray-20 | `#BBBDBF` | `--sysdig-gray-20` | Borders, divider lines |
| Gray-30 | `#8A8C8E` | `--sysdig-gray-30` | Disabled text, subtle elements |
| Gray-40 | `#626466` | `--sysdig-gray-40` | Secondary body text |
| Gray-50 | `#535557` | `--sysdig-gray-50` | Footer text, captions |
| Gray-60 | `#3E4042` | `--sysdig-gray-60` | Body text on dark backgrounds (subtle) |
| Gray-70 | `#2B2D30` | `--sysdig-gray-70` | Dark slide backgrounds (primary dark) |
| Gray-80 | `#1E1E22` | `--sysdig-gray-80` | Darker backgrounds |
| Gray-90 | `#121217` | `--sysdig-gray-90` | Deepest backgrounds, near-black |

### Accent Colors (diagrams and UI elements ONLY — never for slide backgrounds)

| Name | Hex | CSS Variable | Usage |
|------|-----|-------------|-------|
| Blue | `#00cbe2` | `--sysdig-blue` | Diagrams, data visualization |
| Red | `#ea5255` | `--sysdig-red` | Alerts, warnings, "before" states in diagrams |
| Yellow | `#ffc069` | `--sysdig-yellow` | Warnings, medium severity |
| Purple | `#ae44c5` | `--sysdig-purple` | Categories, supplementary data |

## Typography

**Font family:** Poppins (Google Fonts) — all weights loaded: 300, 400, 500, 700

| Role | Weight | Size | Line Height | CSS Class |
|------|--------|------|-------------|-----------|
| H1 (slide title) | Bold (700) | 44px | 1.2 | `.slide-title` |
| H1 Large (cover) | Bold (700) | 72px | 1.1 | `.slide-title-large` |
| H2 (subtitle) | Medium (500) | 28px | 1.3 | `.slide-subtitle` |
| H3 (section/category header) | Bold (700) | 22px | 1.3 | `.slide-category` |
| Body | Regular (400) | 20px | 1.5 | default |
| Body Light | Light (300) | 18px | 1.5 | `.text-light` |
| Eyebrow | Medium (500) | 14px | 1.2 | `.eyebrow` (uppercase, letter-spacing: 2px) |
| Quote text | Regular (400) | 24px | 1.5 | `.quote-text` |
| Footer | Regular (400) | 12px | 1 | `.sysdig-footer` |

## Spacing & Layout

- **Slide dimensions:** 1920 x 1080px (16:9)
- **Slide padding:** 60px top, 80px left/right, 80px bottom
- **Card border-radius:** 16px
- **Card padding:** 40px
- **Bullet list indent:** Level 1 at 40px, Level 2 at 80px, Level 3 at 120px
- **Bullet spacing:** 12px between items (use `space-after-paragraph` equivalent)
- **Max content width:** ~60% of slide for single-column, ~90% for full-width
- **Column gap (multi-column):** 60px

## Footer Specification

Present on ALL content slides (not on covers, section dividers, or closing).

- **Position:** Bottom of slide, absolutely positioned
- **Left:** "Sysdig Inc. Proprietary Information" — Gray-50 text, 12px
- **Right:** `sysdig` text placeholder + page number — separated by lumin accent bar (4px wide, 20px tall)
- **On light backgrounds:** Dark text footer, lumin accent bar visible
- **On dark backgrounds:** Footer hidden (covers, section dividers handle their own branding)
- **On lumin backgrounds:** Dark text footer, dark accent bar

## Color Contrast Rules

### On Lumin (#BDF78B) Background
- YES: Black text, dark gray text, bold black text
- YES: Lumin-highlighted bold text (for emphasis within quotes)
- NO: White text, light gray text

### On White Background
- YES: Black text, dark gray (Gray-70+) text
- YES: Lumin highlight behind bold phrases
- NO: Lumin text (insufficient contrast), light gray text

### On Dark (Gray-70/80) Background
- YES: White text, lumin text (for headings/emphasis), bold lumin text
- YES: Light gray (Gray-20 and lighter) text for subtitles
- NO: Dark gray text, black text

### Graphics on Dark Background
- YES: Black text with lighter graphic backgrounds
- YES: White, black, lumin elements with tonal graphics

## Highlight Pattern

Key phrases in quotes or callouts use a lumin (#BDF78B) background highlight behind bold text:
```html
<span class="sysdig-highlight"><strong>highlighted phrase</strong></span>
```
This appears as bold black text with a lumin rectangle behind it, simulating a highlighter pen effect.

## Table Styling

- **Header row:** Gray-70 background, white bold text
- **Body rows:** Alternating white and Gray-10
- **Borders:** 1px Gray-20
- **Highlighted column:** Lumin background to indicate the "winning" or featured column
- **Cell padding:** 12px 16px
