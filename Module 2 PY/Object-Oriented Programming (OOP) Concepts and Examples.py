# Step 1: student class and object creation

class student:
    def __init__(self,name,roll_number):
        self.name=name
        self.roll_number=roll_number
detail1=student("sadvika",1)
detail2=student("alli",2)
detail3=student("uma",3)
detail4=student("srivalli",4)
print(f"{detail1.name},{detail1.roll_number}")
print(f"{detail2.name},{detail2.roll_number}")
print(f"{detail3.name},{detail3.roll_number}")
print(f"{detail4.name},{detail4.roll_number}")

# Step 2: rectangle class and area calculation

class rectangle:
    len=int(input("enter the lenght of the rectangle: "))
    bdt=int(input("enter the breadth of the rectangle: "))

    def area(self):
        print("area of rectangle is: ",self.len * self.bdt)

a=rectangle()
print(a.len)
print(a.bdt)
a.area()

# Step 3: circle class and circumference/area calculation

class circle:
    r=int(input("enter the radius of the circle: "))
    pi=3.14
    cir=2*pi*r
    ar=pi*r*r
    def circumference(self):
        print("circumference of the circle is: ",self.cir)

    def area(self,):
        print("area of circle: ",self.ar)

c=circle()
print(c.r)
print(c.pi)
c.circumference()
c.area()

# Step 4: employee class and object creatio

class employee:
    company_name="abc"
    def __init__(self,name,salary):
        self.name=name
        self.salary=salary
print(f"company Name: {employee.company_name}")
emp1=employee("alli",100000)
emp2=employee("uma",200000)
print(f"{emp1.name},{emp1.salary}")
print(f"{emp2.name},{emp2.salary}")

# Step 5: Animal and Dog classes demonstrating inheritance

class Animal:
    def sound(Self):
        return"sound"

class Dog(Animal):
    def sound(self):
        return"Bark"

dog=Dog()
print(dog.sound())


# Step 6: book class and comparison method

class book:
    def __init__(self,title,author):
        self.title=title
        self.author=author
    
    def is_same_author(self, other_book):
        return self.author == other_book.author

book1=book("Book A","Author L")
book2=book("Book B","Author k")
book3=book("Book C","Author L")

print(book1.is_same_author(book2))
print(book1.is_same_author(book3))