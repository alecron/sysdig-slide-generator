# Sysdig Slide Layouts Reference

Complete HTML `<section>` templates for every layout in the Sysdig reveal.js corporate theme. Each layout uses CSS classes defined in `sysdig-theme.css`.

---

## 1. Cover - Lumin

**Class:** `slide-cover-lumin`

**When to use:** Opening slide. Sets the tone with the Sysdig lumin green background, logo, and main title.

```html
<section class="slide-cover-lumin">
  <div class="logo">sysdig</div>
  <h1>Presentation Title Goes Here</h1>
  <p class="subtitle">Optional subtitle or event name</p>
  <aside class="notes">Introduce yourself briefly. State the purpose and key takeaway.</aside>
</section>
```

**Speaker notes guidance:** Introduce yourself, set expectations, mention the key takeaway.

---

## 2. Cover - Dark with Chevrons

**Class:** `slide-cover-dark`

**When to use:** Hero title slide with dark background and chevron decorations. Bold, branded opening with speaker information.

```html
<section class="slide-cover-dark">
  <div class="logo">sysdig</div>
  <h1>SECURE EVERY SECOND.</h1>
  <div class="speaker-info">
    <div class="name">SPEAKER NAME</div>
    <div class="title">SPEAKER TITLE</div>
  </div>
  <aside class="notes">Greet the audience. Introduce yourself with name and role. Frame the problem.</aside>
</section>
```

**Speaker notes guidance:** Greet, introduce yourself, frame the problem or topic.

---

## 3. Cover - Dark with Clock

**Class:** `slide-cover-clock`

**When to use:** Dark background with clock tick SVG around centered title. Ideal when the theme involves time, speed, or real-time security.

```html
<section class="slide-cover-clock">
  <div class="clock-wrapper">
    <!-- Clock SVG is embedded as background or inline from svg-decorations.md -->
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 600 600">
      <g transform="translate(300,300)" stroke-width="3" stroke-linecap="round">
        <!-- Clock ticks - see svg-decorations.md for full SVG -->
        <line x1="0" y1="-240" x2="0" y2="-260" stroke="#BDF78B" opacity="0.8" transform="rotate(0)"/>
        <!-- ... more ticks ... -->
      </g>
    </svg>
    <h1>SECURE<br>EVERY<br>SECOND.</h1>
    <div class="speaker-info">
      <div class="name">SPEAKER NAME</div>
      <div class="title">SPEAKER TITLE</div>
    </div>
  </div>
  <aside class="notes">Tie the clock motif to themes of speed, real-time detection, or urgency.</aside>
</section>
```

**Speaker notes guidance:** Connect the clock visual to your narrative about time-sensitive security.

---

## 4. Agenda

**Class:** `slide-agenda`

**When to use:** Lumin background listing agenda items. Place early in the deck.

```html
<section class="slide-agenda">
  <h1>Agenda</h1>
  <div class="agenda-list">
    <div class="agenda-item">
      <span class="agenda-number">1</span>
      <span class="agenda-text">First Topic</span>
    </div>
    <div class="agenda-item">
      <span class="agenda-number">2</span>
      <span class="agenda-text">Second Topic</span>
    </div>
    <div class="agenda-item">
      <span class="agenda-number">3</span>
      <span class="agenda-text">Third Topic</span>
    </div>
    <div class="agenda-item">
      <span class="agenda-number">4</span>
      <span class="agenda-text">Fourth Topic</span>
    </div>
  </div>
  <aside class="notes">Walk through the agenda briefly. Set time expectations if relevant.</aside>
</section>
```

**Speaker notes guidance:** Quickly walk through each item so the audience knows what to expect.

---

## 5. One Column

**Class:** `slide-one-col`

**When to use:** Standard content slide with white background. Title, optional subtitle, bullet list.

```html
<section class="slide-one-col">
  <h1>Slide Title</h1>
  <h2>Subtitle in Poppins Light</h2>
  <ul>
    <li>Content Header One
      <ul>
        <li>Content Bullet Level 2
          <ul><li>Content Bullet Level 3</li></ul>
        </li>
      </ul>
    </li>
    <li>Content Header Two
      <ul>
        <li>Content Bullet Level 2</li>
      </ul>
    </li>
  </ul>
  <aside class="notes">Expand on each bullet with real-world examples or data.</aside>
</section>
```

**Speaker notes guidance:** Elaborate on each point — don't just read them aloud.

---

## 6. One Column - Dark

**Class:** `slide-one-col-dark`

**When to use:** Dark variant of one-column. Use for emphasis or visual variety.

```html
<section class="slide-one-col-dark">
  <h1>Slide Title</h1>
  <h2>Subtitle in Poppins Light</h2>
  <ul>
    <li>First key point</li>
    <li>Second key point</li>
    <li>Third key point</li>
  </ul>
  <aside class="notes">Dark background draws attention. Reserve for critical information.</aside>
</section>
```

---

## 7. Content + Featured Box

**Class:** `slide-content-featured`

**When to use:** Left bullets + right gray card with featured content. One piece of content deserves emphasis.

```html
<section class="slide-content-featured">
  <h1>Header Example w/ Featured Content</h1>
  <div class="content-left">
    <h3>Category Header Example</h3>
    <ul>
      <li>Content Header One
        <ul><li>Content Bullet Level 2</li></ul>
      </li>
      <li>Content Header Two
        <ul><li>Content Bullet Level 2</li></ul>
      </li>
    </ul>
  </div>
  <div class="content-right">
    <h3>Category Feature Example</h3>
    <p>Featured content: key statistic, metric, or callout that deserves visual emphasis.</p>
  </div>
  <aside class="notes">Start with bullets for context, then direct attention to the featured box.</aside>
</section>
```

---

## 8. Content + Quote

**Class:** `slide-content-quote`

**When to use:** Left bullets + right lumin card with quote. Pair technical content with a customer/analyst quote.

```html
<section class="slide-content-quote">
  <h1>Header Example with Quote</h1>
  <div class="content-left">
    <h3>Category Header Example</h3>
    <ul>
      <li>Content Header One
        <ul><li>Content Bullet Level 2</li></ul>
      </li>
      <li>Content Header Two
        <ul><li>Content Bullet Level 2</li></ul>
      </li>
    </ul>
  </div>
  <div class="quote-card">
    <div class="sysdig-quote-icon">
      <svg width="64" height="64" viewBox="0 0 64 64"><circle cx="32" cy="32" r="32" fill="#2B2D30"/><text x="32" y="44" text-anchor="middle" fill="white" font-family="Georgia,serif" font-size="36" font-weight="bold">&ldquo;</text></svg>
    </div>
    <p class="quote-text">We can see what's going on in each cluster and be agile with how we identify and resolve issues across clouds.</p>
    <p class="quote-attribution">Security Architect</p>
  </div>
  <aside class="notes">Present bullets for context, then read/paraphrase the quote. Explain who said it.</aside>
</section>
```

---

## 9. Two Column

**Class:** `slide-two-col`

**When to use:** Two equal columns with subtitles and bullet lists. Comparisons, before/after, two related concepts.

```html
<section class="slide-two-col">
  <h1>Two-Column Example</h1>
  <div class="columns">
    <div>
      <h2>Subtitle One</h2>
      <ul>
        <li>Content Header One
          <ul><li>Content Bullet Level 2</li></ul>
        </li>
        <li>Content Header Two
          <ul><li>Content Bullet Level 2</li></ul>
        </li>
      </ul>
    </div>
    <div>
      <h2>Subtitle Two</h2>
      <ul>
        <li>Content Header One
          <ul><li>Content Bullet Level 2</li></ul>
        </li>
        <li>Content Header Two
          <ul><li>Content Bullet Level 2</li></ul>
        </li>
      </ul>
    </div>
  </div>
  <aside class="notes">Walk through one column at a time. State key differences or connections.</aside>
</section>
```

---

## 10. Three Column

**Class:** `slide-three-col`

**When to use:** Three equal columns with subtitles and body text. Triads: three pillars, products, steps.

```html
<section class="slide-three-col">
  <h1>Three Column Layout</h1>
  <div class="columns">
    <div>
      <h2>Subtitle One</h2>
      <p>Description or body text for the first column.</p>
    </div>
    <div>
      <h2>Subtitle Two</h2>
      <p>Description or body text for the second column.</p>
    </div>
    <div>
      <h2>Subtitle Three</h2>
      <p>Description or body text for the third column.</p>
    </div>
  </div>
  <aside class="notes">Introduce all three as a group, then elaborate on each.</aside>
</section>
```

---

## 11. Right Side Image

**Class:** `slide-image-right`

**When to use:** Left text + right image. Product screenshots, architecture diagrams, visuals.

```html
<section class="slide-image-right">
  <div class="text-content">
    <h1>Right Side Image Headline</h1>
    <h2>Subtitle in Poppins Medium</h2>
    <p>Body text that introduces the image. Keep it concise so the image does the heavy lifting.</p>
  </div>
  <div class="image-placeholder">
    <img src="path/to/image.png" alt="Description">
  </div>
  <aside class="notes">Point to specific parts of the image. Explain what the audience should focus on.</aside>
</section>
```

---

## 12. Table / Chart

**Class:** `slide-table`

**When to use:** Left table + right text. Data needing both tabular format and narrative explanation.

```html
<section class="slide-table">
  <div>
    <table class="sysdig-table">
      <thead>
        <tr>
          <th></th>
          <th>Item One</th>
          <th>Item Two</th>
          <th>Item Three</th>
          <th class="col-highlight">Item Four</th>
        </tr>
      </thead>
      <tbody>
        <tr><td>Feature One</td><td></td><td></td><td></td><td class="col-highlight"></td></tr>
        <tr><td>Feature Two</td><td></td><td></td><td></td><td class="col-highlight"></td></tr>
        <tr><td>Feature Three</td><td></td><td></td><td></td><td class="col-highlight"></td></tr>
        <tr><td>Feature Four</td><td></td><td></td><td></td><td class="col-highlight"></td></tr>
      </tbody>
    </table>
  </div>
  <div>
    <h1>Table/Chart</h1>
    <h2>Subtitle</h2>
    <p>Narrative explaining what the data shows.</p>
  </div>
  <aside class="notes">Highlight key comparisons. Emphasize the highlighted column.</aside>
</section>
```

---

## 13. Full Table

**Class:** `slide-table-full`

**When to use:** Full-width table as the primary content.

```html
<section class="slide-table-full">
  <h1>Table Sample</h1>
  <h2>Look and Compare</h2>
  <table class="sysdig-table">
    <thead>
      <tr>
        <th></th>
        <th>Item One</th>
        <th>Item Two</th>
        <th>Item Three</th>
        <th class="col-highlight">Item Four</th>
        <th>Item Five</th>
        <th>Item Six</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>Feature One</td><td></td><td></td><td></td><td class="col-highlight"></td><td></td><td></td></tr>
      <tr><td>Feature Two</td><td></td><td></td><td></td><td class="col-highlight"></td><td></td><td></td></tr>
      <tr><td>Feature Three</td><td></td><td></td><td></td><td class="col-highlight"></td><td></td><td></td></tr>
    </tbody>
  </table>
  <aside class="notes">Give the audience a moment to scan, then guide them to the key column.</aside>
</section>
```

---

## 14. UI Highlight

**Class:** `slide-ui-highlight`

**When to use:** Left text + right dark screenshot area. Product demos, UI walkthroughs.

```html
<section class="slide-ui-highlight">
  <div class="text-content">
    <h1>UI Highlight Headline</h1>
    <h2>Subtitle</h2>
    <p>Explanation of what the UI shows and the value it delivers.</p>
  </div>
  <div class="screenshot-area">
    <img src="path/to/screenshot.png" alt="UI screenshot">
  </div>
  <aside class="notes">Walk through the UI step by step. Point out specific elements.</aside>
</section>
```

---

## 15. Diagram + Quote

**Class:** `slide-diagram-quote`

**When to use:** Left diagram area + right sidebar quote card. Technical diagram with supporting testimonial.

```html
<section class="slide-diagram-quote">
  <h1>Diagram and Quote</h1>
  <div class="diagram-area">
    <!-- Diagram content: could be an image, inline SVG, or HTML diagram -->
    <img src="path/to/diagram.svg" alt="Architecture diagram">
  </div>
  <div class="sidebar-quote">
    <div class="sysdig-quote-icon">
      <svg width="48" height="48" viewBox="0 0 48 48"><circle cx="24" cy="24" r="24" fill="#2B2D30"/><text x="24" y="32" text-anchor="middle" fill="white" font-family="Georgia,serif" font-size="28" font-weight="bold">&ldquo;</text></svg>
    </div>
    <p class="quote-text">Quote that reinforces the diagram's message.</p>
    <p class="quote-attribution">COMPANY NAME</p>
  </div>
  <aside class="notes">Explain the diagram first, then use the quote for credibility.</aside>
</section>
```

---

## 16. Section Divider - Chevrons

**Class:** `slide-divider-chevron`

**When to use:** Between major sections. Dark background with chevron outlines fading to lumin.

```html
<section class="slide-divider-chevron">
  <h1><em>Section Heading</em></h1>
  <h2>Supporting subtitle text</h2>
  <aside class="notes">Summarize what was covered. Preview what comes next.</aside>
</section>
```

---

## 17. Section Divider - Diamonds

**Class:** `slide-divider-diamond`

**When to use:** Alternative section divider with diamond pattern. Visual variety.

```html
<section class="slide-divider-diamond">
  <h1><em>Section Heading</em></h1>
  <h2>Detecting Threats in Real-Time</h2>
  <aside class="notes">Brief transition. One sentence recap, one sentence preview.</aside>
</section>
```

---

## 18. Section Divider - Mountains

**Class:** `slide-divider-mountain`

**When to use:** Section divider with zigzag/mountain pattern at bottom.

```html
<section class="slide-divider-mountain">
  <h1><em>Section Heading</em></h1>
  <h2>Detecting Threats in Real-Time</h2>
  <aside class="notes">Visual break to re-engage the audience.</aside>
</section>
```

---

## 19. Section Divider - Gradient

**Class:** `slide-divider-gradient`

**When to use:** Section divider with gradient blob pattern. Centered text.

```html
<section class="slide-divider-gradient">
  <h1>Section Heading</h1>
  <aside class="notes">Pose a question or do an audience check-in before the next section.</aside>
</section>
```

---

## 20. Quote (Full Slide)

**Class:** `slide-quote`

**When to use:** Impactful customer/analyst quotes. Lumin background, white card with quote icon. Use `sysdig-highlight` for emphasis.

```html
<section class="slide-quote">
  <div class="quote-card">
    <div class="sysdig-quote-icon">
      <svg width="64" height="64" viewBox="0 0 64 64"><circle cx="32" cy="32" r="32" fill="#2B2D30"/><text x="32" y="44" text-anchor="middle" fill="white" font-family="Georgia,serif" font-size="36" font-weight="bold">&ldquo;</text></svg>
    </div>
    <p class="quote-text">Falco is the de facto security solution. By using Falco, we knew that we were adopting a <span class="sysdig-highlight"><strong>standard for cloud and container runtime security</strong></span>. Being able to tap into the Falco open source community and documentation was extremely helpful.</p>
    <p class="quote-attribution">Senior Infrastructure Security Engineer</p>
  </div>
  <aside class="notes">Read or paraphrase the quote. Explain who said it and connect it to your narrative.</aside>
</section>
```

---

## 21. Callout - Dark

**Class:** `slide-callout-dark`

**When to use:** Dramatic emphasis. Centered eyebrow (lumin) + large white headline. Key statistics or bold statements.

```html
<section class="slide-callout-dark">
  <p class="eyebrow">EYEBROW TEXT HERE</p>
  <h1>Callout Headline Here</h1>
  <aside class="notes">Let the slide land. Pause, then provide context.</aside>
</section>
```

---

## 22. Callout - Lumin

**Class:** `slide-callout-lumin`

**When to use:** Same as dark callout but on lumin background. Key messages or statistics.

```html
<section class="slide-callout-lumin">
  <p class="eyebrow">EYEBROW TEXT HERE</p>
  <h1>Callout Headline Here</h1>
  <aside class="notes">Pause after the headline. Deliver supporting context verbally.</aside>
</section>
```

---

## 23. Closing

**Class:** `slide-closing`

**When to use:** Final slide. Leave on screen during Q&A.

```html
<section class="slide-closing">
  <div class="logo">sysdig</div>
  <p class="tagline">SECURE EVERY SECOND</p>
  <aside class="notes">Thank the audience. Summarize the one key takeaway. Open for Q&A.</aside>
</section>
```

---

## Layout Selection Decision Table

| Content Type | Recommended Layout | Class |
|---|---|---|
| Opening / first slide | Cover Lumin or Cover Dark | `slide-cover-lumin` / `slide-cover-dark` |
| Agenda / outline | Agenda | `slide-agenda` |
| Key points with bullets | One Column | `slide-one-col` |
| Key points (emphasis) | One Column Dark | `slide-one-col-dark` |
| Points + callout stat | Content + Featured | `slide-content-featured` |
| Points + testimonial | Content + Quote | `slide-content-quote` |
| Comparison / side by side | Two Column | `slide-two-col` |
| Three related items | Three Column | `slide-three-col` |
| Text + visual | Right Side Image | `slide-image-right` |
| Data comparison (small) | Table / Chart | `slide-table` |
| Data comparison (wide) | Full Table | `slide-table-full` |
| Product screenshot | UI Highlight | `slide-ui-highlight` |
| Diagram + credibility | Diagram + Quote | `slide-diagram-quote` |
| Section break | Section Divider (any) | `slide-divider-*` |
| Impact quote | Quote | `slide-quote` |
| Bold statement / stat | Callout (Dark or Lumin) | `slide-callout-*` |
| Last slide | Closing | `slide-closing` |
