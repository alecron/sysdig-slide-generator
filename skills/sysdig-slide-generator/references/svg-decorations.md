# SVG Decorations Reference

These SVG patterns are used as backgrounds on section dividers, covers, and closing slides.
They should be embedded as CSS `background-image` data URIs in the theme or as `data-background-image` attributes on individual slides.

## 1. Chevron Pattern (Right-pointing, fading dark to lumin)

Used on: Cover Dark, Section Divider - Chevrons

Five right-pointing chevrons, progressively lighter from left (dark gray) to right (lumin green).
Positioned center-right of the slide.

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800 600" fill="none" stroke-width="8" stroke-linecap="round" stroke-linejoin="round">
  <!-- Chevron 1 (darkest) -->
  <polyline points="100,100 250,300 100,500" stroke="#3E4042" opacity="0.3"/>
  <!-- Chevron 2 -->
  <polyline points="220,100 370,300 220,500" stroke="#535557" opacity="0.5"/>
  <!-- Chevron 3 -->
  <polyline points="340,100 490,300 340,500" stroke="#6E7A5A" opacity="0.6"/>
  <!-- Chevron 4 -->
  <polyline points="460,100 610,300 460,500" stroke="#96C872" opacity="0.8"/>
  <!-- Chevron 5 (lumin) -->
  <polyline points="580,100 730,300 580,500" stroke="#BDF78B" opacity="1"/>
</svg>
```

### CSS Usage (outline variant for section dividers)
```css
.slide-divider-chevron {
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 800 600' fill='none' stroke-width='4' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='100,100 250,300 100,500' stroke='%233E4042' opacity='0.3'/%3E%3Cpolyline points='220,100 370,300 220,500' stroke='%23535557' opacity='0.5'/%3E%3Cpolyline points='340,100 490,300 340,500' stroke='%236E7A5A' opacity='0.6'/%3E%3Cpolyline points='460,100 610,300 460,500' stroke='%2396C872' opacity='0.8'/%3E%3Cpolyline points='580,100 730,300 580,500' stroke='%23BDF78B' opacity='1'/%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right center;
  background-size: 50% 80%;
}
```

### Solid Filled Variant (for Cover Dark)
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800 600" fill="none">
  <polygon points="100,80 280,300 100,520" fill="#3E4042" opacity="0.4"/>
  <polygon points="220,80 400,300 220,520" fill="#535557" opacity="0.5"/>
  <polygon points="340,80 520,300 340,520" fill="#6E7A5A" opacity="0.6"/>
  <polygon points="460,80 640,300 460,520" fill="#96C872" opacity="0.8"/>
  <polygon points="580,80 760,300 580,520" fill="#BDF78B" opacity="1"/>
</svg>
```

## 2. Diamond / Square Pattern

Used on: Section Divider - Diamonds

Rotated squares (diamonds) in varying sizes, overlapping, using gray tones with one or two lumin-highlighted diamonds.
Positioned upper-right quadrant.

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800 600" fill="none" stroke-width="3">
  <!-- Large diamond outlines -->
  <rect x="300" y="50" width="200" height="200" rx="20" transform="rotate(45 400 150)" stroke="#3E4042" opacity="0.3"/>
  <rect x="450" y="100" width="180" height="180" rx="18" transform="rotate(45 540 190)" stroke="#535557" opacity="0.4"/>
  <rect x="350" y="250" width="160" height="160" rx="16" transform="rotate(45 430 330)" stroke="#3E4042" opacity="0.3"/>
  <!-- Filled diamonds -->
  <rect x="550" y="200" width="140" height="140" rx="14" transform="rotate(45 620 270)" fill="#535557" opacity="0.5"/>
  <rect x="500" y="350" width="120" height="120" rx="12" transform="rotate(45 560 410)" fill="#BDF78B" opacity="0.8"/>
  <!-- Small accent -->
  <rect x="650" y="50" width="100" height="100" rx="10" transform="rotate(45 700 100)" stroke="#BDF78B" opacity="0.6"/>
</svg>
```

### CSS Usage
```css
.slide-divider-diamond {
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 800 600' fill='none' stroke-width='3'%3E%3Crect x='300' y='50' width='200' height='200' rx='20' transform='rotate(45 400 150)' stroke='%233E4042' opacity='0.3'/%3E%3Crect x='450' y='100' width='180' height='180' rx='18' transform='rotate(45 540 190)' stroke='%23535557' opacity='0.4'/%3E%3Crect x='350' y='250' width='160' height='160' rx='16' transform='rotate(45 430 330)' stroke='%233E4042' opacity='0.3'/%3E%3Crect x='550' y='200' width='140' height='140' rx='14' transform='rotate(45 620 270)' fill='%23535557' opacity='0.5'/%3E%3Crect x='500' y='350' width='120' height='120' rx='12' transform='rotate(45 560 410)' fill='%23BDF78B' opacity='0.8'/%3E%3Crect x='650' y='50' width='100' height='100' rx='10' transform='rotate(45 700 100)' stroke='%23BDF78B' opacity='0.6'/%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right top;
  background-size: 60% 100%;
}
```

## 3. Mountain / Zigzag Pattern

Used on: Section Divider - Mountains

Zigzag/mountain silhouettes along the bottom edge, multiple layers with decreasing opacity.

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1920 400" fill="none" stroke-width="2">
  <!-- Back layer (subtle) -->
  <polyline points="0,350 200,200 400,300 600,150 800,280 1000,180 1200,320 1400,160 1600,290 1920,200"
            stroke="#3E4042" opacity="0.2" fill="none"/>
  <!-- Mid layer -->
  <polyline points="0,380 250,250 500,330 750,200 1000,310 1250,220 1500,340 1750,230 1920,280"
            stroke="#535557" opacity="0.3" fill="none"/>
  <!-- Front layer (lumin accent) -->
  <polyline points="0,400 300,300 600,370 900,260 1200,350 1500,270 1920,350"
            stroke="#BDF78B" opacity="0.4" fill="none"/>
</svg>
```

### CSS Usage
```css
.slide-divider-mountain {
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1920 400' fill='none' stroke-width='2'%3E%3Cpolyline points='0,350 200,200 400,300 600,150 800,280 1000,180 1200,320 1400,160 1600,290 1920,200' stroke='%233E4042' opacity='0.2'/%3E%3Cpolyline points='0,380 250,250 500,330 750,200 1000,310 1250,220 1500,340 1750,230 1920,280' stroke='%23535557' opacity='0.3'/%3E%3Cpolyline points='0,400 300,300 600,370 900,260 1200,350 1500,270 1920,350' stroke='%23BDF78B' opacity='0.4'/%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: bottom center;
  background-size: 100% 40%;
}
```

## 4. Clock Tick Marks

Used on: Cover Clock, Closing slide

Circle of small tick marks (like a clock face) around center content.

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 600 600">
  <g transform="translate(300,300)" stroke-width="3" stroke-linecap="round">
    <!-- 60 tick marks around a circle, alternating long/short -->
    <!-- Generated ticks at every 6 degrees -->
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#BDF78B" opacity="0.8" transform="rotate(0)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(6)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(12)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(18)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(24)"/>
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#96C872" opacity="0.6" transform="rotate(30)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(36)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(42)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(48)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(54)"/>
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#BDF78B" opacity="0.8" transform="rotate(60)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(66)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(72)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(78)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(84)"/>
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#96C872" opacity="0.6" transform="rotate(90)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(96)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(102)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(108)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(114)"/>
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#BDF78B" opacity="0.8" transform="rotate(120)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(126)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(132)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(138)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(144)"/>
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#96C872" opacity="0.6" transform="rotate(150)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(156)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(162)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(168)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(174)"/>
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#BDF78B" opacity="0.8" transform="rotate(180)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(186)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(192)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(198)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(204)"/>
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#96C872" opacity="0.6" transform="rotate(210)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(216)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(222)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(228)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(234)"/>
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#BDF78B" opacity="0.8" transform="rotate(240)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(246)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(252)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(258)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(264)"/>
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#96C872" opacity="0.6" transform="rotate(270)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(276)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(282)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(288)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(294)"/>
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#BDF78B" opacity="0.8" transform="rotate(300)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(306)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(312)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(318)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(324)"/>
    <line x1="0" y1="-240" x2="0" y2="-260" stroke="#96C872" opacity="0.6" transform="rotate(330)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(336)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(342)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(348)"/>
    <line x1="0" y1="-245" x2="0" y2="-260" stroke="#8A8C8E" opacity="0.4" transform="rotate(354)"/>
  </g>
</svg>
```

## 5. Quote Icon (Inline SVG)

Used on: Quote slides, Content + Quote layouts. This is placed as an inline element, NOT a background.

```html
<div class="sysdig-quote-icon">
  <svg width="64" height="64" viewBox="0 0 64 64" xmlns="http://www.w3.org/2000/svg">
    <circle cx="32" cy="32" r="32" fill="#2B2D30"/>
    <text x="32" y="42" text-anchor="middle" fill="white" font-family="Georgia, serif" font-size="36" font-weight="bold">&ldquo;</text>
  </svg>
</div>
```

### Smaller variant (for sidebar quotes)
```html
<div class="sysdig-quote-icon sysdig-quote-icon--sm">
  <svg width="48" height="48" viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
    <circle cx="24" cy="24" r="24" fill="#2B2D30"/>
    <text x="24" y="32" text-anchor="middle" fill="white" font-family="Georgia, serif" font-size="28" font-weight="bold">&ldquo;</text>
  </svg>
</div>
```

## 6. Gradient Blob Pattern

Used on: Section Divider - Gradient variant

Two large diagonal arrow/chevron shapes with lumin gradient, on gray background.

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1920 1080">
  <defs>
    <linearGradient id="luminGrad" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" stop-color="#96C872" stop-opacity="0.6"/>
      <stop offset="100%" stop-color="#BDF78B" stop-opacity="0.9"/>
    </linearGradient>
  </defs>
  <!-- Large diagonal shape - left -->
  <polygon points="0,0 600,0 400,600 0,1080" fill="url(#luminGrad)" opacity="0.7"/>
  <!-- Large diagonal shape - right -->
  <polygon points="1000,0 1920,0 1920,1080 1200,1080" fill="url(#luminGrad)" opacity="0.5"/>
</svg>
```

## Usage Notes

- Section dividers should ALWAYS have a dark background (Gray-70 `#2B2D30`) with the SVG pattern overlaid
- Cover slides use either lumin solid background OR dark background + SVG decoration
- The clock pattern should be centered on the slide with content placed inside the circle
- SVG decorations should NEVER compete with text — keep opacity low enough for readability
- When embedding as data URI, URL-encode the SVG (replace `#` with `%23`, `<` with `%3C`, etc.)
