# Перейдем в папку DashkaPolish
cd /var/www/ai/DashkaPolish

# Проверим что файлы на месте
ls -la ai_server_node.js simple_websocket_server.js

# Загрузим .env переменные и запустим через PM2
export $(grep -v '^#' .env | xargs)

# Запустим AI сервер
pm2 start ai_server_node.js --name "dashka-polish-api"

# Запустим WebSocket сервер  
pm2 start simple_websocket_server.js --name "dashka-websocket"

# Проверим статус
pm2 list

# Сохраним конфигурацию
pm2 save