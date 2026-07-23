# Assets — Hacienda Solano

Todo el material visual del proyecto está organizado en **dos capas** con responsabilidades distintas:

| Capa | Carpeta | Propósito |
|------|---------|-----------|
| **Raw resources** | `photos/` `logo/` `fonts/` `textures/` | Material fuente, no diseñado. Llega como insumo y se consume tal cual. |
| **Reusable system** | `components/` `decorative/` `icons/` | Material diseñado, versionado y reutilizable. Son piezas visuales con contrato de uso. |

---

## Capa 1 — Raw resources

Material que entra al repo sin procesar o con procesamiento mínimo. Sirve como insumo para toda pieza gráfica.

```txt
assets/
  photos/           → alojamiento/, eventos/, piscina/, marca/
  logo/             → primary/, variants/, social/
  fonts/            → archivos .woff2 (Fraunces, Manrope)
  textures/         → fibras, papeles, sombras suaves, materiales orgánicos
```

**Reglas:**
- Archivos con nombre descriptivo: `{servicio}-{tipo}-{indice}.jpg`
- Cada servicio debe tener al menos: 1 hero horizontal, 1 hero vertical, 1 detalle, 1 toma amplia, 1 con presencia humana si aplica.
- Priorizar pocas fotos excelentes sobre muchas mediocres.

### Naming

```txt
alojamiento-bungalow-01.jpg
alojamiento-glamping-hero-01.jpg
eventos-montaje-nocturno-01.jpg
piscina-vista-general-01.jpg
marca-atardecer-ingreso-01.jpg
```

---

## Capa 2 — Reusable system

Componentes visuales y recursos decorativos diseñados con los tokens de marca de `brand/structural-tokens.md`. Cada carpeta tiene su propio `README.md` con contrato de uso, variantes y snippets HTML/CSS.

### Estructura

```txt
assets/
  components/           → Componentes reutilizables con contrato
    button/             → README.md + variantes HTML/CSS
    pill/               → README.md + variantes HTML/CSS
    card/               → README.md + variantes HTML/CSS
  decorative/           → Recursos visuales no semánticos
    shapes/             → Formas geométricas (círculos, blobs)
    dividers/           → Separadores de sección
    ornaments/          → Acentos decorativos
  icons/                → Íconos aprobados (ver lucide-approved.md)
```

**Reglas generales:**
- Todo componente sigue los tokens de `brand/structural-tokens.md`. Nada inventado.
- Cada componente expone variantes documentadas; no se improvisan colores ni medidas.
- Los recursos decorativos son atemporales: sin modas, sin estilos que envejezcan en 6 meses.
- Lo que está en `components/` es para **reutilizar**. Lo que está en `decorative/` es para **componer**.

### Cuándo usar cada capa

| Si necesitás... | Usá... |
|-----------------|--------|
| Un botón con CTA | `components/button/` — primary o secondary según jerarquía |
| Una etiqueta de categoría | `components/pill/` — outline con borde suave |
| Un contenedor de contenido | `components/card/` — photo card, glass card o text card |
| Un separador entre secciones | `decorative/dividers/` |
| Un acento decorativo sutil | `decorative/ornaments/` |
| Una forma de fondo abstracta | `decorative/shapes/` |

---

## Otras carpetas

| Carpeta | Propósito |
|---------|-----------|
| `exports/` | Entregables finales PNG/JPG/PDF listos para publicar. |
| `previews/` | Capturas de trabajo y pruebas rápidas. No publicar. |
| `icons/` | Íconos aprobados — ver `icons/lucide-approved.md`. |

---

## Contratos de exportación

- `export.css` y `export.js` definen el contrato de exportación común.
- Toda pieza HTML diseñada en este repo debe incluir `../assets/export.css` y `../assets/export.js`.
- El canvas raíz debe declarar `data-export-canvas`, `data-export-width`, `data-export-height`.
