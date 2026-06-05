#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"

if ! railway whoami &>/dev/null; then
  echo "Bitte zuerst einloggen: railway login"
  railway login
fi

PROJECT_ID="20265fa0-446a-453a-9c9b-d3e423375c5b"

echo "Projekt verknüpfen: $PROJECT_ID"
railway link --project "$PROJECT_ID" --environment production

echo "Deploy starten..."
railway up --detach

echo "Domain erzeugen (falls noch keine):"
railway domain 2>/dev/null || echo "→ railway domain  im Dashboard oder per CLI ausführen"

echo "Fertig. Status:"
railway status
