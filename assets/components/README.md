# Components — Hacienda Solano

Componentes visuales reutilizables para piezas gráficas de Hacienda Solano.
Todos siguen los tokens de `brand/structural-tokens.md` y usan exclusivamente la paleta, tipografía y espaciado oficial.

---

## ¿Qué es un componente?

Un bloque visual con identidad de marca, contrato de uso y variantes documentadas.
Se consume como snippet HTML + CSS, no como framework.

Cada componente tiene:
- **Variantes** documentadas (primary, secondary, outline, etc.)
- **Snippet HTML** mínimo para copiar y pegar
- **Tokens CSS** que heredan de `brand/brand-tokens.css`
- **Reglas de composición**: cuándo usarlo, cuándo no, cómo combinarlo

---

## Estructura

```txt
components/
  button/       → README.md + button.css + button-primary.html ...
  pill/         → README.md + pill.css + pill-outline.html ...
  card/         → README.md + card.css + card-photo.html ...
```

Cada carpeta es autónoma: podés leer su README sin leer los demás.

---

## Naming convention

```
{component}-{variant}.html    → archivo de ejemplo
{component}.css               → todos los estilos del componente
```

**Ejemplos:**
```
button-primary.html
button-secondary.html
button.css
pill-outline.html
card-photo.html
card.css
```

Los nombres de variante siguen el inglés de los tokens (`primary`, `secondary`, `outline`, `photo`, `glass`, `text`).

---

## Contrato de uso

Todo componente cumple:
1. **Usa solo tokens oficiales** — paleta, tipografía, radius, sombras, spacing definidos en `brand/structural-tokens.md`.
2. **No depende de frameworks** — HTML y CSS plano, sin JS salvo que el componente lo requiera explícitamente.
3. **Se exporta con el sistema común** — si se usa dentro de un canvas `data-export-canvas`, responde a `export.css` y `export.js`.
4. **Tiene un solo propósito visual** — si un componente empieza a hacer demasiadas cosas, se parte.

---

## Cómo agregar un componente nuevo

1. Crear carpeta: `assets/components/{nombre}/`
2. Escribir `README.md` con:
   - Propósito del componente
   - Variantes disponibles
   - Snippet HTML mínimo por variante
   - Tokens CSS que hereda
   - Reglas de composición
3. Crear `{nombre}.css` con todas las variantes
4. Crear un `.html` de ejemplo por variante
5. Actualizar este README si el componente cambia la arquitectura general

---

## Componentes disponibles

| Componente | Propósito | Variantes |
|------------|-----------|-----------|
| `button` | Llamado a la acción | primary, secondary, tertiary |
| `pill` | Etiqueta o filtro | outline (normal y active) |
| `card` | Contenedor de contenido | photo, glass, text, organic |
