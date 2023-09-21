## AirBnB Clone - MySQL
  2 
  3 ## Overview
  4 The AirBnB Clone Project is a collaborative endeavor aimed at developing a web application that replicates the core functionality of Airbnb. This project will inv    olve the use of Python as the programming language, MySQL as the database management system, and SQLAlchemy as the Object-Relational Mapping (ORM) tool. The proje    ct will cover various aspects of software development, including database design, testing, documentation, and handling environment variables.
  5 
  6 ## Background Context
  7 In this project, environment variables play a crucial role in configuring the application. Here are the key environment variables to be used:
  8 
  9 HBNB_ENV: Specifies the running environment, which can be "dev" or "test" for the moment (with "production" support planned for the future).
 10 
 11 HBNB_MYSQL_USER: Represents the username for MySQL database access.
 12 
 13 HBNB_MYSQL_PWD: Contains the password for MySQL database access.
 14 
 15 HBNB_MYSQL_HOST: Specifies the hostname of the MySQL server.
 16 
 17 HBNB_MYSQL_DB: Indicates the database name for the MySQL database.
 18 
 19 HBNB_TYPE_STORAGE: Defines the type of storage to be used, which can be "file" (using FileStorage) or "db" (using DBStorage).
 20 
 21 ![AirBnB clone](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2018/6/65f4a1dd9c51265f49d0.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKI    ARDDGGGOUSBVO6H7D%2F20230920%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230920T191142Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=f31f74420b55    bbf88df1d82e517317af1ce10a1c1ea199ad667486a63915f11f)
 22 
 23 ![AirBnB clone - MySQL](https://s3.amazonaws.com/intranet-projects-files/concepts/74/hbnb_step2.png)
 24 
 25 ![AirBnB clone- DBStorage](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/daaef631636b40e0a279a8f240703e065f9d3481.jpg?X-Amz-Algorithm=AWS4-H    MAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230920%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230920T190834Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=ho    st&X-Amz-Signature=897f6796fbbe94dae9ab1fd79a3222badeed3a20cc213a9b7ec535631f48ba79)
 26 
 27 
 28 ## Table of Contents
 29 Unit Testing
 30 *args and **kwargs
 31 Named Arguments
 32 MySQL Database
 33 ORM (Object-Relational Mapping)
 34 Mapping Python Classes to MySQL Tables
 35 Handling Different Storage Engines
 36 Environment Variables
 37 Unit Testing<a name="unit-testing"></a>
 38 What is Unit Testing?
 39 Environment
 40 Installation
 41 File Descriptions
 42 Usage
 43 Examples of use
 44 
 45 Unit testing is a software testing technique where individual units or components of a program are tested in isolation to ensure they perform as expected. It help    s identify and fix bugs early in the development process.
 46 
 47 How to Implement it in a Large Project
 48 
 49 In this project, we implement unit testing using Python's unittest module. We organize test cases in separate files within a 'tests' folder, mirroring the project    's structure. Using the discover feature, we can run all tests or individual test files with python -m unittest discover tests.
 50 
 51 *args and **kwargs<a name="args-and-kwargs"></a>
 52 **What are *args and kwargs?
 53 
 54 *args: Allows you to pass a variable number of non-keyword arguments to a function.
 55 **kwargs: Allows you to pass a variable number of keyword arguments to a function.
 56 How to Use Them
 57 
 58 In this project, *args and **kwargs can be useful for handling variable-length argument lists in functions. For example, when creating a booking, you may use *arg    s to accept a variable number of guests and **kwargs for additional booking details like check-in date and duration.
 59 
 60 Named Arguments<a name="named-arguments"></a>
 61 How to Handle Named Arguments in a Function
 62 
 63 In Python, named arguments in a function are handled by specifying parameter names when calling the function. For example:
64 
 65 python
 66 Copy code
 67 def greet(name, age):
 68     print(f"Hello, {name}! You are {age} years old.")
 69 
 70 greet(name="Alice", age=30)
 71 In this project, we use named arguments to pass configuration parameters to functions, such as database connection details via environment variables.
 72 
 73 MySQL Database<a name="mysql-database"></a>
 74 How to Create a MySQL Database
 75 
 76 To create a MySQL database, you can use the following SQL statement:
 77 
 78 sql
 79 Copy code
 80 CREATE DATABASE mydatabase;
 81 In this project, we create a database to store accommodation, user, booking, and review data.
 82 
 83 How to Create a MySQL User and Grant Privileges
 84 
 85 To create a MySQL user and grant privileges, you can use SQL statements like:
 86 
 87 sql
 88 Copy code
 89 CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
 90 GRANT ALL PRIVILEGES ON mydatabase.* TO 'username'@'localhost';
 91 We follow best practices by storing credentials securely in environment variables (HBNB_MYSQL_USER, HBNB_MYSQL_PWD, etc.) to ensure database security.
 92 
 93 ORM (Object-Relational Mapping)<a name="orm"></a>
 94 What ORM Means
 95 
 96 ORM stands for Object-Relational Mapping. It's a technique that allows us to interact with a relational database using Python objects. SQLAlchemy is the ORM tool     used in this project.
 97 
 98 Mapping Python Classes to MySQL Tables<a name="mapping-classes"></a>
 99 How to Map a Python Class to a MySQL Table
100 
101 In SQLAlchemy, we define Python classes that represent database tables. We use SQLAlchemy's declarative base class and class attributes to map Python classes to c    orresponding database tables. Relationships, columns, and constraints are defined within these classes.
102 
103 Handling Different Storage Engines with the Same Codebase<a name="storage-engines"></a>
104 How to Handle 2 Different Storage Engines with the Same Codebase
105 
106 Our project supports two storage engines: file (using FileStorage) and database (using DBStorage). We use conditional logic and configuration settings to switch b    etween these storage engines. For example, based on the HBNB_TYPE_STORAGE environment variable, we determine whether to use the file storage or the database stora    ge implementation.
107 
108 Environment Variables<a name="environment-variables"></a>
109 How to Use Environment Variables
110 
111 
112 Environment variables play a crucial role in configuring the project. We use environment variables to store sensitive information like database credentials (HBNB_    MYSQL_USER, HBNB_MYSQL_PWD) and to control project behavior (HBNB_ENV, HBNB_TYPE_STORAGE).
113 
114 ## Environment
115 This project is interpreted/tested on Ubuntu 14.04 LTS using python3 (version 3.4.3)
116 
117 Installation
118 Clone this repository: git clone "https://github.com/besthor/AirBnB_clone.git"
119 Access AirBnb directory: cd AirBnB_clone
120 Run hbnb(interactively): ./console and enter command
121 Run hbnb(non-interactively): echo "<command>" | ./console.py
122 File Descriptions
123 console.py - the console contains the entry point of the command interpreter. List of commands this console current supports:
124 
125 EOF - exits console
126 quit - exits console
127 <emptyline> - overwrites default emptyline method and does nothing
128 create - Creates a new instance ofBaseModel, saves it (to the JSON file) and prints the id
129 destroy - Deletes an instance based on the class name and id (save the change into the JSON file).
130 show - Prints the string representation of an instance based on the class name and id.
131 all - Prints all string representation of all instances based or not on the class name.
132 update - Updates an instance based on the class name and id by adding or updating attribute (save the change into the JSON file).
133 models/ directory contains classes used for this project:
134 base_model.py - The BaseModel class from which future classes will be derived
135 
136 def __init__(self, *args, **kwargs) - Initialization of the base model
137 def __str__(self) - String representation of the BaseModel class
138 def save(self) - Updates the attribute updated_at with the current datetime
139 def to_dict(self) - returns a dictionary containing all keys/values of the instance
140 Classes inherited from Base Model:
141 
142 amenity.py
143 city.py
144 place.py
145 review.py
146 state.py
147 user.py
148 /models/engine directory contains File Storage class that handles JASON serialization and deserialization :
149 file_storage.py - serializes instances to a JSON file & deserializes back to instances
150 
151 def all(self) - returns the dictionary __objects
152 def new(self, obj) - sets in __objects the obj with key .id
153 def save(self) - serializes __objects to the JSON file (path: __file_path)
154  def reload(self) - deserializes the JSON file to __objects
155 /tests directory contains all unit test cases for this project:
156 /test_models/test_base_model.py - Contains the TestBaseModel and TestBaseModelDocs classes TestBaseModelDocs class:
157 
158 def setUpClass(cls)- Set up for the doc tests
159 def test_pep8_conformance_base_model(self) - Test that models/base_model.py conforms to PEP8
160 def test_pep8_conformance_test_base_model(self) - Test that tests/test_models/test_base_model.py conforms to PEP8
161 def test_bm_module_docstring(self) - Test for the base_model.py module docstring
162 def test_bm_class_docstring(self) - Test for the BaseModel class docstring
163 def test_bm_func_docstrings(self) - Test for the presence of docstrings in BaseModel methods
164 TestBaseModel class:
165 
166 def test_is_base_model(self) - Test that the instatiation of a BaseModel works
167 def test_created_at_instantiation(self) - Test created_at is a pub. instance attribute of type datetime
168 def test_updated_at_instantiation(self) - Test updated_at is a pub. instance attribute of type datetime
169 def test_diff_datetime_objs(self) - Test that two BaseModel instances have different datetime objects
170 /test_models/test_amenity.py - Contains the TestAmenityDocs class:
171 
172 def setUpClass(cls) - Set up for the doc tests
173 def test_pep8_conformance_amenity(self) - Test that models/amenity.py conforms to PEP8
174 def test_pep8_conformance_test_amenity(self) - Test that tests/test_models/test_amenity.py conforms to PEP8
175 def test_amenity_module_docstring(self) - Test for the amenity.py module docstring
176 def test_amenity_class_docstring(self) - Test for the Amenity class docstring
177 /test_models/test_city.py - Contains the TestCityDocs class:
178 
179 def setUpClass(cls) - Set up for the doc tests
180 def test_pep8_conformance_city(self) - Test that models/city.py conforms to PEP8
181 def test_pep8_conformance_test_city(self) - Test that tests/test_models/test_city.py conforms to PEP8
182 def test_city_module_docstring(self) - Test for the city.py module docstring
183 def test_city_class_docstring(self) - Test for the City class docstring
184 /test_models/test_file_storage.py - Contains the TestFileStorageDocs class:
185 
186 def setUpClass(cls) - Set up for the doc tests
187 def test_pep8_conformance_file_storage(self) - Test that models/file_storage.py conforms to PEP8
188 def test_pep8_conformance_test_file_storage(self) - Test that tests/test_models/test_file_storage.py conforms to PEP8
189 def test_file_storage_module_docstring(self) - Test for the file_storage.py module docstring
190 def test_file_storage_class_docstring(self) - Test for the FileStorage class docstring
191 /test_models/test_place.py - Contains the TestPlaceDoc class:
192 
193 def setUpClass(cls) - Set up for the doc tests
194 def test_pep8_conformance_place(self) - Test that models/place.py conforms to PEP8.
195 def test_pep8_conformance_test_place(self) - Test that tests/test_models/test_place.py conforms to PEP8.
196 def test_place_module_docstring(self) - Test for the place.py module docstring
197 def test_place_class_docstring(self) - Test for the Place class docstring
198 /test_models/test_review.py - Contains the TestReviewDocs class:
199 
200 def setUpClass(cls) - Set up for the doc tests
201 def test_pep8_conformance_review(self) - Test that models/review.py conforms to PEP8
202 def test_pep8_conformance_test_review(self) - Test that tests/test_models/test_review.py conforms to PEP8
203 def test_review_module_docstring(self) - Test for the review.py module docstring
204 def test_review_class_docstring(self) - Test for the Review class docstring
205 /test_models/state.py - Contains the TestStateDocs class:
206 
207 def setUpClass(cls) - Set up for the doc tests
208 def test_pep8_conformance_state(self) - Test that models/state.py conforms to PEP8
209 def test_pep8_conformance_test_state(self) - Test that tests/test_models/test_state.py conforms to PEP8
210 def test_state_module_docstring(self) - Test for the state.py module docstring
211 def test_state_class_docstring(self) - Test for the State class docstring
212 /test_models/user.py - Contains the TestUserDocs class:
213 
214 def setUpClass(cls) - Set up for the doc tests
215 def test_pep8_conformance_user(self) - Test that models/user.py conforms to PEP8
216 def test_pep8_conformance_test_user(self) - Test that tests/test_models/test_user.py conforms to PEP8
217 def test_user_module_docstring(self) - Test for the user.py module docstring
218 def test_user_class_docstring(self) - Test for the User class docstring
219 Examples of use
220 vagrantAirBnB_clone$./console.py
221 (hbnb) help
222 
223 Documented commands (type help <topic>):
224 ========================================
225 EOF  all  create  destroy  help  quit  show  update
226 
227 (hbnb) all MyModel
228 ** class doesn't exist **
229 (hbnb) create BaseModel
230 7da56403-cc45-4f1c-ad32-bfafeb2bb050
231 (hbnb) all BaseModel
232 [[BaseModel] (7da56403-cc45-4f1c-ad32-bfafeb2bb050) {'updated_at': datetime.datetime(2017, 9, 28, 9, 50, 46, 772167), 'id': '7da56403-cc45-4f1c-ad32-bfafeb2bb050'    , 'created_at': datetime.datetime(2017, 9, 28, 9, 50, 46, 772123)}]
233 (hbnb) show BaseModel 7da56403-cc45-4f1c-ad32-bfafeb2bb050
234 [BaseModel] (7da56403-cc45-4f1c-ad32-bfafeb2bb050) {'updated_at': datetime.datetime(2017, 9, 28, 9, 50, 46, 772167), 'id': '7da56403-cc45-4f1c-ad32-bfafeb2bb050',     'created_at': datetime.datetime(2017, 9, 28, 9, 50, 46, 772123)}
235 (hbnb) destroy BaseModel 7da56403-cc45-4f1c-ad32-bfafeb2bb050
236 (hbnb) show BaseModel 7da56403-cc45-4f1c-ad32-bfafeb2bb050
237 ** no instance found **
238 (hbnb) quit

This repository contains the initial stage of a student project to build a clone of the AirBnB website. This stage implements a backend interface, or console, to manage program data. Console commands allow the user to create, update, and destroy objects, as well as manage file storage. Using a system of JSON serialization/deserialization, storage is persistent between sessions.

---

<center><h3>Repository Contents by Project Task</h3> </center>

| Tasks | Files | Description |
| ----- | ----- | ------ |
| 0: Authors/README File | [AUTHORS] (https://github.com/imendy/AirBnB_clone_v2/blob/master/AUTHORS) | Project authors |
| 1: Pep8 | N/A | All code is pep8 compliant|
| 2: Unit Testing | [/tests](https://github.com/imendy/AirBnB_clone_v2/tree/master/tests) | All class-defining modules are unittested |
| 3. Make BaseModel | [/models/base_model.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/models/base_model.py) | Defines a parent class to be inherited by all model classes|
| 4. Update BaseModel w/ kwargs | [/models/base_model.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/models/base_model.py) | Add functionality to recreate an instance of a class from a dictionary representation|
| 5. Create FileStorage class | [/models/engine/file_storage.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/models/engine/file_storage.py) [/models/_ _init_ _.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/models/__init__.py) [/models/base_model.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/models/base_model.py) | Defines a class to manage persistent file storage system|
| 6. Console 0.0.1 | [console.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/console.py) | Add basic functionality to console program, allowing it to quit, handle empty lines and ^D |
| 7. Console 0.1 | [console.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/console.py) | Update the console with methods allowing the user to create, destroy, show, and update stored data |
| 8. Create User class | [console.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/console.py) [/models/engine/file_storage.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/models/engine/file_storage.py) [/models/user.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/models/user.py) | Dynamically implements a user class |
| 9. More Classes | [/models/user.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/models/user.py) [/models/place.py](https://github.com/imendy/AirBnB_clone_v2/blob/master/models/place.py) [/models/city.py](https://github.com/imendy/AirBnB_clone/blob/models/city.py) [/models/amenity.py](https://github.com/imendy/AirBnB_clone/blob/models/amenity.py) [/models/state.py](https://github.com/imendy/AirBnB_clone/blob/models/state.py) [/models/review.py](https://github.com/imendy/AirBnB_clone/blob/models/review.py) | Dynamically implements more classes |
| 10. Console 1.0 | [console.py](https://github.com/imendy/AirBnB_clone/blob/console.py) [/models/engine/file_storage.py](https://github.com/imendy/AirBnB_clone/blob/models/engine/file_storage.py) | Update the console and file storage system to work dynamically with all  classes update file storage |
<br>
<br>
<center> <h2>General Use</h2> </center>

1. First clone this repository.

3. Once the repository is cloned locate the "console.py" file and run it as follows:
```
/AirBnB_clone$ ./console.py
```
4. When this command is run the following prompt should appear:
```
et paste
ihbnb)
```
5. This prompt designates you are in the "HBnB" console. There are a variety of commands available within the console program.

##### Commands
    * create - Creates an instance based on given class

    * destroy - Destroys an object based on class and UUID

    * show - Shows an object based on class and UUID

    * all - Shows all objects the program has access to, or all objects of a given class

    * update - Updates existing attributes an object based on class name and UUID

    * quit - Exits the program (EOF will as well)


##### Alternative Syntax
Users are able to issue a number of console command using an alternative syntax:

	Usage: <class_name>.<command>([<id>[name_arg value_arg]|[kwargs]])
Advanced syntax is implemented for the following commands: 

    * all - Shows all objects the program has access to, or all objects of a given class

	* count - Return number of object instances by class

    * show - Shows an object based on class and UUID

	* destroy - Destroys an object based on class and UUID

    * update - Updates existing attributes an object based on class name and UUID

<br>
<br>
<center> <h2>Examples</h2> </center>
<h3>Primary Command Syntax</h3>

###### Example 0: Create an object
Usage: create <class_name>
```
(hbnb) create BaseModel
```
```
(hbnb) create BaseModel
3aa5babc-efb6-4041-bfe9-3cc9727588f8
(hbnb)                   
```
###### Example 1: Show an object
Usage: show <class_name> <_id>

```
(hbnb) show BaseModel 3aa5babc-efb6-4041-bfe9-3cc9727588f8
[BaseModel] (3aa5babc-efb6-4041-bfe9-3cc9727588f8) {'id': '3aa5babc-efb6-4041-bfe9-3cc9727588f8', 'created_at': datetime.datetime(2020, 2, 18, 14, 21, 12, 96959), 
'updated_at': datetime.datetime(2020, 2, 18, 14, 21, 12, 96971)}
(hbnb)  
```
###### Example 2: Destroy an object
Usage: destroy <class_name> <_id>
```
(hbnb) destroy BaseModel 3aa5babc-efb6-4041-bfe9-3cc9727588f8
(hbnb) show BaseModel 3aa5babc-efb6-4041-bfe9-3cc9727588f8
** no instance found **
(hbnb)   
```
###### Example 3: Update an object
Usage: update <class_name> <_id>
```
(hbnb) update BaseModel b405fc64-9724-498f-b405-e4071c3d857f first_name "person"
(hbnb) show BaseModel b405fc64-9724-498f-b405-e4071c3d857f
[BaseModel] (b405fc64-9724-498f-b405-e4071c3d857f) {'id': 'b405fc64-9724-498f-b405-e4071c3d857f', 'created_at': datetime.datetime(2020, 2, 18, 14, 33, 45, 729889), 
'updated_at': datetime.datetime(2020, 2, 18, 14, 33, 45, 729907), 'first_name': 'person'}
(hbnb)
```
<h3>Alternative Syntax</h3>

###### Example 0: Show all User objects
Usage: <class_name>.all()
```
(hbnb) User.all()
["[User] (99f45908-1d17-46d1-9dd2-b7571128115b) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 34, 92071), 'id': '99f45908-1d17-46d1-9dd2-b7571128115b', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 34, 92056)}", "[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
```

###### Example 1: Destroy a User
Usage: <class_name>.destroy(<_id>)
```
(hbnb) User.destroy("99f45908-1d17-46d1-9dd2-b7571128115b")
(hbnb)
(hbnb) User.all()
(hbnb) ["[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
```
###### Example 2: Update User (by attribute)
Usage: <class_name>.update(<_id>, <attribute_name>, <attribute_value>)
```
(hbnb) User.update("98bea5de-9cb0-4d78-8a9d-c4de03521c30", name "Todd the Toad")
(hbnb)
(hbnb) User.all()
(hbnb) ["[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'name': 'Todd the Toad', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
```
###### Example 3: Update User (by dictionary)
Usage: <class_name>.update(<_id>, <dictionary>)
```
(hbnb) User.update("98bea5de-9cb0-4d78-8a9d-c4de03521c30", {'name': 'Fred the Frog', 'age': 9})
(hbnb)
(hbnb) User.all()
(hbnb) ["[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'name': 'Fred the Frog', 'age': 9, 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
```
<br>
