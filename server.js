const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
    res.send('<h1>🚀 Success! Your sample app is running inside Kubernetes.</h1>');
});

app.listen(PORT, () => {
    console.log(`Server is happily running on port ${PORT}`);
});

