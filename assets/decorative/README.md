# Decorative — Hacienda Solano

Recursos visuales no semánticos para componer piezas gráficas.
No contienen información: existen para dar atmósfera, ritmo y estructura visual.

> **Gobernado por:** [`brand/organic-art-direction.md`](../../brand/organic-art-direction.md) —
> la filosofía visual de la subfamilia orgánica. Todo activo nuevo de tipo orgánico
> (shapes, dividers, ornaments con motivo botánico) debe alinearse con ese
> manifiesto antes de integrarse a esta librería.

---

## ¿Qué es un recurso decorativo?

Un elemento visual que **no comunica contenido** pero sí contribuye a la composición:
- Un separador entre secciones
- Una forma orgánica de fondo
- Un marco que contiene una foto
- Un ornamento que da carácter editorial

Todos son **atemporales**: sin modas visuales, sin estilos que envejezcan.

---

## Estructura

```txt
decorative/
  shapes/       → Formas geométricas y orgánicas (círculos, blobs, líneas curvas)
  dividers/     → Separadores horizontales entre secciones
  ornaments/    → Acentos decorativos puntuales (florales abstractos, viñetas)
```

---

## Contrato común

1. Todo recurso decorativo se entrega como **SVG** o **CSS puro** (nunca PNG raster).
2. Usan exclusivamente colores de la paleta oficial.
3. No compiten con la foto ni con el texto: son soporte, no protagonistas.
4. Escalan con el viewport sin perder calidad (SVG vectorial).
5. Se nombran por tipo + descriptor: `divider-wave.svg`, `shape-blob-01.svg`.

---


## shapes/

Formas abstractas que acompañan el fondo o crean puntos de interés visual.

**Cuándo usarlas:**
- Detrás de un título hero para dar profundidad
- Como fondo decorativo de una card editorial
- Para suavizar transiciones entre bloques

**Qué evitar:**
- Formas con colores fuera de paleta
- Más de 2 shapes en una misma composición
- Shapes que toquen texto y reduzcan legibilidad
- **Usar shapes como contenedor de imagen o texto** — las shapes son decorativas y atmosféricas, no estructurales. Para contener contenido, usar componentes del sistema (`card`, `hs-card--text`, etc.).

### Archivos disponibles

**Set orgánico extendido** — formas individuales (`shape-01.svg` a `shape-18.svg`), todas masas orgánicas decorativas (Deep Green 8%, sin stroke). Clasificadas por dos ejes prácticos: **footprint** (escala) y **proportion** (proporción).

| Archivo | Footprint | Proportion | Nota |
|---------|-----------|------------|------|
| `shape-14.svg` | Large (189×139) | Wide | La más ancha proporcionalmente (1.36:1). Ideal para strips horizontales. |
| `shape-09.svg` | Large (179×162) | Wide | Buena para acompañar bloques de contenido horizontales. |
| `shape-18.svg` | Large (179×163) | Wide | Silueta con dirección lateral. |
| `shape-04.svg` | Large (191×190) | Balanced | Masa cuadrada generosa. Fondo de card o hero. |
| `shape-16.svg` | Large (184×177) | Balanced | Equilibrada, con presencia. |
| `shape-03.svg` | Large (181×179) | Balanced | Similar a shape-04, carácter ligeramente distinto. |
| `shape-01.svg` | Large (197×187) | Balanced | Una de las más grandes y complejas del set. |
| `shape-07.svg` | Medium (164×169) | Balanced | Versátil, buen término medio. |
| `shape-11.svg` | Medium (163×170) | Balanced | Similar footprint a shape-07. |
| `shape-17.svg` | Medium (168×171) | Balanced | Buen candidato para esquinas editoriales. |
| `shape-13.svg` | Medium (163×150) | Balanced | Levemente apaisada, buena para costados. |
| `shape-10.svg` | Medium (166×151) | Wide | Compacta pero con presencia horizontal. |
| `shape-12.svg` | Medium (168×147) | Wide | Similar a shape-10, silueta distinta. |
| `shape-02.svg` | Medium (165×181) | Tall | Dirección vertical marcada. Márgenes laterales. |
| `shape-15.svg` | Medium (166×179) | Tall | Vertical, para acompañar columnas de texto. |
| `shape-05.svg` ✅ | **Small** (65×94) | Tall | **Approved.** Acento vertical. Esquinas, viñetas, detalles. |
| `shape-06.svg` | **Small** (51×71) | Tall | La más compacta. Detalle puntual, casi imperceptible. |

| Archivo | Descripción |
|---------|-------------|
| `organic-blob-01.svg` | Retirado del sistema activo. |
| `organic-blob-02.svg` | Retirado del sistema activo. |
| `organic-blob-03.svg` ✅ ✦ | "Puddle Form" — Masa orgánica central con 4 lóbulos pronunciados. Sin dirección dominante. 28 puntos de control. Deep Green 6%. Para composiciones centradas. Nivel 2. |

**Cómo elegir:**
1. **¿Cuánto espacio tengo?** → filtrá por Footprint (Large / Medium / Small)
2. **¿Qué dirección domina la composición?** → filtrá por Proportion (Wide / Balanced / Tall)
3. **Probá 2 o 3 candidatas** del celda resultante — cada una tiene carácter propio aunque compartan escala y proporción.

**Principios de diseño de shapes:**
- Curvas no uniformes: cada sección tiene carácter propio (convexo, cóncavo, tight, broad)
- Silueta con dirección y ritmo: la forma tiene "anatomía", no es solo un óvalo con ondas
- Puntos de control numerosos (20-30) para lograr imperfección controlada
- Opacidad ≤ 8% — presencia suficiente para sentirse, no para gritar

---

## dividers/

Separadores horizontales entre secciones de una misma pieza.

**Cuándo usarlos:**
- Entre título y cuerpo en una composición editorial
- Entre bloques de contenido en una landing
- Para marcar ritmo sin recurrir a líneas duras

**Qué evitar:**
- Líneas rectas genéricas (son frías, no hospitalarias)
- Dividers con más de un color
- Dividers que ocupen más del 60% del ancho del contenedor

### Archivos disponibles

| Archivo | Descripción |
|---------|-------------|
| `wave-divider-01.svg` ✅ | Onda suave horizontal doble capa, Deep Green 12% + 6%. Escala horizontalmente al 100% del contenedor (viewBox 1200×60 + `preserveAspectRatio="none"`). |

**Planeados:**

| Archivo | Descripción |
|---------|-------------|
| `leaf-line.svg` | Línea con motivos de hoja sutiles |
| `dots-row.svg` | Hilera de puntos orgánicos espaciados |

---

## ornaments/

Acentos decorativos de uso puntual. Dan carácter editorial sin distraer.

**Cuándo usarlos:**
- Como viñeta decorativa en una card de testimonio
- Como detalle en la esquina de una composición editorial
- Para enmarcar un quote o fecha importante

**Qué evitar:**
- Ornamentos que parezcan clip art
- Más de 2 ornamentos visibles en una misma pieza
- Ornamentos con opacidad > 40% (deben ser casi imperceptibles)

### Archivos disponibles

| Archivo | Descripción |
|---------|-------------|
| `sun-accent-01.svg` ✅ | Destello solar sutil con gradiente radial + 8 rayos tenues. Sun Accent, opacidad máxima 25%. Usar en hero pieces o esquinas editoriales. |
| `palm-01.svg` ✅ | Silueta de palmera lateral derecha. Deep Green 12%. Extraída del archivo Palmeras.svg original. ViewBox ajustado al contenido. Uso editorial: márgenes, esquinas, composiciones botánicas. |
| `palm-02.svg` ✅ | Silueta de palmera lateral izquierda. Deep Green 12%. Complemento de palm-01. Mismas reglas de uso. |
| `ornament-palm-mark-01.svg` | Retirado del sistema activo. |

**Planeados:**

| Archivo | Descripción |
|---------|-------------|
| `leaf-corner.svg` | Hoja estilizada para esquina superior |
| `quote-mark.svg` | Comilla decorativa para testimonios |

---

## Cómo agregar un recurso decorativo nuevo

1. Crear el SVG en la carpeta que corresponde (`shapes/`, `dividers/`, etc.)
2. Nombrarlo con patrón `{tipo}-{descriptor}.svg`
3. Usar solo colores de la paleta oficial (nunca negro puro, nunca colores inventados)
4. Agregarlo a la tabla de ejemplos de esta página
5. Si el recurso introduce un nuevo patrón visual, documentarlo acá
