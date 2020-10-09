// Einfache node.js Web-Applikation in einem Docker-Image - (M. Calisto)
// Nur zu Demo-zwecken
'use strict';

var express = require('express'),
    app = express();

app.set('views', 'views');
app.set('view engine', 'pug');

app.get('/', function(req, res) {
    res.render('home', {
  });
});

app.listen(8080);
module.exports.getApp = app;
