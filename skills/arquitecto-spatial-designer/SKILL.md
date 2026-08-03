---
name: arquitecto-spatial-designer
description: "Trigger: Arquitecto, plano, layout, zona social, terraza, fogatera, parrillera, spatial design. Design Hacienda Solano spaces with program, composition, circulation, and asset rules."
license: Apache-2.0
metadata:
  author: "soyda"
  version: "1.0"
---

# Arquitecto Spatial Designer

## Activation Contract

Use when the user asks `Arquitecto` to create, redesign, furnish, distribute, or improve a spatial plan, asset set, or room/zone composition inside Hacienda Solano.

## Hard Rules

- Design for use first, then geometry. A valid plan that feels awkward is a failed result.
- Translate every request into `program`, `focal hierarchy`, `circulation`, and `edge conditions` before placing assets.
- Reuse global assets when they already satisfy at least 80% of the need; create new assets only for genuinely new typologies.
- Keep layouts intentionally composed: define one focal anchor, one support anchor, and one clear movement band.
- Respect real clearances and make them explicit in the plan reasoning. See `references/clearances.md`.
- For social zones, orient seating toward conversation first and screen/media second unless the user clearly prioritizes viewing.
- Never answer with a raw scatter of objects. Every object must justify placement by adjacency, distance, or framing.
- For every project, build exactly two plan readings: `General` and `Circulación`.
- `General` is the default composition view and must exclude path/flow noise unless a path is itself a primary design element.
- `Circulación` must explain movement clearly using routes, access logic, and context furniture; it is not a duplicate of `General`.

## Decision Gates

| Need | Action |
|---|---|
| User gives only objects | Infer a minimal spatial program before drawing |
| Space is under 25 m2 | Prefer compact composition and multi-use clearances |
| Fire, heat, or cooking appears | Separate heat sources, seating, and planting buffers |
| TV or focal media appears | Define primary viewing cone before seating placement |
| Planting is requested | Use it to frame edges and soften corners, not block circulation |
| Project is being saved | Confirm both `General` and `Circulación` readings are legible from the same model |

## Execution Steps

1. Read `appgestion/apps/arquitecto/src/domain/contracts.ts` and the current project/asset JSON files you will touch.
2. Convert the prompt into a brief with four lines: purpose, primary activity, secondary activity, atmosphere.
3. Build a spatial concept using exactly these decisions: main focal point, supporting focal point, seating logic, access path, service edge.
4. Choose a composition archetype from `references/composition-archetypes.md`.
5. Check required distances with `references/clearances.md` before placing or sizing anything.
6. Decide whether to reuse or create assets. If creating, keep them reusable and typological rather than one-off.
7. Place boundary/site first, then focal anchors, then seating, then service/support, then landscape softening.
8. Build the `General` reading: composition, focal hierarchy, seating, support pieces, and planting.
9. Build the `Circulación` reading from the same model: arrival path, internal movement, service approach, and pass-through zones.
10. Validate that `General` has one dominant focal reading, and `Circulación` explains how a person actually walks the space.
11. Save assets and project data using Arquitecto's normalized contract.

## Output Contract

Return:
- The design concept in 3 to 6 lines.
- Assets created or reused, with the reason.
- The layout logic for `General`: focal point, seating, service, planting.
- The movement logic for `Circulación`: arrival, primary route, secondary route, service route.
- The exact files changed.
- Any compromises caused by site size or object count.

## References

- `appgestion/apps/arquitecto/src/domain/contracts.ts` — storage model, spatial contract, editor constraints.
- `skills/arquitecto-spatial-designer/references/clearances.md` — minimum planning distances for social layouts.
- `skills/arquitecto-spatial-designer/references/composition-archetypes.md` — composition models for Arquitecto plans.
