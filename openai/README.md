# Пакет для каталога плагинов ChatGPT (формат Agent Plugins)

Собирается командой `tools/build-openai-zip.sh` в `dist/lichidare-md-openai-<версия>.zip`. Сервер тот же:
`https://mcp.lichidare.md/mcp` (Streamable HTTP, без входа). Claude-версия плагина (`.claude-plugin/`, `.mcp.json`)
этим пакетом не меняется: навыки `skills/` и логотип `logo.png` берутся из неё при сборке.

- `plugin.json`: манифест, витрина (`extensions.com.openai.interface`), 5 положительных и 3 отрицательных теста на
  RO и RU (`extensions.com.openai.review.test_cases`), переводы ro-RO и ru-RU.
- `mcp.json`: один удалённый сервер.
- Подтверждение домена: `https://mcp.lichidare.md/.well-known/openai-apps-challenge` отдаёт токен из переменной
  Vercel `OPENAI_APPS_CHALLENGE` проекта lichidare-mcp (пока `PENDING`, адрес отвечает 404).
- Для ревью ещё нужна ссылка на видео (`review.demo_recording_url`): добавляется после записи.

Требования: https://developers.openai.com/plugins/deploy/submission , https://developers.openai.com/plugins/build/plugins
