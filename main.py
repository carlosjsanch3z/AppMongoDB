from bottle import route, run, template, request, get, post, static_file, TEMPLATE_PATH, error, redirect
from pymongo import MongoClient
from pymongo.errors import OperationFailure



@route('/')
def redirect_to_login():
	redirect('/login')

@route('/login')
def login():
    var = 0
    return template("views/index.tpl",var=var)

@route('/login',method='POST')
def do_login():
    username = request.forms.get('name')
    password = request.forms.get('password')
    borough = request.forms.get('borough')
    cuisine = request.forms.get('cuisine')

    client = MongoClient("mongodb://"+str(username)+":"+str(password)+"@172.22.200.44:27017/test")
    db = client.test

    try:
        if db.authenticate(username,password):
	   collection = db.restaurants
	   restaurants = collection.find()
        return template("views/select.tpl",u=username,p=password,b=borough,c=cuisine)
    except OperationFailure:
        var = 1
        return template("views/index.tpl",var=var)

@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')


run(host='localhost', port=8081, debug=True)
