from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return """
    <html>
        <head>
            <style>
                body {
                    margin: 0;
                    height: 100vh;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    background: linear-gradient(to right, #1e3c72, #2a5298);
                    font-family: Arial, sans-serif;
                }
                h1 {
                    color: white;
                    font-size: 3rem;
                    text-align: center;
                    background: rgba(0,0,0,0.3);
                    padding: 20px 40px;
                    border-radius: 10px;
                }
            </style>
        </head>
        <body>
            <h1>Hello from ECS 🚀</h1>
        </body>
    </html>
    """

@app.route("/health")
def health():
    return "OK"

@app.route("/version")
def version():
    return "v1.0"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)