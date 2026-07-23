# Structural Tokens — Hacienda Solano

Decisiones visuales base para los recursos gráficos y templates de Hacienda Solano.

## 1. Border radius

- **Decisión elegida:** Opción C
- **Valor base recomendado:** `24px`
- **Equivalencia conceptual:** lenguaje tipo `3xl`

### Interpretación

Se elige un radio amplio y suave para reforzar una sensación más hospitality, cálida y boho chic. Esta decisión ayuda a evitar una lectura demasiado rígida o demasiado UI/SaaS.

### Uso recomendado

- Cards principales: `24px`
- Superficies destacadas: `24px`
- Contenedores secundarios: `18px`
- Botones: `20px`
- Chips / pills: `999px`

## 2. Shadows

- **Decisión elegida:** Opción B
- **Lenguaje base:** sombra equilibrada

### Interpretación

Se define una sombra con profundidad moderada: suficiente para dar volumen y jerarquía, sin volverse pesada ni demasiado decorativa. Este lenguaje acompaña bien banners, posts, cards y overlays.

### Regla base

Usar sombras cálidas, suaves y controladas. Deben acompañar el relieve visual, no protagonizarlo.

### Uso recomendado

- Base / cards: sombra media
- CTA importantes: sombra media con un poco más de presencia
- Hero pieces: se permite una sombra más profunda solo como excepción

### Excepción permitida

- **Opción C** puede usarse solo en piezas hero o bloques protagonistas donde se busque más impacto visual.

## 3. Criterio general

Los tokens estructurales de Hacienda Solano deben sentirse:

- cálidos
- suaves
- actuales
- hospitalarios
- ligeros, no corporativos

Evitar:

- bordes duros o muy pequeños como lenguaje dominante
- sombras demasiado teatrales
- estética demasiado tech o dashboard

## 4. Borders / strokes

- **Decisión elegida:** Opción A
- **Lenguaje base:** borde suave y discreto

### Interpretación

Se prioriza un perímetro liviano que ordena sin competir con la foto, la tipografía o los fondos cálidos. El borde debe acompañar, no protagonizar.

### Regla base

- Borde principal: `1px`
- Color sugerido: verde o deep green con opacidad baja
- Aplicación: cards, contenedores, chips y superficies suaves

### Uso recomendado

- Cards y contenedores: `1px solid rgba(26, 51, 28, 0.08)`
- Chips y pills: `1px solid rgba(45, 90, 49, 0.08)`
- Bordes decorativos más notorios: solo por excepción, no como sistema base

## 5. Spacing / internal air

- **Decisión elegida:** Opción B
- **Lenguaje base:** aire interno equilibrado

### Interpretación

Se define un spacing que deja respirar el contenido sin volverlo demasiado editorial ni demasiado compacto. La marca mantiene hospitalidad, claridad y buen ritmo visual.

### Regla base

- Cards principales: padding medio
- Separaciones entre bloques: consistentes, no apretadas
- CTA y chips: aire suficiente para sentirse cómodos y legibles

### Uso recomendado

- Card padding base: `24px`
- Separación entre título y cuerpo: `10px` a `14px`
- Separación entre bloques internos: `16px` a `24px`
- Gap entre chips: `10px` a `14px`
- Margen antes de CTA: `16px`

### Excepción permitida

- Spacing más amplio solo en piezas hero o composiciones más editoriales.

## 6. Blur / glass effect

- **Decisión elegida:** contextual
- **Base para impresión / larga distancia:** Opción A
- **Base para piezas digitales estándar:** Opción A
- **Uso expresivo / hero digital:** Opción C solo por excepción

### Interpretación

El blur no debe tratarse como una regla única para todos los formatos. En impresión y piezas vistas a distancia conviene priorizar limpieza y contraste. En digital estándar también se prioriza limpieza, porque un blur medio en glass cards con texto reduce la nitidez y baja la legibilidad. El blur fuerte queda solo para casos hero muy controlados.

### Regla base

- **Print / exterior / larga distancia:** sin blur
- **Digital estándar:** sin blur
- **Hero digital o piezas más atmosféricas:** blur fuerte solo si mejora legibilidad y no se vuelve efecto protagonista

### Uso recomendado

- Opción A: banners impresos, piezas de carretera, flyers de lectura rápida, posts y stories con texto funcional
- Opción C: campañas hero, covers especiales, composiciones editoriales puntuales

### Glass cards

- **Regla:** no usar blur medio (`~10px`) en glass cards con texto.
- **Motivo:** compromete la legibilidad.
- **Base recomendada:** card translúcida sin blur o con separación por color/overlay.
- **Excepción:** blur fuerte solo en hero digital, con texto breve y contraste claramente suficiente.

## 7. Chips / Pills

- **Lenguaje base:** outline, borde suave
- **Border radius:** `999px` (full pill)
- **Borde:** `1px solid rgba(45, 90, 49, 0.08)` — hereda la decisión de borders Opción A
- **Padding:** `8px` a `12px` vertical, `16px` a `20px` horizontal
- **Tipografía:** Manrope 600 (SemiBold) a `13px`–`14px`, color Deep Green
- **Fondo:** Warm Cream o White translúcido en estado normal
- **Estado activo / seleccionado:** fondo Sun Accent con texto Deep Green

### Interpretación

Los chips deben sentirse hospitalarios, no técnicos. La forma pill completa (`999px`) comunica cercanía y suavidad. El borde outline mantiene el lenguaje liviano definido en la decisión de borders.

### Uso recomendado

- Etiquetas de categoría: "Alojamiento", "Eventos", "Piscina"
- Filtros: "Bungalow", "Glamping", "Habitación"
- Badges de estado: "Disponible", "Incluye desayuno"
- Tamaño recomendado de ícono interior: `16px` a `18px`
- Gap entre chips: `10px` a `14px`

### Evitar

- Chips demasiado compactos (< 8px padding vertical)
- Más de 3 colores distintos en una misma vista
- Combinar chips filled + outline en el mismo grupo sin distinción funcional clara

## 8. Button Sizing / Style Language

- **Border radius:** `20px` — hereda la escala de la decisión de radius
- **Min-height:** `48px` a `56px`
- **Padding horizontal:** `24px` a `32px`
- **Tipografía:** Manrope 600 o 700 (SemiBold/Bold), mayúsculas, tracking `0.08em`
- **Tamaño de fuente:** `14px` a `16px`

### Jerarquía de botones

| Variante | Fondo | Borde | Sombra |
|----------|-------|-------|--------|
| **Primary** | Gradiente Sun Accent → Warm Gold | Sin borde | `0 12px 24px rgba(238, 187, 45, 0.18)` (Opción B de sombras) |
| **Secondary** | Transparente | `1px solid` Deep Green al 12% | Sin sombra |
| **Tertiary / Link** | Transparente | Sin borde | Sin sombra |

### Interpretación

El botón primario debe ser el ancla visual más cálida de la composición. El gradiente dorado sobre fondo crema o verde oscuro funciona como punto focal sin ser agresivo. La sombra equilibrada (Opción B) le da presencia sin dramatismo.

### Estados

- **Hover:** ligero lift (`translateY(-1px)`) + aumento sutil de sombra
- **Active:** sin lift, sombra reducida
- **Disabled:** opacidad `0.45`, sin sombra, sin hover

### Evitar

- Botones menores a `44px` de altura (problemas de accesibilidad táctil)
- Más de un botón primario por vista
- Botones primarios sin suficiente contraste contra el fondo

## 9. Overlay Opacity Guidance

Los overlays sobre fotos deben usar exclusivamente colores de la paleta de marca. Nunca negro puro ni blanco puro uniforme.

### Escala de opacidad

| Contexto | Color base | Opacidad | Dirección |
|----------|-----------|----------|-----------|
| **Texto claro sobre foto** | Deep Green `#1A331C` | 20%–35% | Bottom → top |
| **Texto oscuro sobre foto clara** | Warm Cream `#F5F1E6` | 40%–60% | Desde el lado del texto |
| **Glass card sobre foto (digital)** | Deep Green o White | 8%–15% + blur | Uniforme con backdrop-blur |
| **Hero campaña (excepción)** | Deep Green | hasta 45% | Bottom → top o radial |
| **Banner web con texto lateral** | Warm Cream + Deep Green | 40%–70% Warm Cream en el lado del texto | Horizontal, desde el lado del texto |

### Reglas

- El overlay siempre debe ser **direccional** (gradiente), nunca uniforme.
- Priorizar degradados bottom→top (90deg) o side→center según dónde esté el texto.
- El objetivo es **legibilidad**, no efecto decorativo.
- Si la foto es naturalmente oscura, reducir la opacidad del overlay.

### Evitar

- Overlay negro uniforme (mata la calidez de la foto)
- Overlay que cubra más del 70% de la foto (se pierde la imagen)
- Múltiples capas de overlay compitiendo entre sí

## 10. Content Max Widths / Container Logic

### Anchos máximos por contexto

| Contexto | Max-width | Justificación |
|----------|-----------|---------------|
| **Contenedor de página general** | `1200px` | Layout amplio para grids de cards, galerías |
| **Texto de lectura / artículos** | `720px` | ~65 caracteres por línea para lectura cómoda |
| **Card individual en grid** | `400px` | Tamaño máximo antes de que una card deje de sentirse contenida |
| **Bloque de texto en banner** | `550px` | Texto sobre foto lateral, no debe competir con la imagen |
| **Hero title block** | `700px` | Ancho suficiente para un título generoso sin volverse ilegible |

### Lógica de contenedores

- Usar `max-width` + `margin: 0 auto` para centrar.
- Padding lateral de página: `min(5%, 48px)` — relativo al viewport, con tope.
- Los fondos de marca (Warm Cream, Deep Green) deben extenderse de borde a borde. Solo el contenido se contiene.
- En mobile (< 768px), el padding lateral baja a `min(5%, 24px)`.

### Evitar

- Contenido que toque los bordes del viewport sin padding
- Líneas de texto de más de 75 caracteres (se vuelven difíciles de seguir)
- Cards que ocupen más de 400px de ancho sin contenido suficiente para justificarlo

## 11. Title Width / Line-Length Guidance

### Reglas de título

| Regla | Valor |
|-------|-------|
| **Ancho máximo de título** | `700px` |
| **Líneas máximas** | 2 (Fraunces) |
| **Caracteres por línea (título)** | 40–55 caracteres |
| **Caracteres por línea (cuerpo)** | 60–75 caracteres |
| **Ancho máximo de párrafo** | `640px` |

### Estrategia de ajuste

Si el título excede 2 líneas al tamaño definido, aplicar en este orden:

1. Reducir tracking de `-0.02em` a `-0.04em` (máximo `-0.05em`)
2. Si aún no cabe, reducir 1 paso de tamaño
3. Si sigue sin caber, revisar el copy — posiblemente sea demasiado largo para el formato

### Interpretación

Los títulos en Fraunces funcionan mejor cuando son concisos, rítmicos y no compiten con la imagen. Un título de más de 2 líneas en esta serif display empieza a sentirse pesado. La restricción de ancho (`700px`) existe para mantener la legibilidad, no para forzar títulos cortos artificialmente.

### Evitar

- Títulos que ocupen todo el ancho de un banner de 1920px
- Tracking negativo más agresivo que `-0.05em` (la legibilidad se degrada)
- Más de 2 líneas en Fraunces para títulos principales

## 12. Image Overlay Gradient Intensity

### Tipos de gradiente de overlay

| Tipo | Uso | Construcción CSS |
|------|-----|-----------------|
| **Bottom fade** | Texto claro centrado o inferior sobre foto | `linear-gradient(0deg, rgba(26,51,28,0.30) 0%, rgba(26,51,28,0.12) 50%, transparent 100%)` |
| **Side fade** | Texto oscuro lateral sobre foto clara | `linear-gradient(90deg, rgba(245,241,230,0.70) 0%, rgba(245,241,230,0.30) 45%, transparent 65%)` |
| **Radial highlight** | Hero piece con foco central | `radial-gradient(circle at center, rgba(26,51,28,0.05) 0%, rgba(26,51,28,0.35) 100%)` |
| **Glass bar** | Barra inferior con información, digital | `rgba(26,51,28,0.18)` + `backdrop-filter: blur(12px)` |

### Intensidad por contexto

| Contexto | Overlay | Blur |
|----------|---------|------|
| **Banner horizontal (texto lateral)** | Side fade 40%–70% Warm Cream | Sin blur (print-safe) |
| **Post cuadrado (texto inferior)** | Bottom fade 20%–30% Deep Green | Sin blur |
| **Story vertical (texto centrado)** | Bottom fade 25%–40% Deep Green | Opcional: blur `8px` en glass accents |
| **Hero web / landing** | Bottom fade 30%–45% Deep Green | Opcional: blur `16px` solo en zona de texto |
| **Glass card flotante** | Uniforme 10%–18% Deep Green o White | `backdrop-filter: blur(12px)` |

### Regla de oro

> El gradiente debe ser **invisible a primera vista** y solo notarse cuando uno busca por qué el texto se lee tan bien. Si el overlay se convierte en el protagonista, está mal calibrado.

### Evitar

- Gradientes con más de 3 stops de color (se vuelven artificiales)
- Overlay que oscurezca más del 50% de la foto en piezas estándar
- Gradiente radial como solución por defecto (caso de uso muy específico)
- Mezclar blur + gradiente fuerte (genera un efecto "empañado" poco elegante)
