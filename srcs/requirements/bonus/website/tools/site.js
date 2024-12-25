const http = require('http')
const fs = require('fs')
const path = require('path')

const server = http.createServer((req, res) => {
  if (req.url === '/style.css') {
    // CSS 파일 요청 처리
    res.writeHead(200, { 'Content-Type': 'text/css' })
    fs.createReadStream('style.css').pipe(res)
  } else {
    // 기본적으로 index.html 반환
    res.writeHead(200, { 'Content-Type': 'text/html' })
    fs.createReadStream('index.html').pipe(res)
  }
})

server.listen(process.env.PORT || 7777)