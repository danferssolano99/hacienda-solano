# Pill — Componente

Etiqueta, filtro o badge. Comunica categoría sin peso visual.

**Tokens base:** `brand/structural-tokens.md` sección 7 — Chips / Pills.

---

## Variantes

| Variante | Borde | Fondo | Cuándo usarlo |
|----------|-------|-------|---------------|
| **Outline** | `1px solid` Deep Green 8% | Warm Cream / White translúcido | Estado normal: etiqueta de categoría, filtro no seleccionado |
| **Active** | Mismo borde | Sun Accent | Estado seleccionado: filtro activo, badge destacado |

---

## Tokens fijos

```css
--pill-radius: 999px;
--pill-border: 1px solid rgba(45, 90, 49, 0.08);
--pill-padding-y: 8px;
--pill-padding-x: 16px;
--pill-typography: Manrope 600, 13px;
--pill-color: var(--deep-green);
--pill-gap: 10px;
--pill-icon-size: 16px;
```

---

## Snippet HTML — Outline

```html
<span class="hs-pill hs-pill--outline">
  Alojamiento
</span>
```

```css
.hs-pill--outline {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: var(--pill-padding-y) var(--pill-padding-x);
  border: var(--pill-border);
  border-radius: var(--pill-radius);
  background: rgba(245, 241, 230, 0.6);
  font-family: 'Manrope', sans-serif;
  font-weight: 600;
  font-size: 13px;
  color: var(--deep-green);
}
```

## Snippet HTML — Active

```html
<span class="hs-pill hs-pill--active">
  Bungalow
</span>
```

```css
.hs-pill--active {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: var(--pill-padding-y) var(--pill-padding-x);
  border: var(--pill-border);
  border-radius: var(--pill-radius);
  background: var(--sun-accent);
  font-family: 'Manrope', sans-serif;
  font-weight: 600;
  font-size: 13px;
  color: var(--deep-green);
}
```

## Snippet HTML — Con ícono

```html
<span class="hs-pill hs-pill--outline">
  <svg width="16" height="16" stroke="currentColor" ...>...</svg>
  Alojamiento
</span>
```

---

## Reglas de composición

- Los pills se agrupan con gap de `10px` a `14px`.
- Máximo 3 colores distintos en una misma vista.
- No mezclar outline + active en el mismo grupo sin distinción funcional clara (por ejemplo, filtros: uno activo, el resto outline).
- El ícono interior no debe superar `18px`.
- No usar pills filled (fondo sólido) fuera del estado active.
