const path = require('path')
const express = require('express')
const APP = express()
const APP_PORT = 3000

APP.get('/', function (req, res) {
  res.sendFile(path.join(__dirname, '/index.html'))
})

APP.listen(APP_PORT || 3000, () => {
  console.log(`rommy started on port ${APP_PORT}`)
})
