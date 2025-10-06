from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    return jsonify({"message": "Hello from Flask in .venv (Python 3.13)!"})

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=5000, debug=True)
