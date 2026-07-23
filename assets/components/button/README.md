# Button — Componente

Botón de llamado a la acción. El ancla visual más cálida de la composición.

**Tokens base:** `brand/structural-tokens.md` sección 8 — Button Sizing / Style Language.

---

## Variantes

| Variante | Fondo | Borde | Sombra | Cuándo usarlo |
|----------|-------|-------|--------|---------------|
| **Primary** | Gradiente Sun Accent → Warm Gold | Sin borde | `0 12px 24px rgba(238,187,45,0.18)` | CTA principal: "Reservar", "Consultar", "Ver más" |
| **Secondary** | Transparente | `1px solid` Deep Green 12% | Sin sombra | Acción secundaria: "Volver", "Cancelar", "Más info" |
| **Tertiary / Link** | Transparente | Sin borde | Sin sombra | Navegación sin peso visual: "Términos", "Ver galería" |

---

## Tokens fijos

```css
--btn-radius: 20px;
--btn-min-height: 48px;
--btn-padding-x: 24px;
--btn-typography: Manrope 600, uppercase, tracking 0.08em;
--btn-font-size: 14px;
```

---

## Snippet HTML — Primary

```html
<button class="hs-btn hs-btn--primary">
  Reservar ahora
</button>
```

```css
.hs-btn--primary {
  background: linear-gradient(135deg, var(--sun-accent), var(--warm-gold));
  border: none;
  border-radius: var(--btn-radius);
  min-height: var(--btn-min-height);
  padding: 0 var(--btn-padding-x);
  font-family: 'Manrope', sans-serif;
  font-weight: 600;
  font-size: var(--btn-font-size);
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: var(--deep-green);
  box-shadow: 0 12px 24px rgba(238, 187, 45, 0.18);
  cursor: pointer;
}

.hs-btn--primary:hover {
  transform: translateY(-1px);
  box-shadow: 0 14px 28px rgba(238, 187, 45, 0.24);
}

.hs-btn--primary:active {
  transform: translateY(0);
  box-shadow: 0 8px 16px rgba(238, 187, 45, 0.12);
}

.hs-btn--primary[disabled] {
  opacity: 0.45;
  box-shadow: none;
  cursor: not-allowed;
  transform: none;
}
```

## Snippet HTML — Secondary

```html
<button class="hs-btn hs-btn--secondary">
  Ver más información
</button>
```

```css
.hs-btn--secondary {
  background: transparent;
  border: 1px solid rgba(26, 51, 28, 0.12);
  border-radius: var(--btn-radius);
  min-height: var(--btn-min-height);
  padding: 0 var(--btn-padding-x);
  font-family: 'Manrope', sans-serif;
  font-weight: 600;
  font-size: var(--btn-font-size);
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: var(--deep-green);
  cursor: pointer;
}

.hs-btn--secondary:hover {
  background: rgba(26, 51, 28, 0.04);
}

.hs-btn--secondary[disabled] {
  opacity: 0.45;
  cursor: not-allowed;
}
```

## Snippet HTML — Tertiary

```html
<button class="hs-btn hs-btn--tertiary">
  Términos y condiciones
</button>
```

```css
.hs-btn--tertiary {
  background: transparent;
  border: none;
  padding: 0 var(--btn-padding-x);
  font-family: 'Manrope', sans-serif;
  font-weight: 600;
  font-size: var(--btn-font-size);
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: var(--deep-green);
  cursor: pointer;
  opacity: 0.7;
}

.hs-btn--tertiary:hover {
  opacity: 1;
}
```

---

## Reglas de composición

- **Máximo un botón primary por vista.** Si hay dos CTAs compitiendo, elegir uno.
- La altura mínima `48px` es obligatoria por accesibilidad táctil.
- El botón primary funciona mejor sobre fondo Warm Cream o Deep Green. Sobre foto, requiere overlay suficiente atrás.
- Secondary y tertiary no compiten con primary. Secondary se usa para acciones relacionadas; tertiary para navegación sin peso.
- Nunca invertir los roles: si el primary es dorado, el secondary no puede ser dorado también.
