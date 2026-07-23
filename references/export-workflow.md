# Export Workflow — Hacienda Solano

Flujo oficial para exportar piezas gráficas de Hacienda Solano sin depender de “imprimir” como hoja tradicional.

---

## 1. Principio base

- **Digital ≠ Print**
- Nunca usar la opción normal de imprimir del navegador como método principal para posts, stories o banners de redes.
- Para digital, exportar por **captura exacta del canvas**.
- Para print, preparar una **versión específica de impresión** con medidas y resolución reales.

---

## 2. Modos de salida

### A. Digital / redes sociales

Usar para:
- posts 1080×1080
- stories 1080×1920
- banners 1920×1080
- covers y piezas web

**Salida final recomendada:**
- PNG para piezas con texto nítido
- JPG solo si el peso importa mucho y no compromete calidad
- Perfil: `sRGB`

### B. Print / imprenta

Usar para:
- banners físicos
- flyers
- piezas de carretera
- material impreso

**Salida final recomendada:**
- PDF de impresión o PNG/JPG grande solo si la imprenta lo acepta
- versión diseñada en dimensiones reales
- revisar sangrado, márgenes y resolución antes de exportar

---

## 3. Contrato técnico de exportación

Todo template exportable debe tener:

```html
<link rel="stylesheet" href="../assets/export.css">
<script src="../assets/export.js" defer></script>
<article data-export-canvas data-export-width="1080" data-export-height="1080">
  ...
</article>
```

`export.js` espera `document.fonts.ready` y cada imagen del canvas. Si falta una imagen o no carga, la exportación falla. El parámetro `?export=1` elimina el entorno de preview y deja el documento exactamente en el tamaño declarado. Todo texto de ayuda o control que no sea parte del arte debe marcarse con `data-export-ui`.

## 4. Flujo oficial para digital

### Paso 1 — Crear la pieza en el formato exacto

El HTML debe usar el tamaño final real del asset:

- Post: `1080×1080`
- Story: `1080×1920`
- Banner horizontal: `1920×1080`

Podés crear desde cero o tomar referencia de las piezas existentes en `templates/`.

### Paso 2 — Activar export mode

El template debe quedar:

- sin fondo exterior del `body`
- sin notas de ayuda
- sin marcos de preview decorativos
- sin sombras de presentación ajenas al diseño
- mostrando solo el canvas final

### Paso 3 — Abrir en navegador

Abrir el archivo HTML directamente.

### Paso 4 — Exportar por captura reproducible

Desde PowerShell, en la raíz del workspace:

```powershell
.\tools\export.ps1 `
  -InputHtml .\templates\post-alojamiento-1080x1080.html `
  -OutputPng .\assets\exports\alojamiento-post-1080x1080-v01.png
```

La captura manual de DevTools queda reservada para inspección visual, no para el entregable final.

## 5. Exportar PDF

```powershell
.\tools\export-pdf.ps1 `
  -InputHtml .\templates\banner-alojamiento-overlay-1920x1080.html `
  -OutputPdf .\assets\exports\alojamiento-banner-1920x1080-v01.pdf
```

Este comando usa el modo print del navegador y las reglas `@media print`. Para imprenta profesional, la variante debe declarar sus medidas físicas y sangrado; el PDF de una pieza digital no reemplaza un arte preparado para imprenta.

### Paso 5 — Guardar naming correcto

Ejemplos:

```txt
alojamiento-post-1080x1080-v01.png
eventos-story-1080x1920-v02.png
piscina-banner-1920x1080-v01.png
```

Guardar en:

```txt
assets/exports/
```

---

## 5. Flujo oficial para print

### Paso 1 — Crear versión específica

No reutilizar directamente la pieza de redes.

Preparar template con:
- medidas reales
- jerarquía apta para distancia
- menos texto
- contraste alto

### Paso 2 — Definir tamaño real

Ejemplos:
- banner carretera: `300 cm × 100 cm`
- flyer: `A5`, `A4`, etc.

### Paso 3 — Resolver imagen base

- usar foto real en alta resolución
- evitar ampliaciones destructivas
- evitar screenshots de piezas digitales para imprenta

### Paso 4 — Exportar versión final

Preferencia:
- PDF para imprenta
- o PNG/JPG grande si la imprenta lo pide explícitamente

### Paso 5 — Checklist antes de enviar

- texto correcto
- teléfono correcto
- logo correcto
- contraste suficiente
- foto real
- nitidez verificada al 100%

---

## 6. Estructura de archivos sugerida

```txt
templates/
  social/
  print/

assets/exports/
  social/
  print/
```

Si todavía no existe esa separación, puede mantenerse una sola carpeta `assets/exports/` con naming claro.

---

## 7. Reglas de naming

Formato recomendado:

```txt
{servicio}-{tipo}-{tamano}-{version}.{ext}
```

Ejemplos:

```txt
alojamiento-post-1080x1080-v01.png
alojamiento-story-1080x1920-v01.png
alojamiento-banner-1920x1080-v03.png
eventos-banner-300x100cm-v01.pdf
```

---

## 8. Regla de oro

> Si la pieza va a redes, exportar por captura exacta del canvas.
> Si la pieza va a imprenta, diseñar y exportar una versión específica para print.

Nunca mezclar ambos flujos como si fueran lo mismo.
