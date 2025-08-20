#!/bin/bash
echo "🇵🇱 DashkaPolish - Полный деплой с зависимостями"

# Останавливаем процессы
pkill -f "PORT=8093" 2>/dev/null || true
pkill -f "PORT=8094" 2>/dev/null || true

# Устанавливаем зависимости
echo "📦 Устанавливаем зависимости..."
npm install

# Адаптация кода
echo "🔧 Адаптируем под польский рынок..."
sed -i 's/🇬🇧 English Speaker/🇵🇱 Polish Speaker/g' dashkabot_web/index.html
sed -i 's/"EN"/"PL"/g' dashkabot_web/index.html
sed -i 's/en-US/pl-PL/g' dashkabot_web/index.html
sed -i 's/"default_target": "en"/"default_target": "pl"/g' config/dashkabot_config.json
sed -i 's/dashkaenglish/dashkapolish/g' dashkabot_web/index.html

# .ENV файл
cat > .env << 'ENVEOF'
NODE_ENV=production
PORT=8093
CORS_ORIGIN="https://dashkapolish.swapoil.de"
ENVEOF

# Запуск сервисов
echo "🚀 Запускаем сервисы..."
PORT=8093 node simple_web_server.js &
PORT=8094 node ai_server_node.js &

sleep 3

# Проверка
echo "📊 Проверяем статус:"
curl -I http://localhost:8093/ 2>/dev/null | head -1 || echo "❌ Frontend не отвечает"
curl -I http://localhost:8094/health 2>/dev/null | head -1 || echo "❌ API не отвечает"

echo "🇵🇱 DashkaPolish деплой завершен!"
echo "🌐 Frontend: http://localhost:8093"
echo "⚡ API: http://localhost:8094"
