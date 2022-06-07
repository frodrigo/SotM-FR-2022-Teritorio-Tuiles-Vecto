---
title: Styles et tuiles vectorielles chez Teritorio
---

<img src="teritorio-logo.svg" width="20%"/>

&nbsp;

## Styles et tuiles
## vectorielles
## chez Teritorio

&nbsp;

SotM-FR Nantes 2022

Frédéric Rodrigo - CC-By-SA Teritorio 2022

<!-- www.teritorio.fr -->

---

## Tuiles et Styles Vectoriels ?

- Tuiles d'**Attributs** et de **Géométries** vectorielles, binaires
- Styles de **rendu** des tuiles **coté client**

Avantages
- **1 tuile** → **N styles**
- Fluidité, Rotation, Sélection, Filtre…
- Interaction avec les données

---

## Ontologies Tourisme et Ville

_Ontologies : ensemble des concepts_

_POI : `amenity`, `leasire`, `shop`, `craft`…_

Organisation des POI
- Niveaux : Super-classe, Classe, [Sous-classe]
- Attributs
  - Tags OSM
  - Label multilingue
  - Style : ⬤ ◯ •
  - Zoom min
  - Priorité d’affichage entre classes ("`z-index`")

----

| Super-classe, Classe, Sous-classe                     | Prio. | Zoom | Style | Tags OSM           |
|-------------------------------------------------------|-------|------|-------|--------------------|
| products                                              |       |      |       |                    |
| &nbsp;&nbsp;&nbsp;craft                               |       |      |       |                    |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;beekeeper         | 400   | 15   | ⬤     | craft=beekeeper    |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;basket&nbsp;maker | 500   | 17   | ⬤     | craft=basket_maker |


[teritorio-tourism.json](https://vecto.teritorio.xyz/data/teritorio-tourism-ontology-latest.json)

[teritorio-city.json](https://vecto.teritorio.xyz/data/teritorio-city-ontology-latest.json)

----

## 1 POI ontologie → 1 icone

- 350 icones
- +&nbsp;90 icones hors ontologies
- Licence : SIL Open Font License, Version 1.1.
- https://github.com/teritorio/font-teritorio

<iframe src="https://unpkg.com/@teritorio/font-teritorio@2.1.0/teritorio/teritorio.html" style="width: 100%; height: 400px"></iframe>

---

## Production de tuiles

- OpenMapTiles, couche de données :
  - Standards
  - POI : Ontologies
  - Extra : vélo

→ Tout dans un seul jeu de tuiles

Générateur de couches OMT depuis les ontologies
https://github.com/teritorio/openmaptiles-builder

---

## Styles Teritorio

- [OSM Bright](https://github.com/openmaptiles/osm-bright-gl-style)
    - [Teritorio Basic](https://github.com/teritorio/teritorio-basic-gl-style)
        - [Teritorio Tourism](https://github.com/teritorio/teritorio-tourism-gl-style) POI, grands icones
            - [Teritorio Tourism Basic](https://github.com/teritorio/teritorio-tourism-basic-gl-style) petits icones
        - [Teritorio City](https://github.com/teritorio/teritorio-city-gl-style) POI, grands icones
            - [Teritorio City Basic](https://github.com/teritorio/teritorio-tourism-basic-gl-style) petits icones
        - [Teritorio Bicycle](https://github.com/teritorio/teritorio-bicycle-gl-style) Équipements et réseaux
- [Satellite-Hybrid](https://github.com/teritorio/satellite-hybrid-gl-style)
- [OpenStreetMap Carto](https://github.com/teritorio/openstreetmap-carto-gl-style)

<br/>
<span style="font-size: 50%">
Icones et couleurs depuis les ontologies
<a href="https://github.com/teritorio/teritorio-gl-style-builder">https://github.com/teritorio/teritorio-gl-style-builder</a>
</span>

----

<h4 style="font-size:50%">Style Teritorio Tourisme</h4>
<iframe src="https://vecto.teritorio.xyz/styles/teritorio-tourism-latest/?vector#18.62/47.2176569/-1.542327" style="width: 100%; height:600px"></src>

---

## Diffusion - TileServer GL
### https://vecto.teritorio.xyz/

- Style Vectoriels
- Tuiles Vectorielles
  - OpenMapTiles + Couche Teritorio
  - Ombrage dynamique / relief 3D
  - Courbes de niveaux

----

<iframe src="https://vecto.teritorio.xyz/" style="width: 100%; height:650px"></iframe>

---

## Visualisation

🥇 MapLibre GL - 🥈 Mapbox GL - 🥉 OpenLayer

- Plugin MapLibre / Mapbox GL
  - styles Teritorio : manupilation des POI, grand, petit, par catégories
  - Langues

https://github.com/teritorio/teritorio-map
https://github.com/teritorio/openmaptiles-gl-language

----

<iframe src="https://teritorio.github.io/teritorio-map/demo-fr.html#16/43.439148/-1.588654" style="width: 100%; height:650px"></iframe>

----

## Visualisation

Vido : app carto tourisme et territoires

- Recherche
- Exploration
- Partage

----

### carte.seignanx.com

<iframe src="https://carte.seignanx.com/12100/18093#map=11.27/43.5573/-1.4703" style="width: 100%; height:650px"></iframe>

---

### Multiplexeur de Tuiles et Styles GL

- Tuiles
  - Remplacement / Ajout de couches de données
  - Remplacement thématique dans une couche : POI OSM par POI client

- Styles
  - Diff/Path : croiser les concepts entre les styles
    - Teritorio Vélo × Tourisme

https://github.com/teritorio/v-mux-gl

----

<img src="v-mux-gl-tiles.svg" style="width:80%"/>

----

<img src="v-mux-gl-style.svg"/>

---

## Plan Papier
### Depuis styles vectoriels

- Support dans QGIS
- Conversion en SVG
- Éditorialisation à la main
- Génération index des rues et POI

Note:
→ Continuité entre le web et le papier
→ Contribution et Qualité des données OSM
→ Réalisation ou Formation à la réalisation + Kit graphique

----

<img src="https://www.teritorio.fr/wp-content/uploads/2022/05/IMG_9465-2-scaled.jpg" style="max-height:750px"/>

---

## Liens

- https://www.teritorio.fr
- ✅ [openmaptiles-builder](https://github.com/teritorio/openmaptiles-builder)
- ✅ [Styles Teritorio](https://github.com/teritorio/teritorio-basic-gl-style), ✅ [teritorio-gl-style-builder](https://github.com/teritorio/teritorio-gl-style-builder)
- ✅ [Icones / Police Teritorio](https://github.com/teritorio/font-teritorio) ([NPM](https://www.npmjs.com/package/@teritorio))
- ✅ MapLibre GL : [openmaptiles-gl-language](https://github.com/teritorio/openmaptiles-gl-language), [teritorio-map](https://github.com/teritorio/teritorio-map)
- 🔸 Vido: re-dev / nouveaux sous-projets déjà libres
- ✅ [Multiplexeur de Tuiles et Styles GL](https://github.com/teritorio/v-mux-gl)
- 🔸 Plan papier - pas encore libre


---

Styles et tuiles vectorielles chez Teritorio

<span style="font-size:70%">
La présentation et tous les liens

https://frodrigo.github.io/SotM-FR-Teritorio-Tuiles-Vecto
</span>

<img src="qrcode.svg" height="480px"/>
