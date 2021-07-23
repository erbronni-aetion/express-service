'use strict';

const express = require('express');

const port = 3000;
const app = express();

// add code...

app.listen(port, () => {
    console.log(`Service listening at http://localhost:${port}`)
})