const express = require('express')
const app = express()
const port = 3009

app.get('/', (req, res) => {
  res.json({message:'Hello World!'})
})

app.listen(port, () => {
  console.log(`Hello app listening on port ${port}`)
})