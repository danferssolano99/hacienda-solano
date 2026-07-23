# Organic Art Direction — Hacienda Solano

**Formalización de la subfamilia orgánica boho chic.**
Este documento fija la filosofía visual y las reglas operativas de la capa orgánica del sistema.
No es decoración. Es dirección de arte.

---

## Idea central

La identidad visual de Hacienda Solano se construye sobre una tensión deliberada:
una **estructura estable y predecible** (tipografía, grilla, tokens) que convive con
**superficies orgánicas que introducen la imperfección controlada de la naturaleza**.

Las formas orgánicas no existen para adornar. Existen para recordar que la hacienda
es un lugar vivo: las hojas no crecen en grilla, la luz no cae simétrica, las masas
vegetales no tienen bordes uniformes. El lenguaje visual debe registrar esa verdad
sin volverse caótico.

La subfamilia orgánica es el **contrapunto** del sistema. Donde la base estable
ordena, la capa orgánica respira. Donde la grilla alinea, la forma asimétrica
ancla. Donde el borde recto contiene, la mancha expande.

---

## Qué NO es

- **No es decoración genérica.** Las formas orgánicas no se aplican como clip art
  ni como relleno visual. Cada una responde a una decisión compositiva.
- **No es rusticidad.** La imperfección de la naturaleza no se traduce en texturas
  de madera, yute, ni estética campestre. El registro es boho chic: natural pero
  refinado.
- **No es exceso.** Si una pieza acumula blobs, ondas y palmeras, perdió el criterio.
  La regla de oro: un solo gesto orgánico fuerte por superficie visual.
- **No es universal.** La subfamilia orgánica cubre el ~10% de los casos. El 90%
  restante se resuelve con la base estable (photo, text, glass). Forzar organic
  donde no corresponde degrada el sistema.

---

## Qué SÍ es

- **Imperfección controlada.** Cada forma orgánica tiene una geometría intencional:
  asimetría medida, radios desiguales calculados, opacidades calibradas.
- **Presencia vegetal contenida.** El motivo palmera/hoja aparece como gesto,
  no como ilustración. Siempre integrado al componente, nunca flotando como sticker.
- **Contrapunto sistemático.** La capa orgánica tiene reglas, niveles y restricciones.
  No es un comodín para cuando una pieza "se siente vacía".
- **Lenguaje editorial.** La subfamilia orgánica pertenece al modo editorial
  (atmósfera, marca, memoria). En modo comercial se usa solo por excepción justificada.

---

## Niveles del sistema orgánico

La capa orgánica se organiza en cuatro niveles de intensidad. Cada nivel tiene
una responsabilidad clara y activos asignados.

### Nivel 1 — Estructura estable (siempre presente)

La base geométrica del sistema. No es orgánica, pero es el suelo donde la capa
orgánica se apoya.

| Elemento | Rol |
|----------|-----|
| Grilla de composición | Ordena el contenido. No se rompe, se habita. |
| Tokens estructurales | Radius, sombras, bordes predecibles. |
| Componentes base | Photo card, text card, glass card, buttons, pills. |

**Regla:** este nivel nunca se desactiva. La capa orgánica se superpone, no reemplaza.

### Nivel 2 — Superficies orgánicas

Formas abstractas de baja opacidad que introducen irregularidad en el fondo.

| Activo | Comportamiento |
|--------|---------------|
| `organic-blob-01.svg` | Retirado del sistema activo. |
| `organic-blob-02.svg` | Retirado del sistema activo. |

**Reglas:**
- Máximo 2 blobs visibles por pieza. Idealmente 1.
- Opacidad siempre ≤ 8% del color aplicado.
- Nunca entre el texto y el lector (z-index inferior al contenido).
- Se usan como anclaje visual de un bloque, no como wallpaper.

### Nivel 3 — Firma botánica

La palmera como marca gráfica integrada. No es un logo secundario: es un gesto
de identidad que emerge del borde o del fondo.

| Activo | Comportamiento |
|--------|---------------|
**Reglas:**
- Si aparece gesto botánico, debe sentirse integrado y subordinado al contenido.
- En una misma pieza, usar **uno solo** de los activos de firma botánica.
  No mezclar demasiados gestos botánicos en la misma superficie visual.

### Nivel 4 — Momentos editoriales

Composiciones donde la capa orgánica es protagonista. Reservado para piezas de
alto impacto atmosférico: portadas, invitaciones, catálogos impresos, landing
pages hero.

**Reglas:**
- Solo en modo editorial. Nunca en modo comercial puro.
- La foto sigue mandando (ver §1 de design-principles.md). Lo orgánico enmarca,
  no tapa.
- Si el resultado se siente "decorado", retroceder un nivel.
- Un solo momento editorial por pieza. Si hay dos, ninguno funciona.

---

## Reglas concretas de uso

### Elección de nivel

| Intención de la pieza | Nivel orgánico | Qué usar |
|------------------------|---------------|----------|
| Comercial puro (precio, CTA, conversión) | Ninguno | Base estable únicamente |
| Informativo con carácter (servicios, features) | Nivel 2 opcional | 1 blob detrás de un bloque si suma atmósfera |
| Editorial ligero (stories, posts de marca) | Nivel 2 o 3 | 1 blob + palm mark integrado en card |
| Editorial completo (portada, invitación, landing) | Nivel 4 | Blob + palm mark + palm divider/frame como sistema compuesto |
| Campaña hero (excepción) | Nivel 4 justificado | Composición editorial completa con dirección de arte explícita |

### Compatibilidad con modos de composición

| Modo | Subfamilia orgánica |
|------|-------------------|
| **Commercial** | ❌ No usar. La función manda sobre la atmósfera. |
| **Editorial** | ✅ Usar según tabla de niveles. |

### Límites duros

- **Nunca** en fichas de producto, tablas de precio, CTAs urgentes, o información
  donde la velocidad de lectura es prioridad.
- **Nunca** sobre foto real de la hacienda de forma que compita con la imagen.
- **Nunca** más de 3 activos orgánicos simultáneos en una misma pieza.
- **Nunca** organic shapes con colores fuera de paleta.
- **Nunca** el palm mark como único elemento visual de una pieza (no es un logo).

---

## Comportamiento del motivo hoja/palmera

El motivo botánico (palmera, fronda, hoja) es el ancla de identidad de la
subfamilia orgánica. Su uso está estrictamente regulado para evitar que se
degrade en decoración genérica.

### Reglas del motivo

1. **Siempre integrado.** La botánica aparece en frames o dividers, no flotando sola.
2. **Una sola aparición por superficie.** Elegir un punto de entrada y confiar.
3. **Escala contenida.** Nunca se usa para "llenar" espacio vacío.
4. **Opacidad baja.** Debe sentirse como un susurro visual, no como un grito.
5. **Sin variantes no aprobadas.** Cualquier nuevo motivo botánico debe pasar
   por el proceso de la librería decorativa (diseño → revisión → documentación
   en `assets/decorative/README.md`).

### Lo que el motivo NO es

- No es un pattern ni un tile de fondo.
- No es un bullet point decorativo.
- No es un favicon ni un ícono funcional.

---

## Proceso: cuándo y cómo activar la capa orgánica

```
¿La pieza es editorial?
  │
  ├── No → Base estable. No activar capa orgánica.
  │
  └── Sí → ¿La atmósfera de marca es el mensaje principal?
        │
        ├── No → Base estable + opcional 1 blob (Nivel 2).
        │
        └── Sí → ¿La pieza necesita presencia botánica?
              │
              ├── No → Base estable + blob (Nivel 2).
              │
              └── Sí → Elegir nivel 3 o 4 según tabla de intensidad.
                    Aplicar un solo gesto botánico. Revisar contraste y jerarquía.
```

---

## Verificación previa a entrega

Antes de aprobar una pieza que use la subfamilia orgánica, confirmar:

- [ ] La foto sigue siendo el elemento dominante (jerarquía respetada).
- [ ] Hay un solo gesto orgánico fuerte. Si hay dos, eliminar el más débil.
- [ ] Las opacidades están dentro de los rangos definidos por nivel.
- [ ] El motivo palmera está integrado (no flotando).
- [ ] La pieza funciona sin la capa orgánica. Si depende de ella para sostenerse,
      el problema es de composición, no de atmósfera.
- [ ] En miniatura (thumbnail / mobile), la forma orgánica no se convierte en ruido.
