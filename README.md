# Puch Maxi S – Anleitung für junge Besitzer

Kindgerechtes HTML-Lernheft zur Puch Maxi S mit echten Fotos aus den Original-Handbüchern.

## Lokal öffnen

`index.html` im Browser öffnen – funktioniert auch ohne Server.

## Lokal mit Server

```bash
npm install
npm start
```

Dann: http://localhost:3000

## Deployment

**GitHub:** https://github.com/Jacky222334/puch-maxi-s-anleitung

**Railway (einmalig verbinden):**

1. https://railway.com/new/github öffnen
2. Repository `puch-maxi-s-anleitung` auswählen
3. Nach dem Deploy: Service → **Settings** → **Networking** → **Generate Domain**

Railway erkennt Node.js automatisch und startet `npm start` (statischer Server mit `serve`).

Die PDF-Handbücher liegen nur lokal im Projektordner und sind nicht im Repo (zu groß). Im Repo sind `index.html` und die gerenderten Bilder unter `bilder/`.
