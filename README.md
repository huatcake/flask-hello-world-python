# Flask Python Hello World

## tdlr quickstart
```
flask --app hello run --port=5001

```


## Initial Setup based on:
https://flask.palletsprojects.com/en/stable/installation/

### Create a project folder and a `.venv` folder within:
```
mkdir myproject
cd myproject
python3 -m venv .venv

```
### Activate the environment
Before you work on your project, activate the corresponding environment:

```
. .venv/bin/activate


deactivate
```

### Install Flask[](https://flask.palletsprojects.com/en/stable/installation/#install-flask "Link to this heading")

Within the activated environment, use the following command to install Flask:
```
pip install Flask
```

    $ 

## Externally Visible Server
If you run the server you will notice that the server is only accessible from your own computer, not from any other in the network. This is the default because in debugging mode a user of the application can execute arbitrary Python code on your computer.

If you have the debugger disabled or trust the users on your network, you can make the server publicly available simply by adding --host=0.0.0.0 to the command line:
```
flask run --host=0.0.0.0
```
This tells your operating system to listen on all public IPs.


To run the application, use the flask command or python -m flask. You need to tell the Flask where your application is with the --app option.
```
flask --app hello run
```

## Change Port Number
Error: Could not locate a Flask application. Use the 'flask --app' option, 'FLASK_APP' environment variable, or a 'wsgi.py' or 'app.py' file in the current directory.
### Option 1: From the Command Line
```
flask run --port=5001

flask run --host=0.0.0.0 --port=5001
```

### Option 2: In the Python Code
```
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, Flask on a custom port!"

if __name__ == "__main__":
    app.run(port=5001)  # You can change this to any available port
```

```
app.run(host="0.0.0.0", port=5001)

```
