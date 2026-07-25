# Comunicados Físicos — Sistema de Templates Impresos

Sistema reutilizable de avisos impresos para Hacienda Solano. Cubre comunicaciones
operacionales: horarios de atención, señalética, avisos de seguridad, instrucciones
al huésped y cualquier comunicación física que requiera presencia de marca sin
elementos fotográficos.

## Formatos

| Formato | Archivo | Dimensiones (px @150dpi) | Dimensiones reales |
|---------|---------|--------------------------|---------------------|
| A4 horizontal | `comunicado-a4.html` | 1754 × 1240 | 297 × 210 mm |
| A3 horizontal | `comunicado-a3.html` | 2480 × 1754 | 420 × 297 mm |

El A3 es una escala directa del A4: comparten el mismo CSS base (`comunicado-base.css`).
Solo cambian las dimensiones del canvas; la tipografía, espaciado, márgenes y composición
escalan proporcionalmente.

## Reglas de diseño

- **Solo identidad de marca.** No fotos, no íconos decorativos, no ornamentos.
  Identidad exclusivamente a través de logo + tipografía + color de paleta oficial.
- **Flujo de lectura izquierda.** Título, texto secundario y detalles alineados
  a un eje izquierdo común.
- **Logo en esquina superior derecha** como firma refinada de marca (no en
  top-left — este template es excepción deliberada para el rol de firma).
- **Mensaje principal dominante.** El título es el punto focal único de la pieza,
  compuesto en Fraunces Bold a escala generosa (~85pt en A4, ~120pt en A3).
- **Legibilidad impresa prioritaria.** Estos templates están calibrados para
  **distancia media** (pared, pasillo, acceso): título ≥60pt, texto secundario
  ≥24pt, detalle ≥18pt. La legibilidad manda sobre el refinamiento decorativo.
- **Uso eficiente del espacio.** El bloque de contenido ocupa hasta el 88% del
  ancho del canvas. Si el mensaje es corto, la tipografía escala para ocupar
  el espacio disponible — no se conserva aire "premium" a costa de impacto.
- **Densidad visual baja/media.** Respiración amplia pero al servicio del mensaje.
- **Tono cálido premium.** Fondo Warm Cream, texto Deep Green, acentos puntuales
  en Sun Accent. Sin lenguaje de venta ni CTA agresivos.
- **Sin ruido decorativo.** Sin marcos, bandas, patrones, ni elementos que no
  cumplan una función compositiva clara.

## Cómo usar

1. **Duplicar** el HTML del formato deseado (A4 o A3).
2. **Editar solo las secciones marcadas** con `EDITABLE` dentro del HTML:
   - Título principal (máximo 2 líneas en Fraunces)
   - Texto secundario (horarios, instrucciones, avisos)
   - Texto de detalle opcional (condiciones, notas al pie)
3. **No modificar** el CSS base ni los tokens de marca salvo que sea una
   decisión de diseño deliberada.
4. **Validar** con `../../tools/validate-design.ps1`:
   ```
   pwsh ../../tools/validate-design.ps1 -InputHtml comunicado-a4.html
   ```
5. **Exportar PDF** con `../../tools/export-pdf.ps1`:
   ```
   pwsh ../../tools/export-pdf.ps1 -InputHtml comunicado-a4.html -OutputPdf mi-aviso.pdf
   ```

## Datos de negocio

Los datos reales (horarios, teléfonos, precios, políticas) deben tomarse
exclusivamente de `conocimiento/conocimiento-del-negocio.md`. Nunca inventar
datos de contacto, precios ni claims.

Si un dato de negocio es necesario y no existe en la base de conocimiento,
usar placeholders explícitos entre corchetes: `[COMPLETAR]`.

## Ejemplos de uso

- Horario de atención
- "DNI al ingresar" / señalética de seguridad
- Normas de piscina
- Indicaciones de check-in / check-out
- Aviso de mantenimiento
- Cualquier comunicación impresa operacional

## Dependencias de assets

- Logo: `../../assets/logo/primary/Logotipo.svg`
- Tokens: `../../brand/brand-tokens.css`
- Export: `../../assets/export.css` + `../../assets/export.js`
- Fuentes: Google Fonts (Fraunces, Manrope)
