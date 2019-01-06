const express = require('express');
const app = express();

app.get('/', (req, res) => {
    return res.status(200).json({
        msg: "Hello world. Dockerfile test"
    });
});

app.listen(8080, () => {
    console.log('I\'m running on port 8080');
})