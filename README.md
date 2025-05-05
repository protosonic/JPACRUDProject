# JPACRUDProject
## Local Trails Management System

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

## Getting Started

### 1. Clone the Repository
Clone the repository to your local machine:
- bash
- git clone https://github.com/your-username/local-trails-management.git
- cd local-trails-management
### 2. Build the Project
- gradle c;ean build
- gradle bootRun
### 3. Run
Once the application is running, you can access the applicaiton in your browser at:
- https://localhost:8082

---

## Testing
A JUnit test is included to test the persistence layer of the applciaiton. The test ensures that the LocalTrails entity is correctly mapper and saved to the database.



