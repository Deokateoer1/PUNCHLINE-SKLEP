const http = require('http');
const fs = require('fs');
const path = require('path');
const root = path.join(__dirname);

http.createServer((req, res) => {
  let url = req.url.split('?')[0];
  if (url === '/') url = '/index.html';
  const file = path.join(root, url);
  try {
    const data = fs.readFileSync(file);
    const ct = url.endsWith('.css') ? 'text/css' : url.endsWith('.js') ? 'text/javascript' : 'text/html';
    res.writeHead(200, { 'Content-Type': ct + ';charset=utf-8' });
    res.end(data);
  } catch (e) {
    res.writeHead(404);
    res.end('Not found: ' + url);
  }
}).listen(5500, () => console.log('Serving PUNCHLINE-SKLEP on http://localhost:5500'));
