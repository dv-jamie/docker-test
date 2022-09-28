const express = require('express')

const app = express()

app.get('/', (req, res) => {
    res.send('Hi, Docker!')
})

app.listen(8080, () => {
    console.log('Server is running in 8080')
})