import os
from flask import Flask, request, jsonify, url_for, render_template, redirect, flash
from flask_sqlalchemy import SQLAlchemy


app = Flask(__name__)

app.config.from_object(os.environ['APP_SETTINGS'])
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

from models import Score, SecScore, Factors

@app.route("/")
def health_check():
    return "The server is up and running!!"

@app.route("/home")
def home():
    scores = Score.query.all()
    return render_template("index.html", scores = scores)

@app.route("/getscores")
def get_scores():
    score= []
    try:
        users=Score.query.all()
        for user in users:
            print(user)
            score.append(user)
        return  jsonify([e.serialize() for e in users])
    except Exception as e:
	    return(str(e))

@app.route("/loadsecondaryscores")
def load_secondary_score():
    print("ekseeeee")
   
    users =[]
    try:
        users=Score.query.all()
        for user in users:
            factors = Factors.query.all()
            for factor in factors:
                print(factor)
            for item in factors:               
                f1 = item[0]
                f2 = item[1]
                f3 = item[2]
                f4 = item[3] 
                f5 = item[4]
                f6 = item[5] 
                for i in f1:                     
                    score = i[0]
                    item = i[2]     
                    username = Factors.query.filter_by(item=item).first()
                    try:
                        secScore = SecScore(
                            score = score,
                            item = item,
                            username = username
                        )
                        db.session.add(secScore)  #sending to db
                        db.session.commit() #saving
                        print("Successful added Score")
                    except Exception as e:
                        return(str(e))

                for i in f2:
                    score = i[0]
                    item = i[2]
                    username = Factors.query.filter_by(item=item).first()
                    try:
                        secScore=SecScore(
                            score = score,
                            item = item,
                            username = username
                        )
                        db.session.add(secScore)
                        db.session.commit()
                        print("Successful added Score")
                    except Exception as e:
                        return(str(e))
                for i in f3:
                    score = i[0]
                    item = i[2]
                    username = Factors.query.filter_by(item=item).first()
                    try:
                        secScore=SecScore(
                            score = score,
                            item = item,
                            username = username
                        )
                        db.session.add(secScore)
                        db.session.commit()
                        print("Successful added Score")
                    except Exception as e:
                        return(str(e))
                for i in f4:
                    score = i[0]
                    item = i[2]
                    username = Factors.query.filter_by(item=item).first()
                    try:
                        secScore=SecScore(
                            score = score,
                            item = item,
                            username = username
                        )
                        db.session.add(secScore)
                        db.session.commit()
                        print("Successful added Score")
                    except Exception as e:
                        return(str(e))

                for i in f5:
                    score = i[0]
                    item = i[2]
                    username = Factors.query.filter_by(item=item).first()
                    try:
                        secScore=SecScore(
                            score = score,
                            item = item,
                            username = username
                        )
                        db.session.add(secScore)
                        db.session.commit()
                        print("Successful added Score")
                    except Exception as e:
                        return(str(e))

                for i in f6:
                    score = i[0]
                    item = i[2]
                    username = Factors.query.filter_by(item=item).first()
                    try:
                        secScore=SecScore(
                            score = score,
                            item = item,
                            username = username
                        )
                        db.session.add(secScore)
                        db.session.commit()
                        print("Successful added Score")
                    except Exception as e:
                        return(str(e))

        factors = Factors.query.all()
        user=Score.query.filter_by(id=id).first()
        return jsonify(user.serialize())
    except Exception as e:
	    return(str(e))


if __name__ == '__main__':
    app.run()
