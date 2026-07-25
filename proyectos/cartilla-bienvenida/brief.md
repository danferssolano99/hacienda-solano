## Cartilla de Bienvenida

- Carpeta para la cartilla de bienvenida impresa en A4 vertical, single-sided.
- Entregable: `cartilla-bienvenida.html` + `cartilla-bienvenida.pdf`

### Design Decisions

- **Formato:** A4 vertical (1240 × 1754 px), single-sided, impreso.
- **Distancia de lectura:** corta (mano/mesita — cartilla leída de cerca).
- **Arquetipo:** Editorial Split — elegancia, legibilidad inmediata, atmósfera cálida.
- **Modo:** HTML/CSS (canvas fijo, sin responsive).
- **Nivel orgánico:** Nivel 3 — firma botánica con palm-02.svg integrado sutilmente (12% opacidad, esquina inferior derecha, detrás del contenido).
- **Mensaje dominante:** Bienvenidos a Hacienda Solano — descanso, calma y conexión con la naturaleza.
- **Prioridad:** Editorial (atmósfera lidera sobre funcionalidad, pero info operativa sigue siendo legible y clara).
- **Logo:** Centrado arriba (regla para formatos verticales). Logotipo Deep Green sobre Warm Cream.

### Contenido (fuente única: conocimiento-del-negocio.md)

1. Título: Bienvenidos a Hacienda Solano
2. Intro: Gracias por acompañarnos...
3. Sección: Información importante (check-in/out, Wi‑Fi, contacto, horario)
4. Sección: Durante tu estadía
5. Sección: Cuidado de la habitación
6. Cierre: Gracias por ayudarnos a cuidar este espacio...

### Referencias de diseño

- Brand tokens: `brand/brand-tokens.css`
- Tipografía: Fraunces 700 (título), Fraunces 400 (subtítulos), Manrope 400/600 (cuerpo/datos)
- Paleta: Warm Cream fondo, Deep Green texto, Sun Accent para divisores sutiles
- Estructural: bordes suaves, spacing equilibrado, sin glass effect (print-safe)
