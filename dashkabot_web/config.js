window.DashkaBotConfig = {
    apiBase: 'http://dashkapolish.swapoil.de/api',
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
