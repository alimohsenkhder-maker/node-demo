// Importing required modules
const express = require('express');

// Creating an Express application
const app = express();

// Setting a port number
const PORT = process.env.PORT || 3000;

// Basic route
app.get('/', (req, res) => {
    res.send('Hello, World!');
});

app.get('/about', (req, res) => {
    res.send('this is the about page!');
});

// Start first the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});

