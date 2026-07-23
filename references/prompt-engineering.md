# Prompt Engineering — Hacienda Solano Image Generation (ChatGPT / OpenAI GPT Image)

Guía para construir prompts de generación de imágenes optimizados para ChatGPT (OpenAI GPT Image). El modelo subyacente puede cambiar sin previo aviso; esta guía no asume un modelo fijo sino que se adapta a la experiencia de generación de imágenes de ChatGPT. Usar como referencia obligatoria al operar en Modo 2 (prompt de imagen).

> **Pre-requisito estratégico:** Antes de generar cualquier prompt, leé `references/design-principles.md`. Define qué se puede generar, para qué contexto, y cuándo corresponde rechazar una generación sintética. Esta guía asume que ya pasaste ese filtro.

---

## Estructura del prompt

Todo prompt debe incluir estas secciones, en orden. Escribir las instrucciones en inglés. El copy del usuario se preserva en español.

### 1. Format & Dimensions

Expresar formato y dimensiones en lenguaje natural. ChatGPT entiende descripciones conversacionales; no necesita flags técnicos (`--ar`, `--w`, `--h`). Tabla de referencia para equivalencias:

| Format | Natural language | Equivalent |
|--------|-----------------|------------|
| Square post (Instagram) | "Square format, 1080×1080 pixels" | 1:1 |
| Story / Reel | "Vertical story format, 9:16 proportions" | 9:16 |
| Landscape banner | "Wide landscape banner, 1920×1080 pixels" | 16:9 |
| Portrait flyer | "Portrait flyer format, 4:5 proportions" | 4:5 |
| Facebook cover | "Facebook cover size, 1702×630 pixels" | ~2.7:1 |

Ejemplo:
```
Square format, 1080x1080 pixels.
```

### 2. Purpose & Audience

Una frase que defina el contexto. Ejemplos:

```
Promotional post for a wedding venue in Peru, targeting engaged couples 28-40.
Corporate event announcement for a business audience, professional but warm tone.
```

### 3. Copy Hierarchy

Especificar qué texto debe aparecer, en qué orden, y con qué peso visual. Usar el copy en español exacto que el usuario dio, entre comillas. Si el modelo de imagen no puede renderizar texto confiablemente, indicarlo como concepto de layout:

```
Main headline (largest, centered): "Bodas 2026"
Subheadline (smaller, below): "Vive tu momento soñado en Hacienda Solano"
Body / details: "Sábado 15 de Marzo · 6:00 PM · Chaclacayo, Lima"
CTA (bottom, prominent): "Reserva tu visita"
```

> **Nota sobre texto renderizado:** ChatGPT maneja la renderización de texto mejor que generadores anteriores (DALL·E 2, Midjourney, Stable Diffusion), pero el copy exacto de marca —nombres propios, números de teléfono, direcciones, logotipos— debe verificarse siempre después de generar. Para activos donde la tipografía es el elemento dominante (flyers con párrafos, banners con múltiples líneas de texto, certificados), el modo HTML/CSS con superposición de texto sigue siendo más fiable. Para imágenes donde el texto es decorativo o secundario, el prompt es perfectamente viable.

### 4. Composition

Describir la estructura visual del encuadre:

```
Rule of thirds composition. Upper third: negative space with subtle warm cream fade.
Center-left intersection: main photographic subject (couple or event detail).
Lower third: text overlay zone with translucent deep green gradient overlay (30% opacity) for readability.
Bottom-right corner: call to action area.
```

### 5. Art Direction & Lighting

Dirección de arte consistente con Hacienda Solano: cálido, natural, elegante sin pretensiones.

```
Warm, natural daylight. Golden hour lighting with soft diffused shadows.
Backlit greenery creating depth. No harsh strobes, no studio lighting.
Creamy bokeh in background. Atmospheric but clean.
```

### 6. Photography / Illustration Style

Definir el lenguaje visual. La marca usa fotografía, no ilustración. Para gráficos sociales puede combinarse foto + overlays gráficos.

```
Editorial photography style. Documentary warmth, slightly desaturated greens.
Natural poses, candid moments, genuine emotion — not stiff or posed.
Peruvian context: subtle local flora, hacienda architecture details, warm earth tones.
DO: boho chic details, macramé accents, dried flowers, candlelight, greenery.
DO NOT: cold luxury, stark minimalism, heavy rustic wood, neon colors, urban settings.
```

### 7. Palette — Exact Official Colors

Siempre incluir los hex exactos. No usar nombres genéricos de color; los modelos de imagen responden mejor a valores concretos.

```
Strict color palette:
- Background / dominant: #F5F1E6 (Warm Cream) — 60-80% of the image
- Deep tones / text overlay areas: #1A331C (Deep Green) — 15-25%
- Accent elements: #2D5A31 (Brand Green) — highlights and details
- Warm emphasis: #FDC859 (Sun Accent) and #EEBB2D (Warm Gold) — sparingly, ≤10% each
- Whites / surfaces: #FFFFFF — card areas, text on dark backgrounds

No pure black (#000). No cold whites outside specified hex.
```

### 8. Typography Guidance

Describir el carácter tipográfico, no fuentes específicas que el modelo no conoce:

```
Title font style: elegant serif with character, slightly condensed, high contrast strokes
(similar to Fraunces). Title in warm cream or deep green, never more than two lines.

Body font style: clean geometric sans-serif, neutral and readable (similar to Manrope).
Body text in deep green on light backgrounds, warm cream on dark backgrounds.

Typography treatment: generous letter spacing on uppercase labels, tight leading on titles.
No justified text. No more than 3 text blocks visible.
```

### 9. Negative Constraints

Qué evitar explícitamente. Esta sección puede ir como parte del prompt principal o como negative prompt separado.

```
NEGATIVE / AVOID:
- Pure black (#000000), pure cold white, neon colors
- Heavy rustic textures, barn wood, wagon wheels, overtly farm aesthetics
- Cold luxury: marble, chrome, minimal white boxes, sterile environments
- Stock photography look: fake smiles, isolated on white, unnatural posing
- Urban cityscapes, concrete, industrial settings
- Text rendered by the AI model (use placeholders or blank areas for text)
- Aggressive saturation, HDR look, heavy filters
- More than 10% of canvas in Sun Accent (#FDC859) or Warm Gold (#EEBB2D)
```

### 10. Output Requirements

Especificaciones de la imagen final, en lenguaje natural:

```
Photorealistic render suitable for social media. Sharp focus on main subject,
soft depth of field on background. Clean edges, no watermarks, no signatures.
No borders unless specified.
```

---

## Prompt Template (completo)

Ensamblar todas las secciones en un solo prompt cohesivo. Este es el formato de entrega para ChatGPT:

```
[COPY — solo lo que el usuario dio, en español, entre comillas si va en el prompt]

PRIMARY PROMPT (copy-ready for ChatGPT):
[Instrucciones completas en inglés o español, ensamblando formato + propósito + audiencia +
copy hierarchy + composición + art direction + iluminación + estilo +
paleta con hex + tipografía + negative constraints + output requirements]

REFERENCE IMAGES TO ATTACH:
- [Archivo 1: qué es y qué preservar — ej. `logo-hacienda-solano.png`: preservar el
  monograma circular y el color #1A331C del texto, posición esperada: esquina superior
  izquierda]
- [Archivo 2: qué es y qué preservar — ej. `venue-jardin-principal.jpg`: preservar la
  iluminación cálida y la vegetación del fondo, usar como referencia de ambiente]

REVISION PROMPT (optional, use if result needs iteration):
[Instrucciones de seguimiento dirigidas — ej. "Make the greenery more prominent in
 the background", "Move the title area higher and increase its contrast against the
 background", "Soften the golden accent, reduce #EEBB2D usage by half"]

TECHNICAL NOTE (optional, NOT part of the prompt):
Format: [ej. 1:1, 1080×1080px]
```

---

## Ejemplo de prompt completo

```
PRIMARY PROMPT:
Square format, 1:1 aspect ratio, 1080x1080px. Promotional social media post for a
wedding venue near Lima, Peru. Target audience: engaged couples 28-40 seeking a warm,
elegant, nature-filled celebration.

Layout concept: Upper third has subtle warm cream (#F5F1E6) to green fade background.
Center of image: a softly lit outdoor reception table with boho chic styling — dried
flowers, macramé runner, candlelight in amber glasses, deep green (#1A331C) linen
napkins. Golden hour sunlight filtering through eucalyptus and olive branches. Shallow
depth of field, sharp focus on table detail.

Text areas (conceptual layout — do NOT render text):
- Top-center area reserved for serif title: "Bodas 2026"
- Below title area reserved for subtitle: "Vive tu momento soñado en Hacienda Solano"
- Bottom area reserved for CTA: "Reserva tu visita"

Color palette: dominant #F5F1E6 (Warm Cream, 70%), #1A331C (Deep Green, 20%),
#FDC859 (Sun Accent, 5%), #EEBB2D (Warm Gold, 5%). No pure black. No cold whites.

Style: editorial photography, documentary warmth. Natural poses if people appear.
Peruvian hacienda context — colonial arches in background blur, terracotta floor hints.
Boho chic details, not rustic. Elegant but accessible. Candid, genuine emotion.

Lighting: golden hour, soft diffused shadows, backlit greenery, creamy bokeh.
No studio lighting or harsh strobes.

Output: photorealistic, sRGB, clean edges, no watermarks. Sharp on main subject.

NEGATIVE PROMPT:
Neon colors, pure black, cold white, marble, chrome, urban settings, barn wood,
fake smiles, stock photo look, HDR, heavy filters, AI-rendered text visible.

REFERENCE IMAGES TO ATTACH:
- logo-hacienda-solano.png — preserve the circular monogram and #1A331C text color,
  expected position: top-left corner.
- venue-jardin-principal.jpg — preserve the warm lighting and greenery backdrop,
  use as ambiance reference.

REVISION PROMPT (if needed):
"Make the dried flower arrangement more prominent on the table. Reduce the bokeh
 intensity slightly. Ensure the table linen reads as deep green (#1A331C) not black."

TECHNICAL NOTE:
Format: 1:1, 1080×1080px
```

---

## Brand Identity Quick Reference

Usar estos descriptores como anclas para mantener consistencia en cada prompt:

| Concepto | Descriptor en inglés (para prompt) | Evitar |
|----------|-----------------------------------|--------|
| Hospitalidad cálida | warm hospitality, inviting, genuine | sterile, impersonal, cold |
| Conexión humana | human connection, candid moments, real emotion | posed, stiff, fake smiles |
| Boho chic actual | modern boho chic, macramé, dried botanicals, soft textures | heavy rustic, barn/farm aesthetic |
| Neutral / universal | neutral palette, timeless, universal appeal | trendy filters, aggressive grading |
| Premium accesible | accessible premium, understated elegance | cold luxury, ostentatious wealth, marble/gold excess |
| Contexto peruano | Peruvian flora, colonial architecture, warm earth | cliché tourist imagery, llamas, ponchos |
| Natural | natural light, greenery, organic textures | artificial, plastic, synthetic |
