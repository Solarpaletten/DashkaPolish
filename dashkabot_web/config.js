window.DashkaBotConfig = {
    apiBase: 'https://api.dashkapolish.swapoil.de',
    endpoints: {
        translate: '/translate',
        health: '/health', 
        languages: '/languages'
    },
    websocket: {
        url: 'wss://api.dashkapolish.swapoil.de/ws',
        enabled: true
    }
};
