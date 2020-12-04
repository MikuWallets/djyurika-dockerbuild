const http = require('http');
const { exec } = require('child_process')

http.createServer((request, response) => {
  if (request.method === 'GET' && request.url === '/djyurika/restart') {
    let body = '';
    let statusCode = 200;
    exec("service djyurika restart", (error, stdout, stderr) => {
      const date = new Date();
      if (error) {
          body = `error: ${error.message}`;
          console.log(date.toISOString() + " " + body);
          response.statusCode = 400;
          response.end(body);
          return;
      }
      if (stderr) {
          body = `stderr: ${stderr}`;
          console.log(date.toISOString() + " " + body);
          response.statusCode = 400;
          response.end(body);
          return;
      }
      body = `${stdout}`;
      console.log(date.toISOString() + " " + body);
      response.statusCode = 200;
      response.end(body);
    });
  } else {
    response.statusCode = 404;
    response.end();
  }
}).listen(8080);
