from app import db

class CoEfficients(db.Model):
    __tablename__ = 'coefficients'
    id = db.Column(db.Integer(), primary_key=True)
    factor = db.Column(db.String())
    item = db.Column(db.String())
    coefficient_value = db.Column(db.Integer())

    def __init__(self, factor,item,coefficient_value):
        self.factor = factor
        self.item = item
        self.coefficient_value = coefficient_value
        

    def __repr__(self):
        return '<id {}>'.format(self.factor)

    def serialize(self):
        return {
            'factor': self.factor,
            'item' : self.item,
            'coeffiecint_value' : self.coefficient_value
        }



class Score(db.Model):
    __tablename__ = 'scores'
    id = db.Column(db.Integer(), primary_key=True)
    username = db.Column(db.String())
    item = db.Column(db.String())
    score = db.Column(db.Integer())

    def __init__(self, username,item,score):
        self.username = username
        self.item = item
        self.score = score
        

    def __repr__(self):
        return '<id {}>'.format(self.username)

    def serialize(self):
        return {
            'username': self.username,
            'item' : self.item,
            'score' : self.score
        }

class SecScore(db.Model): 
    __tablename__ = 'secondary_score'
    id = db.Column(db.Integer(), primary_key=True)
    username = db.Column(db.String())
    item = db.Column(db.String())
    score = db.Column(db.Integer())

    def __init__(self, username,item,score):
        self.username = username
        self.item = item
        self.score = score
        

    def __repr__(self):
        return '<id {}>'.format(self.username)

    def serialize(self):
        return {
            'username': self.username,
            'item' : self.item,
            'score' : self.score
        }


class Factors(db.Model):
    __tablename__ = 'factor'
    id = db.Column(db.Integer(), primary_key=True)
    f1 = db.Column(db.String())
    f2 = db.Column(db.String())
    f3 = db.Column(db.String())
    f4 = db.Column(db.String())
    f5 = db.Column(db.String())
    f6 = db.Column(db.String())

    def __init__(self, f1,f2,f3,f4,f5,f6):
        self.f1 = f1
        self.f2 = f2
        self.f3 = f3
        self.f4 = f4
        self.f5 = f5
        self.f6 = f6
        

    def __repr__(self):
        return '<id {}>'.format(self.id)

    def serialize(self):
        return {
            'F1': self.F1,
            'F2' : self.F2,
            'F3' : self.F3,
            'F4' : self.F4,
            'F5' : self.F5,
            'F6' : self.F6
        }