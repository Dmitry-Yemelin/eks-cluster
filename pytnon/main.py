import os.path
from http.server import BaseHTTPRequestHandler, HTTPServer
from time import sleep


class SimpleServer(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-Type', 'text/plain')
        self.end_headers()
        if os.path.isfile(PATH):
            f = open(PATH, "r")
            message = f.read()

        self.wfile.write(bytes('Kubernetes Interview Challange', 'utf-8'))

hostname = "0.0.0.0"
port = 8080
PATH = '/etc/message.txt'

if __name__ == "__main__":
    sleep(30)
    server = HTTPServer((hostname, port), SimpleServer)
    print("HTTP server started at: http://%s:%s" % (hostname, port))

    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass

    server.server_close()
    print("HTTP server stopped")