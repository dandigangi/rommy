const express = require('express')
const rommy = express()

const APP_PORT = 3000

rommy.get('/', (req, res) => {
  res.send('hello world')
})

rommy.listen(APP_PORT || 3000, () => {
  console.log(`rommy started on port ${APP_PORT}`)
})
