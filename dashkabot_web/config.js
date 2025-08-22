window.DashkaBotConfig = {
    apiBase: 'http://localhost:8080',  
    endpoints: {
        translate: '/translate',
        health: '/health',
        languages: '/languages'
    },
    websocket: {
        url: 'ws://localhost:8765',
        enabled: true
    }
};