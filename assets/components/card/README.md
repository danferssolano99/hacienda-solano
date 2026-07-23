# Card — Componente

Contenedor de contenido con identidad de marca. La card organiza información sin competir con la imagen ni el mensaje.

**Tokens base:** `brand/structural-tokens.md` — radius (sección 1), shadows (sección 2), borders (sección 4), spacing (sección 5), blur (sección 6), container logic (sección 10).

---

## Variantes

| Variante | Estructura | Cuándo usarlo |
|----------|------------|---------------|
| **Photo card** | Imagen → overlay direccional → título + body + CTA | Mostrar servicios, alojamiento, experiencias. La foto es protagonista. |
| **Glass card** | Fondo translúcido + blur sobre imagen de fondo | Información flotante sobre foto hero. Solo digital. |
| **Text card** | Sin imagen. Título + body + CTA sobre fondo Warm Cream o Deep Green. | Testimonios, features, información secundaria sin foto. |
| **Organic card** | Geometría asimétrica + ornamento palma + blob backdrop | Contenido editorial con carácter boho chic. Piezas donde la marca respira. |

### Subfamilia orgánica boho chic

`hs-card--organic` extiende la card base con un lenguaje visual más cálido y expresivo:

- **Geometría asimétrica:** cuatro radios de borde distintos que rompen la simetría sin perder legibilidad.
- **Geometría cálida:** la silueta rompe la simetría con radios desiguales, sin perder legibilidad.
- **Presencia contenida:** la variante se diferencia por forma y aire, no por acumular ornamentos.

**Cuándo elegir organic sobre photo/text:** cuando la pieza necesita respirar identidad de marca por encima de la función pura. La organic card no reemplaza a las variantes estructurales; convive con ellas.

---

## Tokens fijos

```css
--card-radius: 24px;
--card-padding: 24px;
--card-max-width: 400px;
--card-shadow: 0 4px 16px rgba(26, 51, 28, 0.06);
--card-border: 1px solid rgba(26, 51, 28, 0.08);
--card-title-gap: 10px;
--card-body-gap: 16px;
--card-cta-margin: 16px;
```

---

## Snippet HTML — Photo Card

```html
<article class="hs-card hs-card--photo">
  <div class="hs-card__image">
    <img src="alojamiento-bungalow-01.jpg" alt="Bungalow" />
    <div class="hs-card__overlay"></div>
  </div>
  <div class="hs-card__body">
    <h3 class="hs-card__title">Bungalow Familiar</h3>
    <p class="hs-card__text">Espacio para 4 personas con vista al jardín.</p>
    <button class="hs-btn hs-btn--primary">Reservar</button>
  </div>
</article>
```

```css
.hs-card--photo {
  border-radius: var(--card-radius);
  border: var(--card-border);
  box-shadow: var(--card-shadow);
  max-width: var(--card-max-width);
  overflow: hidden;
  background: var(--warm-cream);
}

.hs-card__image {
  position: relative;
  overflow: hidden;
}

.hs-card__image img {
  width: 100%;
  height: 240px;
  object-fit: cover;
  display: block;
}

.hs-card__overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  height: 60%;
  background: linear-gradient(
    0deg,
    rgba(26, 51, 28, 0.25) 0%,
    transparent 100%
  );
}

.hs-card__body {
  padding: var(--card-padding);
}

.hs-card__title {
  font-family: var(--fraunces);
  font-size: 20px;
  font-weight: 400;
  color: var(--deep-green);
  margin: 0 0 var(--card-title-gap) 0;
}

.hs-card__text {
  font-family: 'Manrope', sans-serif;
  font-size: 15px;
  color: rgba(26, 51, 28, 0.7);
  margin: 0 0 var(--card-cta-margin) 0;
  max-width: 640px;
}
```

## Snippet HTML — Glass Card (solo digital)

```html
<article class="hs-card hs-card--glass">
  <div class="hs-card__body">
    <h3 class="hs-card__title">Viví la experiencia</h3>
    <p class="hs-card__text">Alojamiento boutique en el corazón de Solano.</p>
    <span class="hs-pill hs-pill--outline">Alojamiento</span>
  </div>
</article>
```

```css
.hs-card--glass {
  border-radius: var(--card-radius);
  background: rgba(26, 51, 28, 0.12);
  backdrop-filter: blur(12px);
  -webkit-backdrop-filter: blur(12px);
  max-width: var(--card-max-width);
}

.hs-card--glass .hs-card__body {
  padding: var(--card-padding);
}
```

**⚠️ Glass card solo se usa en digital.** En print o piezas de larga distancia, usar text card común. Ver sección 6 de structural tokens.

## Snippet HTML — Text Card

```html
<article class="hs-card hs-card--text">
  <div class="hs-card__body">
    <h3 class="hs-card__title">Lo que dicen nuestros huéspedes</h3>
    <p class="hs-card__text">"Un lugar mágico. Volvimos renovados."</p>
    <p class="hs-card__author">— Familia González</p>
  </div>
</article>
```

```css
.hs-card--text {
  border-radius: var(--card-radius);
  border: var(--card-border);
  box-shadow: var(--card-shadow);
  max-width: var(--card-max-width);
  background: var(--warm-cream);
}

.hs-card--text .hs-card__author {
  font-family: 'Manrope', sans-serif;
  font-size: 13px;
  color: rgba(26, 51, 28, 0.5);
  margin-top: 12px;
}
```

---

## Reglas de composición

- Una card no debe superar `400px` de ancho sin contenido suficiente que lo justifique.
- El overlay de la photo card nunca debe cubrir más del 50% de la imagen.
- Glass card solo en composiciones digitales con foto de fondo y texto breve.
- No apilar más de 3 cards en una misma vista sin grid.
- La CTA dentro de la card hereda las reglas del componente button: máximo un primary por card.

## Snippet HTML — Organic Card (subfamilia boho chic)

```html
<article class="hs-card hs-card--organic">
  <div class="hs-card__body">
    <h3 class="hs-card__title">Experiencia Palm</h3>
    <p class="hs-card__text">
      Despertar entre palmeras, con el sonido de la naturaleza.
    </p>
    <button class="hs-btn hs-btn--primary">Descubrir</button>
  </div>
</article>
```

```css
.hs-card--organic {
  border-radius: 32px 22px 30px 20px;
  border: 1.5px solid rgba(26, 51, 28, 0.10);
  box-shadow: 0 8px 32px rgba(26, 51, 28, 0.07);
  background: var(--warm-cream);
  position: relative;
  overflow: hidden;
}

```

**Complemento opcional:** rodeá la card con una shape orgánica como fondo o acompañala con un divider suave en la composición general. No cargarla con blobs ni ornamentos internos.
