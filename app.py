from flask import abort, Flask, escape, jsonify, request

app = Flask(__name__)


@app.route("/")
def hello():
    name = request.args.get("name", "World")
    return f"Hello, {escape(name)}!"


@app.route("/echo-json", methods=["POST"])
def echo_json():
    if not request.json:
        abort(400)
    else:
        print(request.json)
        return jsonify(request.json)
