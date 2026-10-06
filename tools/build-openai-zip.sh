#!/bin/bash
# build-openai-zip.sh (lichidare-md ADR-101.351, 06.10.2026) - пакет плагина для каталога ChatGPT (формат Agent Plugins).
# Источник: openai/plugin.json, openai/mcp.json; навыки skills/ и логотип logo.png берутся из Claude-версии без копий в
# репозитории (один источник, Claude-версия не меняется). Результат: dist/lichidare-md-openai-<версия>.zip.
# Совместим с /bin/bash 3.2. Без em dash.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VER=$(python3 -c "import json;print(json.load(open('$ROOT/openai/plugin.json'))['version'])")
STAGE="$(mktemp -d)/lichidare-md"
mkdir -p "$STAGE/assets" "$STAGE/skills" "$ROOT/dist"
cp "$ROOT/openai/plugin.json" "$ROOT/openai/mcp.json" "$STAGE/"
cp "$ROOT/logo.png" "$STAGE/assets/logo.png"
cp -R "$ROOT/skills/." "$STAGE/skills/"
cp "$ROOT/LICENSE" "$STAGE/"
python3 - "$STAGE" <<'PY'
import json,sys,os
s=sys.argv[1]; p=json.load(open(os.path.join(s,'plugin.json')))
i=p['extensions']['com.openai']['interface']; r=p['extensions']['com.openai']['review']['test_cases']
assert len(p['name'])<=64 and len(i['displayName'])<=30 and len(i['shortDescription'])<=30 and len(i['longDescription'])<=4000 and len(i['developerName'])<=80
assert len(i['defaultPrompt'])<=3 and all(len(x)<=128 for x in i['defaultPrompt'])
assert len(r['positive'])==5 and len(r['negative'])==3, 'нужно ровно 5 положительных и 3 отрицательных'
for c in r['positive']: assert c['description'] and c['prompt'] and c['tools_triggered'] and c['expected_behavior']
for c in r['negative']: assert c['description'] and c['prompt']
for k in ('logo','composerIcon'): assert os.path.isfile(os.path.join(s,i[k][2:])), k
for k in ('websiteURL','supportURL','privacyPolicyURL','termsOfServiceURL'): assert i[k].startswith('https://'), k
print('проверка полей: ok')
PY
OUT="$ROOT/dist/lichidare-md-openai-$VER.zip"
rm -f "$OUT"
( cd "$STAGE" && zip -qr "$OUT" . -x "*.DS_Store" )
echo "собран: $OUT ($(wc -c < "$OUT" | tr -d ' ') байт)"
unzip -l "$OUT" | tail -n +4 | sed '$d' | sed '$d' | awk '{print "  " $4}'
