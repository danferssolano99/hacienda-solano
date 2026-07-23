# Hacienda Solano — Graphic Designer Workspace

Espacio de trabajo autónomo para diseñar y exportar activos visuales de Hacienda Solano. Incluye tokens de marca, guías de diseño y un skill LLM-first para generación asistida.

El sistema es **format-driven**, no template-driven. El formato, las dimensiones y las safe zones mandan sobre cualquier layout heredado.

## Estructura

```
Hacienda Solano/
├── skills/                           # (retirada — la skill activa es global en ~/.config/opencode/skills/hacienda-solano-designer/)
├── README.md                         # Este archivo
├── .gitignore
├── brand/
│   ├── brand-tokens.json             # Design tokens (light/dark)
│   └── brand-tokens.css              # CSS custom properties (light/dark)
├── conocimiento/
│   ├── README.md                     # Índice central para el diseñador
│   ├── conocimiento-del-negocio.md   # Negocio, servicios, precios, políticas, claims
│   ├── Paisajismo.md                 # Contexto espacial y paisajístico del predio
│   └── brand/
│       ├── brand-identity.md         # Estrategia de marca y reglas visuales
│       ├── structural-tokens.md      # Decisiones visuales base (radius, shadows, etc.)
│       └── organic-art-direction.md  # Reglas de dirección de arte orgánica
├── references/
│   ├── design-principles.md          # Reglas estratégicas (contrato del diseñador)
│   ├── composition.md                # Reglas de composición y jerarquía
│   ├── typography.md                 # Escala tipográfica y fuentes
│   ├── color.md                      # Paleta, proporciones, accesibilidad
│   ├── prompt-engineering.md         # Estructura de prompts de generación de imágenes
│   ├── print.md                      # Especificaciones de impresión
│   ├── social-formats.md             # Formatos y safe zones por red social
│   ├── export-workflow.md            # Flujo oficial de exportación digital y print
│   └── quality-checks.md             # Checklist de control de calidad
├── templates/                        # Solo plantillas reutilizables reales
├── assets/
│   ├── README.md                     # Convenciones de assets
│   ├── logo/                         # Logos reales (SVG/PNG)
│   ├── photos/                       # Fotos de eventos
│   ├── fonts/                        # Fuentes locales (opcional)
│   ├── exports/                      # PNGs y PDFs exportados
│   ├── export.css                    # Estilos de exportación (oculta UI auxiliar)
│   └── export.js                     # Script de exportación (escala, fuentes, carga)
└── tools/
    ├── export.ps1                    # Exportador PNG exacto
    └── export-pdf.ps1               # Exportador PDF
```

## Requisitos previos

- **Chrome** para preview y exportación. Es el único navegador usado en el flujo oficial.
- **Google Fonts** cargadas vía CDN (Fraunces + Manrope). Conexión a internet requerida para la primera carga.
- Para exportación: usar `tools/export.ps1`, que captura el canvas declarado a escala 1:1.
- **Sin dependencias de Node.js, npm ni frameworks.** Las piezas son HTML/CSS plano con CSS custom properties.

## Flujo de trabajo

El flujo es **format-first**: primero definís qué vas a diseñar y para qué, después producís. No arrancás desde una plantilla rígida.

### 1. Aprobar el brief

Antes de tocar código, resolvé y dejá por escrito estas decisiones:

| Decisión | Opciones |
|---|---|
| **Modo** | `HTML/CSS` o `prompt para IA` |
| **Formato** | post, historia, banner, flyer, portada, etc. |
| **Objetivo** | `commercial` (conversión, CTA) o `editorial` (atmósfera, marca) |
| **Assets** | ¿Hay foto real? ¿Hay copy final o se sugiere? |
| **Público** | ¿A quién debe mover la pieza? |
| **Mensaje** | ¿Qué debe recordar la persona después de verla? |
| **CTA** | ¿Qué acción concreta debe realizar? |

Si alguna de estas no está definida, **preguntá primero**. No diseñes por intuición.

El brief no es burocracia: evita producir piezas visualmente correctas pero estratégicamente inútiles.

### 2. Diseñar la pieza

Con el formato y objetivo claros, creás la pieza:

- Los diseños nuevos se crean **desde cero por defecto**. `templates/` contiene únicamente plantillas reutilizables reales (piezas de sistema como header/footer, estructuras de página, o layouts repetibles aprobados). Si un diseño no es una plantilla reutilizable, no debe estar en `templates/`.
- Una plantilla solo se usa si el usuario la pide explícitamente o si el caso ya tiene una plantilla de sistema aprobada para ese propósito. Si no es claro, **preguntar**.
- Lo obligatorio es respetar:
  - el formato final y sus dimensiones
  - las safe zones (ver `references/social-formats.md`)
  - los tokens de marca (`brand/brand-tokens.css`)
  - el contrato de exportación (`assets/export.css` + `assets/export.js`)
- El canvas raíz debe declarar `data-export-canvas`, `data-export-width`, `data-export-height`.
- Archivos con nombre versionado: `post-evento-1080x1350-v01.html`.

### 3. Abrir en Chrome

Una vez creado el HTML, abrilo en Chrome para verlo en navegador real:

```powershell
Start-Process chrome "C:\ruta\completa\al\archivo.html"
```

No uses DevTools para emular viewport: el canvas ya tiene dimensiones fijas declaradas.

### 4. Iterar

Después de abrirlo, entrás en modo iteración:

- Ajustar jerarquía visual
- Pulir copy
- Mover composición
- Cambiar foto
- Refinar CTA

No exportes hasta que la versión visual esté aprobada. Versioná: `v01` = primera propuesta, `v02` = iteración, `v03+` = refinamientos.

### 5. Exportar

Solo después de aprobación visual.

**PNG exacto (1:1)**:

```powershell
.\tools\export.ps1 `
  -InputHtml .\templates\post-evento-1080x1350-v03.html `
  -OutputPng .\assets\exports\evento-post-1080x1350-v03.png
```

El exportador activa `?export=1`, espera fuentes e imágenes, elimina la UI de preview (`data-export-ui`) y fuerza escala de dispositivo 1. Falla si falta un `src` o si una imagen no carga.

**PDF**:

```powershell
.\tools\export-pdf.ps1 `
  -InputHtml .\templates\banner-evento-1920x1080.html `
  -OutputPdf .\assets\exports\evento-banner-1920x1080-v01.pdf
```

El PDF usa reglas `@media print`, mantiene imágenes cargadas y elimina encabezados, márgenes y UI de preview.

### 6. Revisar visualmente

Antes de exportar, revisá la pieza en tamaño real y en miniatura. Debe responder afirmativamente:

- ¿Se entiende el mensaje en tres segundos?
- ¿Existe un único punto focal?
- ¿La foto representa una experiencia real de Hacienda Solano?
- ¿El CTA se encuentra naturalmente, si la pieza es comercial?
- ¿La pieza funciona sin depender del logo?
- ¿Hay algún elemento que pueda eliminarse sin perder claridad?

Si una respuesta es negativa, iterá. No lo compenses agregando más elementos.

### 7. Validar

Ejecutar la checklist de `references/quality-checks.md` antes de publicar.

## Uso del skill AI

Este workspace incluye un skill (`hacienda-solano-designer` en la configuración global de OpenCode) diseñado para agentes LLM. Activalo cuando necesites:

- Generar un banner/post/story para un evento específico.
- Iterar sobre variaciones de un diseño existente.
- Verificar que un diseño cumple con las reglas de marca.

El skill debe leer primero `conocimiento/README.md` y los archivos que indexa antes de preguntar por datos de marca o negocio.

### Ejemplo

> "Usando la skill de Hacienda Solano, generá un post cuadrado para la boda de Carla y Miguel, el 15 de noviembre a las 4pm, foto en `assets/photos/boda-carla-miguel-post.jpg`."

## Definition of done

Una pieza está terminada únicamente cuando tiene brief aprobado, foto real correctamente encuadrada, jerarquía clara, safe zones respetadas, revisión perceptual aprobada y exportación validada.

## Notas

- `templates/` contiene únicamente plantillas reutilizables reales. Un diseño nuevo se crea desde cero por defecto. Una plantilla solo se usa si el usuario la pide o si el caso ya tiene una plantilla de sistema aprobada.
- Para imprimir (A4, A5), las piezas digitales no deben reutilizarse como archivo de imprenta. Crear una variante print con `data-print-width="210mm"`, `data-print-height="297mm"`, `@page` sin márgenes y exportar a PDF desde Chrome con fondos habilitados.
- Los modos claro/oscuro se controlan con el atributo `data-color-scheme="light|dark"` en el `<html>`. También responden a `prefers-color-scheme` del sistema.
