# Reveal.js Reference for Sysdig Slides

## CDN Resources

```html
<!-- reveal.js core CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/5.1.0/reveal.min.css">

<!-- Google Fonts: Poppins -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,700;1,700&display=swap">

<!-- reveal.js core JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/5.1.0/reveal.min.js"></script>
```

## Initialization Config

```javascript
Reveal.initialize({
  hash: true,              // Enable URL hash for deep linking to slides
  slideNumber: false,      // We handle page numbers in our footer
  width: 1920,             // 16:9 at 1080p
  height: 1080,
  margin: 0,               // No margin — our CSS handles padding
  center: false,           // We control alignment per layout
  transition: 'fade',
  backgroundTransition: 'fade',
  transitionSpeed: 'default',
  pdfSeparateFragments: false,  // Keep fragments on same page in PDF
  display: 'flex',
  showNotes: false,         // Speaker notes hidden by default
});
```

## Slide Structure

Each slide is a `<section>` inside `.slides`:

```html
<div class="reveal">
  <div class="slides">
    <section class="slide-cover-lumin">
      <!-- Slide content -->
      <aside class="notes">
        Speaker notes for this slide. Visible when pressing 'S'.
      </aside>
    </section>

    <section class="slide-one-col">
      <!-- Next slide -->
    </section>
  </div>
</div>
```

## Per-Slide Background

Override background per slide using data attributes:

```html
<!-- Color background -->
<section data-background-color="#BDF78B">

<!-- Image background -->
<section data-background-image="url.jpg" data-background-size="cover">

<!-- These are already handled by our layout CSS classes, so typically
     you just apply the class and the CSS handles the background -->
<section class="slide-cover-dark">
```

## Speaker Notes

Press `S` during presentation to open speaker notes window.

```html
<section>
  <h1>Title</h1>
  <p>Content</p>
  <aside class="notes">
    These are the speaker notes. They support:
    - Markdown formatting
    - Multiple paragraphs
    - Lists

    Only visible in speaker view, not in the presentation.
  </aside>
</section>
```

## PDF Export

### Method 1: Browser Print (simplest)
1. Open the HTML file in Chrome
2. Append `?print-pdf` to the URL: `file:///path/to/presentation.html?print-pdf`
3. Wait for all slides to render
4. Print → Save as PDF
5. Use settings: Landscape, No margins, Background graphics enabled

### Method 2: Decktape CLI (best quality)
```bash
# Install
npm install -g decktape

# Export
decktape reveal presentation.html output.pdf --size 1920x1080
```

## Fragments (Progressive Reveal)

Show elements one at a time:

```html
<ul>
  <li class="fragment">Appears first</li>
  <li class="fragment">Appears second</li>
  <li class="fragment">Appears third</li>
</ul>
```

Fragment styles: `fragment fade-in`, `fragment fade-up`, `fragment highlight-current-green`

Use sparingly — Sysdig slides favor clean, complete slides over heavy animation.

## Keyboard Shortcuts

| Key | Action |
|-----|--------|
| `→` / `Space` | Next slide |
| `←` | Previous slide |
| `S` | Speaker notes |
| `F` | Fullscreen |
| `Esc` / `O` | Overview mode |
| `B` / `.` | Blackout screen |

## Footer Integration

The footer is positioned OUTSIDE the `.slides` div but INSIDE `.reveal`:

```html
<div class="reveal">
  <div class="slides">
    <!-- slides here -->
  </div>
  <div class="sysdig-footer">
    <span class="footer-text">Sysdig Inc. Proprietary Information</span>
    <span class="footer-logo">sysdig</span>
    <span class="footer-divider"></span>
    <span class="footer-page"></span>
  </div>
</div>
```

The footer page number is updated dynamically:

```javascript
Reveal.on('slidechanged', event => {
  const pageEl = document.querySelector('.footer-page');
  if (pageEl) {
    pageEl.textContent = event.indexh + 1;
  }

  // Hide footer on special slides
  const footer = document.querySelector('.sysdig-footer');
  const currentSlide = event.currentSlide;
  const hideOnClasses = [
    'slide-cover-lumin', 'slide-cover-dark', 'slide-cover-clock',
    'slide-closing',
    'slide-divider-chevron', 'slide-divider-diamond',
    'slide-divider-mountain', 'slide-divider-gradient'
  ];
  const shouldHide = hideOnClasses.some(cls => currentSlide.classList.contains(cls));
  footer.style.display = shouldHide ? 'none' : 'flex';
});
```
