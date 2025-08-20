# 6. ФИНАЛЬНАЯ СТРУКТУРА ЗАПУСКА
echo "🏗️ Production setup:"
echo ""
echo "📊 СЕРВЕРЫ:"
echo "  - Frontend Web: PORT=8090 (dashkapolish.swapoil.de)"
echo "  - Production AI: PORT=8094 (api.dashkapolish.swapoil.de)"
echo ""
echo "🌐 ДОМЕНЫ:"
echo "  - https://dashkapolish.swapoil.de → localhost:8090"
echo "  - https://api.dashkapolish.swapoil.de → localhost:8094"
echo ""
echo "🔧 КОМАНДЫ ЗАПУСКА:"
echo "  PORT=8090 node simple_web_server.js &"
echo "  PORT=8094 node ai_server_node.js &"

# 7. КОММИТИМ PRODUCTION НАСТРОЙКИ
git add .
git commit -m "🇵🇱 DashkaPolish Production Configuration

✅ PRODUCTION SETUP:
- Frontend: https://dashkapolish.swapoil.de
- Backend API: https://api.dashkapolish.swapoil.de  
- WebSocket: wss://api.dashkapolish.swapoil.de/ws

🔧 CONFIGURATION:
- Updated API URLs to production domains
- Fixed headers: Russian ↔ Polish Voice Translator  
- CORS configured for dashkapolish.swapoil.de
- Nginx config ready for deployment

🚀 READY FOR PRODUCTION DEPLOYMENT"