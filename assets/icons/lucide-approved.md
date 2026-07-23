# Lucide Approved Icons — Hacienda Solano

Selección de íconos Lucide para piezas gráficas, templates y UI de Hacienda Solano. Cada entrada tiene su archivo SVG independiente en este mismo directorio, obtenido directamente del [repo oficial de Lucide](https://github.com/lucide-icons/lucide).

## Reglas de uso

- Usar siempre versión **outline**.
- Mantener un trazo visual limpio, sin mezclar sets.
- Preferir color `Deep Green #1A331C` sobre fondos claros.
- Usar `Warm Cream #F5F1E6` o `White #FFFFFF` sobre fondos oscuros.
- No rellenar los íconos ni aplicar sombras pesadas.
- Los SVG usan `stroke="currentColor"` — heredan el color del contexto.

## Inventario de archivos

### Amenidades (Lucide)

| Archivo | Concepto | Lucide Icon |
|---|---|---|
| `bed.svg` | Cama matrimonial, descanso, estadía | `bed-single` |
| `tent.svg` | Glamping, experiencia exterior | `tent` |
| `pool.svg` | Piscina, natación | `waves-ladder` |
| `wifi.svg` | WiFi gratuito, conectividad | `wifi` |
| `hot-water.svg` | Agua caliente 24h | `thermometer-sun` |
| `bathroom.svg` | Baño privado exclusivo | `bath` |
| `parking.svg` | Cochera privada, estacionamiento | `car-front` |
| `security.svg` | Seguridad 24h, vigilancia | `shield-check` |
| `smart-tv.svg` | Smart TV, televisión | `tv` |
| `breakfast.svg` | Desayuno incluido, alimentos | `utensils-crossed` |
| `confort.svg` | Comodidad, relax, descanso | `armchair` |
| `nature.svg` | Entorno natural, aire libre | `trees` |
| `clock.svg` | Horario de atención | `clock-3` |
| `calendar.svg` | Reserva, disponibilidad | `calendar-check-2` |
| `check-in.svg` | Check-in, registro, recepción | `door-open` |
| `map-pin.svg` | Ubicación, dirección, cómo llegar | `map-pin` |
| `event.svg` | Eventos, celebraciones | `party-popper` |
| `sunbed.svg` | Relax, sol, día de piscina | `sun` |
| `night.svg` | Noche, descanso, pernocte | `moon` |
| `message.svg` | Contacto, consultas, chat | `message-circle-more` |

### Social Media (Simple Icons)

| Archivo | Concepto | Simple Icon |
|---|---|---|
| `facebook.svg` | Facebook / Meta | `facebook` |
| `whatsapp.svg` | WhatsApp, contacto directo | `whatsapp` |
| `instagram.svg` | Instagram, galería social | `instagram` |
| `netflix.svg` | Netflix, streaming | `netflix` |
| `youtube.svg` | YouTube Premium, videos | `youtube` |

> Los íconos de redes sociales usan **Simple Icons** (fill-based, no stroke). Son SVG oficiales de cada marca. A diferencia de Lucide, usan `fill="currentColor"` en lugar de `stroke`. Conviven sin problema en el mismo sistema.

### Medios de Pago

| Archivo | Concepto | Fuente | Tipo |
|---|---|---|---|
| `credit-card.svg` | Tarjeta de crédito/débito | Lucide `credit-card` | stroke |
| `cash.svg` | Efectivo, billetes | Lucide `banknote` | stroke |

## Escala recomendada

- Piezas gráficas grandes: `32px` a `56px`
- UI / tarjetas: `18px` a `24px`
- Badges o chips: `16px` a `20px`

## Estilo recomendado

- `stroke-width`: `2`
- Esquinas suaves (`stroke-linecap="round" stroke-linejoin="round"`)
- Aire suficiente alrededor del ícono
- Nunca usar más de 3 íconos protagonistas en una misma pieza

## Cómo usar en HTML

```html
<img src="assets/icons/pool.svg" class="icon" alt="Piscina" />
```

Los SVG están diseñados para heredar `color` via `currentColor`, así que podés colorearlos con CSS:

```css
.icon { width: 24px; height: 24px; color: #1A331C; }
```

## Cómo agregar nuevos íconos

### Lucide (amenidades, UI)

Bajar el SVG crudo del repo oficial:

```
https://raw.githubusercontent.com/lucide-icons/lucide/main/icons/<nombre>.svg
```

Renombrar al nombre semántico en español (ej: `shield-check.svg` → `security.svg`) y agregar al inventario.

### Simple Icons (redes sociales, marcas)

Bajar el SVG crudo del repo oficial:

```
https://raw.githubusercontent.com/simple-icons/simple-icons/develop/icons/<nombre>.svg
```

Limpiar el SVG: quitar `<title>`, `role="img"`, y reemplazar `fill="#..."` por `fill="currentColor"`.
