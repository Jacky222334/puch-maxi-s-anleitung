#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"

if ! railway whoami &>/dev/null; then
  echo "Bitte zuerst einloggen: railway login"
  railway login
fi

if [ ! -f .railway/config.json ] || ! grep -q '"project"' .railway/config.json 2>/dev/null; then
  echo "Projekt verknüpfen..."
  railway init
fi

echo "Deploy starten..."
railway up --detach

echo "Domain erzeugen (falls noch keine):"
railway domain 2>/dev/null || echo "→ railway domain  im Dashboard oder per CLI ausführen"

echo "Fertig. Status:"
railway status
