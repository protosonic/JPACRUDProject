# JPACRUDProject
## Local Trails Management System
Welcome! Local Trails Managment System is full-stack application that enables users to break free from the crowd. This application empowers hikers and cyclysts alike to collect and manage their favorite local trail systems. Simple, easy, and effective Local Trail Management System will store your favorite trails, leaving your memory to be filled with all of your elevating adventures. Get outdoors!

## Description
This is a simple web application to manage local trails using Spring Boot, JSP, and Hibernate/JPA. Users can perform CRUD (Create, Read, Update, Delete) operations on a list of local trails, allowing for easy addition, viewing, editing, and deletion of trails.

### Features:
- **Home Page**: Display a simple homepage with navigation.
- **Show All Trails**: List all available trails in the system.
- **Create Trail**: Allow users to add new trails to the system.
- **Update Trail**: Users can update the details of an existing trail.
- **Delete Trail**: Users can delete a trail from the system.

---

## Tech Stack

- **Backend**: 
  - Java (Spring Boot, Spring MVC, Spring Data JPA)
  - Hibernate (for ORM)
- **Frontend**: 
  - JSP (Java Server Pages)
  - HTML
- **Database**: 
  - MySQL
  - JPA for database access
- **Build Tool**: Gradel
- **Testing**: JUnit for unit testing

---

## Lessons Learned
1. Importance of Entity Relationships and Mappings
  - Working with JPA and Hibernate was a fruitful opportunity to deepen my understanding of how Java classes map to a database table.
2. Challenges of Debugging Spring MVC Controller Logic
  -  Getting update and delete functionality to work correctly required deep attention to controller method signatures and form parameter bindings. I learned how critical method annotations and parameter names are in Spring MVC, especially when dealing with form submissions.


---
## Getting Started

### 1. Clone the Repository
Clone the repository to your local machine:
- bash
- git clone https://github.com/protosonic/JPACRUDProject
- cd JPACRUDProject
### 2. Build the Project
- gradle c;ean build
- gradle bootRun
### 3. Run
Once the application is running, you can access the applicaiton in your browser at:
- https://localhost:8082

---

## Testing
A JUnit test is included to test the persistence layer of the applciaiton. The test ensures that the LocalTrails entity is correctly mapper and saved to the database.



