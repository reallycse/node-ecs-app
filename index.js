// Load the HTTP module
const http = require('http');

// Create a server
const server = http.createServer((req, res) => {
  // Set the response HTTP header with status and content type
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello World\n');
});

// Listen on port 3000
server.listen(3000, () => {
  console.log('🚀 Server running at http://localhost:3000/');
});

