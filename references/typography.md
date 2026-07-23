# Tipografía

## Fuentes oficiales

| Fuente | Google Fonts URL |
|--------|-----------------|
| Fraunces | `https://fonts.google.com/specimen/Fraunces` |
| Manrope | `https://fonts.google.com/specimen/Manrope` |

Ambas son gratuitas (OFL). Incluirlas vía `@import` de Google Fonts en los templates HTML.

## Jerarquía tipográfica

```
Título principal   → Fraunces 700 (Bold)  · leading: 1.1  · tracking: -0.02em
Subtítulo          → Fraunces 400 (Regular) · leading: 1.2
Cuerpo             → Manrope 400 (Regular)  · leading: 1.5
Datos / CTA        → Manrope 600 (SemiBold)  · leading: 1.4
```

## Tamaños base

| Formato | Título | Subtítulo | Cuerpo | CTA |
|---------|--------|-----------|--------|-----|
| 1920×1080 (banner) | 72-96px | 36-48px | 24-28px | 28-32px |
| 1080×1080 (post) | 56-72px | 28-36px | 20-24px | 24-28px |
| 1080×1920 (story) | 48-64px | 24-32px | 18-22px | 22-26px |
| A4 print (flyer) | 42-56pt | 24-32pt | 11-14pt | 14-18pt |

Ajustá estos tamaños según la longitud del copy. Si el título ocupa más de dos líneas, reducí tracking (`letter-spacing: -0.03em`) antes de bajar el tamaño.

## Reglas

- Nunca uses más de 2 familias por diseño.
- No uses Fraunces en todo mayúsculas para más de 3 palabras. Es una serif display, no un sans-serif de botón.
- Los CTAs en Manrope Bold van en mayúsculas con tracking amplio (`letter-spacing: 0.08em`).
