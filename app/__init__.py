import os, json
from flask import Flask




app = Flask(__name__)
app.secret_key = '1BVSSecretKeyUnHackable4Sure'

from app import routes
