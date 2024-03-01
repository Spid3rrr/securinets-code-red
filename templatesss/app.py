from flask import Flask
from flask import request
from flask import render_template_string
from flask import render_template, redirect
import os

app = Flask(__name__, static_folder='static', static_url_path='')

@app.route('/')
def index():
    return render_template("index.html")

@app.route('/welcome')
def welcome():
    name = request.args.get('name')
    if(name == None):
        return redirect('/welcome?name=Kenobi')
    template = f"<div><h1>Hello There!<br>Welcome General {name}!</h1></div>"
    return render_template_string(template)

if __name__ =='__main__':
    app.run()