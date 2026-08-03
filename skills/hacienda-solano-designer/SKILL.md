---
name: hacienda-solano-designer
description: Usar SOLO para diseño de marketing y visual de Hacienda Solano. Dispara con: diseñar banner, hero, promoción, ad, pieza visual, redes sociales, flyer, copy de marca.
---

# Hacienda Solano Designer

Usar esta skill SOLO para trabajo de diseño visual y marketing de Hacienda Solano. Seguir los pasos en orden: cada paso desbloquea el siguiente.

---

## 1. Preparar

### 1.1 Cargar conocimiento del negocio

Leer antes de referenciar cualquier dato real:

- `conocimiento/conocimiento-del-negocio.md` — fuente única de verdad: servicios, precios, horarios, contacto, ubicación, términos
- `conocimiento/brand/brand-identity.md` — paleta, tipografía, tono, voz de marca
- `conocimiento/brand/structural-tokens.md` — border radius, shadows, spacing, overlays, buttons
- `conocimiento/brand/organic-art-direction.md` — dirección de arte orgánica

**Regla:** nunca inventar precios, contactos, políticas ni claims. Si falta un dato, marcarlo como placeholder explícito.

### 1.2 Briefing basado en conocimiento

Antes de preguntarle al usuario por datos del negocio, inspeccionar los archivos de `conocimiento/` y los assets ya disponibles. Preguntar solo por decisiones que los archivos no puedan resolver.

### 1.3 Descubrimiento con el usuario

No saltar a producción. Armar el brief con una pregunta a la vez.

**Protocolo:**
- Una pregunta enfocada por turno. Esperar respuesta antes de continuar.
- Empezar por la pregunta mínima necesaria. No enviar cuestionarios.
- Si el brief sigue ambiguo, no producir.

**Preguntas. Priorizar las marcadas con ★:**

★ 1. ¿Cuál es el objetivo de negocio: atraer, considerar o convertir?
★ 2. ¿Qué debe entender el espectador en 2 segundos?
★ 3. ¿Cuál es el formato final exacto? (post, story, banner, flyer, impresión personalizada, etc.)
  Si es impresión, preguntar además antes de producir: ¿la imprenta necesita archivo a tamaño final exacto o archivo escalado para gran formato?
  4. ¿Dónde se usará? (hero, banner, social, landing)
  5. ¿Debe destacar precio, promo, experiencia o solo atmósfera?
  6. ¿Hay texto, oferta, contacto o restricción obligatoria?

Para assets sociales, las preguntas ★ 1–2–3–5–6 suelen bastar.

**Qué NO preguntar:** tono de marca, paleta, tipografía, precios, contacto, ubicación, horarios, políticas, nombres de productos o frases de marca. Todo eso ya está en `conocimiento/`.

---

## 2. Decidir

Antes de producir, fijar estas decisiones en orden:

1. **Objetivo de negocio** — una frase.
2. **Estado de la audiencia** — descubrimiento, consideración o conversión.
3. **Formato final** — tamaño exacto, orientación y contexto de uso. No asumir responsive. No tratar la pieza como componente de sistema. Si el usuario pide varias salidas, cada una es una variante independiente.
4. **Modo de impresión** — si la pieza es impresa, fijar uno de estos dos antes de diseñar o exportar:

| Modo | Cuándo usar | Qué significa |
|------|-------------|----------------|
| **Exact print** | A3, A4, flyers, carteles pequeños o cuando la imprenta pide medida final real | El arte y el PDF final salen en la medida física final exacta |
| **Scaled large-format** | Banner gigante, lona, backing, gigantografía o cuando la imprenta acepta escala | El arte y el PDF salen en una escala definida (`1:2`, `1:4`, `1:10`, etc.), pero siempre documentando tamaño final real y escala |

**Reglas duras del modo de impresión:**
- Nunca asumir que la imprenta va a escalar correctamente sin instrucción explícita.
- Si el usuario no sabe, preguntar si la imprenta pidió tamaño final real o archivo a escala para gran formato. Si no hay respuesta, no exportar PDF de imprenta todavía.
- En `Exact print`, el PDF debe declarar la medida física final real.
- En `Scaled large-format`, registrar tres datos: tamaño final real, escala de trabajo/exportación y tamaño físico del PDF exportado.
- Nunca mezclar "diseñado chico" con "entregado chico" sin declarar escala.

**Regla dura para artes finales:** una pieza de marketing exportable se diseña contra un canvas fijo. No usar breakpoints, layout responsive, ni `@media` para alterar jerarquía, tamaños o estructura del arte final, salvo que el usuario haya pedido explícitamente variantes separadas por formato. Si hacen falta varias medidas, se construyen como archivos/variantes independientes, no como un solo layout adaptable.
5. **Modo de producción** — preguntar al usuario si no lo especificó:

| Modo | Qué produce |
|------|-------------|
| **HTML/CSS** | Pieza en código, formato fijo, usando assets reales del proyecto |
| **Image prompt** | Concepto visual estático para generación de imágenes |
| **Mixed** | Base visual generada + capa HTML/CSS editable encima |

6. **Arquetipo de composición** — elegir uno, no improvisar:

| Arquetipo | Cuándo usar | Lógica de composición | Peso del CTA |
|-----------|-------------|----------------------|--------------|
| **Editorial Split** | Claridad, elegancia y legibilidad inmediata | Texto a la izquierda, visual a la derecha, espacio generoso entre zonas | Medio |
| **Immersive Hero** | Vender escape, calma o atmósfera emocional | Imagen lidera, texto con velo o degradado suave | Bajo a medio |
| **Quiet Conversion Strip** | Banner horizontal para reserva directa | Mensaje limpio, una línea de apoyo, CTA obvio, mínima interrupción visual | Alto pero contenido |
| **Framed Premium Offer** | Promo o propuesta de valor elegante | Oferta integrada en marco refinado, nunca como sticker o insignia | Medio |

7. **Mensaje dominante** — qué entiende el espectador en 2 segundos.
8. **Prioridad atmósfera vs conversión** — cuál lidera.

**Regla de prioridad:**
- Descubrimiento → atmósfera lidera, CTA apoya.
- Consideración → balance entre mensaje y atmósfera, CTA visible.
- Conversión → claridad lidera, atmósfera apoya, CTA explícito pero premium.

---

## 3. Producir

Ejecutar solo el flujo del modo elegido.

### 3.1 Recolección de contexto (todos los modos)

- Brand tokens: `conocimiento/brand/structural-tokens.md`
- Datos de negocio: `conocimiento/conocimiento-del-negocio.md`
- Si el destino es impresión, leer también `references/print.md`
- Decisiones de diseño: paso 2 completo
- Fotos reales: `assets/photos/` organizadas por servicio
- Componentes reutilizables: `assets/components/`, `ui-lab.html`
- Recursos decorativos: `assets/decorative/` (shapes, ornaments, dividers, palms)
- Íconos del sistema: `assets/icons/`

**Convención de salida:**
- Cada proyecto vive en `proyectos/<nombre-proyecto>/` (ej: `proyectos/banner-panamericana-hotel/`)
- La carpeta contiene: `brief.md`, `.html`, `.pdf` y cualquier archivo específico de ese entregable
- Las imágenes siempre se referencian desde `assets/photos/` con ruta relativa (ej: `../../assets/photos/alojamiento/Domo.jpeg`)
- `assets/photos/` es la galería unificada, no se duplican imágenes en `proyectos/`

### 3.2 Reglas visuales

Aplicar durante la producción. Cada regla es vinculante.

**Tratamiento visual:**
- Un solo punto focal dominante: el mensaje o la atmósfera, no ambos compitiendo.
- Densidad visual baja a media. La composición debe respirar.
- Capas suaves, textura sutil, contraste amable. Sin separaciones duras.
- Zonas seguras limpias para el copy antes de elementos decorativos.
- La fotografía apoya el mensaje, no compite con él.
- Formas orgánicas solo si crean flujo o marco. Si agregan ruido, fuera.
- Promociones integradas en el mundo de la marca, nunca pegadas encima.
- Paleta: terrosos, verdes apagados, arena, blanco roto, carbón profundo, acentos terracota.

**Anti-patrones:**
- No lenguaje de venta agresivo ni lógica de descuento de supermercado.
- No cintas diagonales, estallidos, cuenta regresiva ni stickers de oferta.
- No gradientes saturados, acentos neón ni superposiciones de alto contraste.
- No saturar con bloques, íconos, etiquetas o separadores decorativos.
- No tipografía de lujo falso, scripts sobrecargados ni clichés hoteleros.
- No CTA agresivo, barato o desconectado del resto de la composición.
- No imagen más ruidosa que el mensaje.
- No visual genérico de anuncio de viajes, template de booking o promo Canva.
- No apilar múltiples claims emocionales. Un mensaje gana; el resto apoya.

**Copy:**
- Corto, seguro, sensorial. Español neutro profesional, tono cálido.
- Beneficios sobre características. Sin redacción corporativa.
- Ejemplos de marca: "Tu refugio entre viñas y calma", "Escapate a Hacienda Solano", "Naturaleza, descanso y hospitalidad", "Desconexión total".

**Fotografía:**
- Para piezas públicas, preferir fotos reales de la propiedad.
- Imágenes generadas solo como apoyo atmosférico, no para representar el lugar físico.

**Assets y componentes:**
- Reutilizar recursos existentes (`assets/components/`, `assets/decorative/`, `assets/icons/`). Si cubren el 80%, adaptar, no reemplazar.
- Formas orgánicas decorativas son acentos, no contenedores de contenido.
- No colocar texto principal o CTA dentro de manchas decorativas.

**Escenas sintéticas:**
- No presentar escenas fabricadas por IA como visuales reales de la hacienda.
- Si el usuario pide una imagen sintética pública, redirigir a HTML/CSS con foto real, prompt de concepto etiquetado, dirección de arte para sesión de fotos o Mixed mode con separación clara.

### 3.3 Modo HTML/CSS

1. Leer assets: logos (`assets/logo/`), fotos (`assets/photos/`), CSS tokens, componentes (`assets/components/`), decorativos (`assets/decorative/`), íconos (`assets/icons/`), `ui-lab.html`
2. Si es impreso, fijar también el contrato físico antes de diseñar:
   - `Exact print` → canvas y PDF orientados al tamaño final real
   - `Scaled large-format` → canvas y PDF orientados al tamaño escalado elegido, pero documentando además el tamaño final real y la escala
3. Fijar el canvas al formato aprobado para esa variante
4. Escribir HTML/CSS completo aplicando las reglas de 3.2
5. No introducir breakpoints responsive para el arte final. Si el export es `1080x1080`, el HTML debe preservarse exactamente en `1080x1080`.
6. Si es PDF de impresión, declarar `data-print-width` y `data-print-height` en la medida física que se va a exportar:
   - `Exact print` → medida final real
   - `Scaled large-format` → medida física escalada del PDF
7. Si la pieza es print en HTML, cargar `brand/brand-print-tokens.css` después de `brand/brand-tokens.css` para usar la paleta print del proyecto.
8. Si es `Scaled large-format`, documentar dentro de `brief.md` o junto al entregable: tamaño final real, escala elegida y tamaño exportado.
9. Guardar en `proyectos/<nombre-proyecto>/nombre-pieza.html`
10. Ejecutar `tools/validate-design.ps1` contra el archivo. Corregir cualquier violación.

### 3.4 Modo Image prompt

1. Recolectar contexto y redactar el prompt completo con datos reales
2. El prompt debe incluir: formato, concepto visual, composición, colores exactos de marca, texto requerido, criterios de layout y restricciones
3. Si hay API de generación: ejecutar y guardar en el proyecto (`proyectos/<nombre-proyecto>/nombre-pieza.png`)
4. Si no hay API: entregar el prompt al usuario

### 3.5 Modo Mixed

1. Seleccionar foto real de `assets/photos/`
2. Redactar prompt de edición: preservar arquitectura, ángulo, proporciones y materiales reales. Solo cambiar luz, atmósfera y zonas seguras para copy. Sin texto en la imagen.
3. Si hay API: generar y guardar en el proyecto (`proyectos/<nombre-proyecto>/nombre-pieza-base.png`). Si no: entregar prompt.
4. Montar HTML/CSS encima con copy, CTA, tipografía, overlays. Contenido de negocio 100% en HTML.
5. Guardar en el proyecto (`proyectos/<nombre-proyecto>/nombre-pieza.html`)

---

## 4. Revisar y validar

Gate obligatorio antes de exportar. No alcanza con que la pieza se vea linda: debe entenderse rápido, sostener la jerarquía correcta y leerse bien en el contexto real de uso.

### 4.1 Contenido y jerarquía

| Bloque | Máximo |
|--------|--------|
| Mensaje principal | 1 |
| Titular | 1 |
| Línea de apoyo | 0 o 1 |
| CTA principal | 0 o 1 |
| Bloque auxiliar (eyebrow, cierre, nota) | 0 o 1 |
| Labels, badges o pills | 0 a 2, solo si agregan información nueva |

### 4.2 Regla de duplicación

- Si dos bloques comunican la misma idea, dejar uno solo.
- El apoyo no puede repetir el titular con otras palabras.
- El bloque auxiliar no puede repetir el apoyo.

### 4.3 Regla de jerarquía

- El titular manda. Ningún bloque secundario puede tener más presencia visual.
- El CTA no puede competir en peso visual con el titular.
- Ningún texto secundario puede pesar más que la línea de apoyo.

### 4.4 Poda obligatoria

Para cada bloque de texto, responder:

- ¿Es indispensable?
- ¿Agrega información nueva?
- ¿Si lo saco, la pieza mejora?

Si la respuesta es `no`, `no`, `sí` → eliminarlo.

### 4.5 Legibilidad según soporte

Primero definir el soporte real. No revisar impresión con criterio de pantalla ni revisar digital con criterio de cartel físico.

#### Digital

- Priorizar claridad inmediata y jerarquía visual.
- El texto debe seguir siendo legible en el tamaño real de publicación.
- No reducir textos por refinamiento estético si afecta la lectura.

#### Impreso

Antes de aprobar una pieza impresa, definir la **distancia de lectura esperada**:

- **Corta** — mano, mostrador, puerta cercana, recepción inmediata
- **Media** — pared, pasillo, acceso, recepción a pocos metros
- **Larga** — exterior, ingreso vehicular, lectura a varios metros

**Reglas obligatorias para impresión:**
- El mensaje principal debe ocupar una porción visual dominante del canvas. Si sobra demasiado aire y falta presencia del mensaje, la pieza falla.
- El texto secundario no puede caer a un tamaño que obligue a acercarse más de lo previsto.
- Si la distancia de lectura aumenta, el tamaño del mensaje debe crecer y la cantidad de texto debe bajar.
- No usar una composición "elegante" si sacrifica lectura rápida.
- En señalética operativa, la legibilidad manda por encima del refinamiento.

**Mínimos recomendados para impresión:**
- **Distancia corta**
  - mensaje principal: mínimo 32 pt
  - texto secundario: mínimo 18 pt
- **Distancia media**
  - mensaje principal: mínimo 60 pt
  - texto secundario: mínimo 24 pt
- **Distancia larga**
  - evitar bloques secundarios extensos
  - mensaje principal: escalar hasta dominar claramente el soporte
  - si no se lee en 2 segundos, rehacer

**Regla de uso del espacio:**
- Si el mensaje es corto y el soporte es grande, escalar el mensaje.
- No conservar aire "premium" a costa de impacto o legibilidad.
- En impresos funcionales, el espacio libre debe servir al mensaje, no debilitarlo.

**Regla de legibilidad del logo:**

El logo debe ser legible como firma de marca, no solo estar "presente". Para impresión:
- El texto del lockup (nombre "Hacienda Solano") debe leerse sin esfuerzo a la distancia prevista.
- Si el logo completo no es legible al tamaño mínimo de la distancia esperada, escalar el logo hasta que el nombre sea legible.
- Si escalar el logo completo desbalancea la composición, preguntar al usuario si prefiere usar solo el símbolo (ícono) sin el lockup de texto.
- No aceptar un logo que está pero no se lee.

**Mínimos orientativos para el lockup del logo en impresión:**
- **Distancia corta** — altura mínima del lockup: 72 pt
- **Distancia media** — altura mínima del lockup: 96 pt
- **Distancia larga** — altura mínima del lockup: 120 pt o escalar hasta que el nombre sea claramente legible, lo que resulte mayor

### 4.6 Verificación técnica y render

Gate técnico. No inspeccionar solo el código. Validar el resultado renderizado.

#### 4.6.1 Contrato de diseño

```powershell
powershell -File tools/validate-design.ps1 -InputHtml "proyectos/<nombre-proyecto>/nombre-pieza.html"
```

Si falla, corregir y repetir.

#### 4.6.2 Render visual

1. Abrir la pieza en el navegador a las dimensiones exactas del formato final.
2. Tomar captura de pantalla.
3. Verificar: jerarquía, espaciado, legibilidad, visibilidad del CTA, zonas seguras, recorte, tono de marca.
4. Si es impreso, verificar además lectura a la distancia esperada y uso suficiente del espacio disponible.
5. Si algo falla, corregir y repetir desde el paso 1.

#### 4.6.3 Regla de formato

- Validar en el tamaño final real para el que fue diseñada.
- No usar desktop/mobile como sustituto.
- Banner 1200x630 → validar en 1200x630.
- Story 1080x1920 → validar en 1080x1920.
- Múltiples medidas → cada una es una validación independiente.

**Regla adicional para impresión:**
- `Exact print` → validar contra la medida física final real.
- `Scaled large-format` → validar contra la medida escalada elegida y revisar que la escala preserve legibilidad respecto del tamaño final real.
- Si un banner gigante se diseña a escala, no aprobar solo porque se ve bien en el tamaño reducido; revisar la legibilidad proyectada al tamaño final.

### 4.7 Checklist final

- ¿Hay un solo mensaje principal?
- ¿Hay más de un CTA?
- ¿Hay más de un bloque auxiliar?
- ¿Algún bloque repite lo que ya dice otro?
- ¿La pieza se entiende más rápido si saco algo?
- ¿El mensaje principal domina de verdad el soporte?
- ¿La distancia de lectura prevista está resuelta?
- ¿La pieza usa bien el espacio disponible?
- ¿Se priorizó legibilidad por encima del adorno?
- Si la pieza lleva logo: ¿el nombre del lockup se lee claramente a la distancia prevista?

Si alguna respuesta falla, corregir antes de exportar.

---

## 5. Exportar

Solo después de pasar Revisar y Validar.

### 5.1 PNG maestro (digital)

Usar el script del proyecto, que exporta el canvas final mediante Playwright CLI en modo `?export=1`.

```powershell
powershell -File tools/export.ps1 -InputHtml "proyectos/<nombre-proyecto>/nombre-pieza.html" -OutputPng "proyectos/<nombre-proyecto>/nombre-pieza.png"
```

### 5.2 PDF (impresión)

Usar el script del proyecto, que genera un PDF nativo desde HTML en modo `?export=1`, apoyado por las reglas de impresión del contrato de export para preservar tamano fisico, fondos y texto vectorial.

**Antes de exportar, decidir cuál de estos dos casos aplica:**
- `Exact print` → declarar `data-print-width` y `data-print-height` con la medida final exacta elegida por el usuario, por ejemplo `420mm x 297mm` para A3 horizontal o `297mm x 210mm` para A4 horizontal.
- `Scaled large-format` → declarar `data-print-width` y `data-print-height` con la medida escalada que se va a entregar, y dejar documentados el tamano final real y la escala usada.

```powershell
powershell -File tools/export-pdf.ps1 -InputHtml "proyectos/<nombre-proyecto>/nombre-pieza.html" -OutputPdf "proyectos/<nombre-proyecto>/nombre-pieza.pdf"
```

### 5.3 Verificación

- Confirmar que los archivos exportados existen.
- Confirmar que cada archivo exportado existe en su carpeta correspondiente dentro de `proyectos/<nombre-proyecto>/`.
- Confirmar que las dimensiones del PNG coinciden exactamente con el canvas declarado.
- Para digital, verificar nitidez suficiente para publicación.
- Para impresion, verificar que el PDF incluya fondos, no recorte contenido y que su pagina fisica coincida con `data-print-width` y `data-print-height`.
- En `Scaled large-format`, verificar ademas que el entregable documente claramente: tamano final real, escala de entrega y tamano fisico exportado.
- Si la pieza es print en HTML, verificar que use `brand-print-tokens.css` y no solo la paleta web base.

---
