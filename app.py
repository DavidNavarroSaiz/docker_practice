from flask import Flask, request

app = Flask(__name__)


@app.route('/add', methods=['POST'])
def add():
    numbers = request.get_json()
    number1 = numbers['number1']
    number2 = numbers['number2']
    result = number1 + number2
    return {'result': result}



if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)