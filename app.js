const express = require('express');
const exphbs = require('express-handlebars');
const path = require('path');

const app = express();
const PORT = 3000;

// Set up Handlebars without layouts
app.engine('hbs', exphbs.engine({
    extname: '.hbs',                                  // Use .hbs extension
    partialsDir: path.join(__dirname, 'templates/includes') // Partials (includes) directory
}));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'templates'));   // Set views directory

// Define a route without layout
app.get('/', (req, res) => {
    res.render('indexlisting', { title: 'Home Page', layout: false });  // Disable layout
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
