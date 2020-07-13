from flask import Flask, render_template, request,session
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.orm.session import Session
import json
local_server = True

with open('config.json', 'r') as c:
    params = json.load(c)["params"]


app = Flask(__name__)
app.secret_key = 'the random string'

app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']


db = SQLAlchemy(app)


class Contacts (db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    phone_num = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)
    email = db.Column(db.String(20), nullable=False)


class Posts (db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), nullable=False)
    tagline = db.Column(db.String(80), nullable=False)
    slug = db.Column(db.String(21), nullable=False)
    content = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)



@app.route("/")
def home():
    posts = Posts.query.filter_by().all()[0:params['numberofposts']]
    return render_template("index.html", params=params, posts=posts)


@app.route("/about")
def about():
    return render_template("about.html", params=params)


@app.route("/contactus", methods=['GET', 'POST'])
def contactus():
    if(request.method == 'POST'):

        # Add entry to db
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('message')
        entry = Contacts(name=name, phone_num=phone, msg=message, email=email)
        db.session.add(entry)
        db.session.commit()

    return render_template("contact.html", params=params)


@app.route("/post/<string:post_slug>", methods=['GET'])
def post_route(post_slug):
    post = Posts.query.filter_by(slug=post_slug).first()
    return render_template("post.html", params=params, post=post)


@app.route("/login", methods=['GET', 'POST'])
def login():
    dashboardPosts=Posts.query.all()


    if('user' in session and session['user']=='admin'):

        return render_template('dashboard.html',posts=dashboardPosts)  
    if(request.method == 'POST'):

        username = request.form.get('uname')
        password = request.form.get('password')
        if(username == 'admin' and password == 'admin'):


            session['user']=username
            return render_template('dashboard.html',posts=dashboardPosts)  
        

    return render_template('login.html')

@app.route("/edit/<string:sno>",methods=['GET','POST'])
def edit(sno):
    post=Posts.query.filter_by(sno=sno).first()
    return render_template('edit.html',post=post)



 
app.run(debug=True,port=9000)
