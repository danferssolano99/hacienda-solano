# Design Principles — Hacienda Solano

Strategic rules that govern every visual asset. These are non-negotiable constraints, not suggestions. Every designer working on Hacienda Solano must internalize these before producing anything.

---

## 1. Hierarchy of Visual Elements

In every asset, the priority order is fixed:

**Photography → Color → Typography → Icons & Effects**

- **Photography** leads. It carries the emotional weight — real people, real spaces, real light.
- **Color** supports. Brand palette creates warmth and recognition without competing with the photo.
- **Typography** frames. It delivers information with character but stays in service of the image.
- **Icons & Effects** enhance. Used sparingly, and only when they add clarity. If an effect is noticeable at first glance, it's too strong.

A practical corollary: if a design decision at a lower tier conflicts with a higher tier, the higher tier wins. An icon that distracts from the photo gets removed. A color that competes with the image gets muted.

---

## 2. Composition Modes

Every composition falls into one of two modes. Choose before starting.

### Commercial Mode

**Purpose:** Direct conversion. The viewer should act (book, call, visit, buy).

**Characteristics:**
- CTA is prominent and positioned for thumb reach or eye path
- Copy is persuasive and benefit-driven
- Offer hierarchy is clear (what → why → how)
- Photo supports the offer rather than dominating
- Typography is more assertive; tracking slightly wider on CTAs

**When to use:** Promotions, ads, lead capture, event signups, pricing announcements.

### Editorial Mode

**Purpose:** Brand building. The viewer should feel something and remember the brand.

**Characteristics:**
- Atmosphere and emotion lead; the CTA is present but understated
- Negative space is generous — the design breathes
- Photo dominates; text frames or complements it
- Typography is elegant and restrained
- Storytelling over selling

**When to use:** Brand content, Instagram stories, covers, campaign imagery, aspirational posts.

Both modes use the same tokens (colors, fonts, spacing). What changes is the **compositional intent**. If the mode is unclear from the brief, **ask** before designing.

---

## 3. Visual Prohibitions

The following must **never** appear in a Hacienda Solano asset:

| Category | Prohibited | Reason |
|----------|-----------|--------|
| **Color** | Pure black (`#000`), cold white (outside `--color-white`), neon colors | Breaks the warm, natural palette |
| **Photography** | Stock photos with generic people or locations not on the property | Violates authenticity |
| **Photography** | AI-generated synthetic scenes of the hacienda (in public assets) | See §5 Photography-First Rule |
| **Aesthetic** | Rustic-heavy: barn wood, wagon wheels, coarse farm aesthetic | Wrong register — boho chic, not country |
| **Aesthetic** | Cold luxury: marble, chrome, minimalist white boxes, sterile spaces | Wrong register — warm elegance, not clinical |
| **Aesthetic** | Urban, concrete, industrial settings | Irrelevant context |
| **Effects** | HDR, aggressive saturation, heavy filters, neon glows | Destroys the natural, editorial feel |
| **Typography** | More than 2 font families in one piece | Visual noise |
| **Typography** | Justified text | Cold, rigid, hard to read |
| **Typography** | Fraunces in all-caps for more than 3 words | Display serif loses elegance in long caps |
| **Color ratio** | Sun Accent or Warm Gold over 10% of canvas | Accent colors become aggressive |
| **Overlay** | Uniform overlay over photo | Always directional (gradient) for natural depth |
| **Glass** | Glass cards with medium blur (~10px) + body text | Illegible — only strong blur or no blur |

---

## 4. Photography-First Rule

For **public brand assets** — anything the public sees — the rule is absolute:

| Asset type | Photography requirement | Synthetic generation |
|-----------|------------------------|---------------------|
| Social media posts, stories, banners | Real photos of Hacienda Solano | ❌ Prohibited |
| Website, landing pages | Real photos of Hacienda Solano | ❌ Prohibited |
| Print (flyers, banners, invitations) | Real photos of Hacienda Solano | ❌ Prohibited |
| Paid ads (Meta, Google, etc.) | Real photos of Hacienda Solano | ❌ Prohibited |
| Internal moodboards, concept drafts | Real or synthetic (must be labeled) | ✅ Allowed, labeled |
| Placeholder mockups during development | Real or synthetic (must be labeled) | ✅ Allowed, labeled |
| Client concept presentations (pre-production) | Real or synthetic (must be labeled) | ✅ Allowed, labeled |

Real photos must be stored in `assets/photos/` with descriptive filenames. Synthetic images used in allowed contexts must be explicitly tagged (filename prefix `synth-` or visible label).

---

## 5. Synthetic Generation Refusal Policy

When asked to generate an AI scene of Hacienda Solano for public use:

1. **Detect** the conflict — is the requested asset public-facing?
2. **Explain** the rule — photography-first is a brand integrity rule, not a technical limitation
3. **Offer alternatives:**
   - HTML/CSS mode with a real photo from `assets/photos/`
   - A visual concept prompt to guide a real photoshoot
   - A prompt labeled as internal moodboard/concept only
4. **Do not generate** the public synthetic asset — it is a hard boundary

This rule exists because Hacienda Solano's value proposition is the real place, real atmosphere, and real experiences. Synthetic scenes erode that authenticity and create a trust gap between what is promised and what exists.
