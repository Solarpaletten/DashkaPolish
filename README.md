./launch_dashkabot_complete.sh  node simple_web_server.js

delete DashkaBotAndroid add neew DashkaBotAndroid_New make android studio

# 🚀 DashkaBot - Голосовой переводчик

**Нативная система синхронного перевода для переговоров с немецкими налоговыми консультантами**

## 📱 Компоненты

- **DashkaBotAndroid/** - Android приложение (APK)
- **dashkabot_web/** - Веб-версия  
- **ai_server.py** - AI сервер переводов
- **websocket_server.js** - Синхронизация устройств
- **config/** - Настройки системы

## 🚀 Быстрый старт

```bash
# Запуск серверов
python3 ai_server.py &
node websocket_server.js &

# Сборка Android APK
cd DashkaBotAndroid
gradle assembleRelease

🎯 Использование

Установите APK на Android устройства
Выберите роль: Пользователь 🇷🇺 или Steuerberater 🇩🇪
Говорите - получайте мгновенный перевод!

🛠️ Технологии

Android + WebView
Node.js + Python
WebSocket + AI
Голосовое распознавание + TTS


Развертывание за 30 секунд 🚀
