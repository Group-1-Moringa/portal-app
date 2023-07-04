# db/seeds.rb

# Create instructors
instructor1 = Instructor.create(name: "Solomon Kitonyi", email: "solomon@example.com", password: "password")
instructor2 = Instructor.create(name: "Edwinna Bikeri", email: "edwinna@example.com", password: "password")
instructor3 = Instructor.create(name: "Anita Wanjiru", email: "anita@example.com", password: "password")

# Create admins
admin1 = Admin.create(name: "Admin User", email: "admin@example.com", password: "password")

# Create students
student1 = Student.create(name: "Mark Chweya", email: "mark@example.com", password: "password", enrollment_date: Date.today, instructor: instructor1, admin: admin1)
student2 = Student.create(name: "Nicole Sanaipei", email: "nicole@example.com", password: "password", enrollment_date: Date.today, instructor: instructor2, admin: admin1)
student3 = Student.create(name: "Ruperth Nyagesoa", email: "ruperth@example.com", password: "password", enrollment_date: Date.today, instructor: instructor3, admin: admin1)
student4 = Student.create(name: "Kazungu Phoebe", email: "kazungu@example.com", password: "password", enrollment_date: Date.today, instructor: instructor1, admin: admin1)
student5 = Student.create(name: "Perez Abel", email: "perez@example.com", password: "password", enrollment_date: Date.today, instructor: instructor2, admin: admin1)
student6 = Student.create(name: "Jeffrey Rowlings", email: "jeffrey@example.com", password: "password", enrollment_date: Date.today, instructor: instructor3, admin: admin1)
student7 = Student.create(name: "Rymond Julius", email: "raymond@example.com", password: "password", enrollment_date: Date.today, instructor: instructor1, admin: admin1)

# Create courses
course1 = Course.create(title: "Software Engineering", description: "Introduction to Software Engineering", start_date: Date.today, end_date: Date.today + 30, instructor: instructor1)
course2 = Course.create(title: "CyberSecurity", description: "Introduction to Cybersecurity", start_date: Date.today, end_date: Date.today + 30, instructor: instructor2)
course3 = Course.create(title: "Data Science", description: "Introduction to Data Science", start_date: Date.today, end_date: Date.today + 30, instructor: instructor3)

# Create enrollments
Enrollment.create(student: student1, course: course1)
Enrollment.create(student: student2, course: course1)
Enrollment.create(student: student3, course: course2)
Enrollment.create(student: student4, course: course2)
Enrollment.create(student: student5, course: course3)
Enrollment.create(student: student6, course: course3)
Enrollment.create(student: student7, course: course1)
