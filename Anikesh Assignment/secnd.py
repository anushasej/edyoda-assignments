class Student:
    def __init__(self,name,phy,chem,bio):
        self.name=name
        self.phy=phy
        self.chem= chem
        self.bio= bio
    def totalobtained(self):
        return self.phy + self.chem + self.bio
    def percentage(self):
        return((self.totalobtained())*100)/300
s = Student("ajay",88,67,99)
print(s.totalobtained())
print(s.percentage())
