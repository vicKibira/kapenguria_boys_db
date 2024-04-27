**kapenguria Boys High School Database Project**

**Introduction**

This project aims to create a small database for Kapenguria Boys High School, an imaginary institution, using PostgreSQL. The database consists of eight tables: attendance, class, course, enrollment, fee, grades, students, and teachers. The goal is to containerize the PostgreSQL server using Docker, model the data using DBT (Data Build Tool), and visualize analyses through a simple dashboard named "School Insights Hub" using Metabase.

**Tools Used**

PostgreSQL: An open-source relational database management system.

Docker: A containerization platform used to containerize the PostgreSQL server.

DBT (Data Build Tool): An analytics engineering tool used for modeling data.

Metabase: An open-source data visualization tool used to create the dashboard.

**Getting Started**

To set up the project, follow these steps:
- Install Docker on your system if not already installed.Follow this link https://docs.docker.com/desktop/install/linux-install/  
 for installation instructions
- Clone the project repository:
  
   ```git clone https://github.com/vicKibira/kapenguria_boys_db.git```
- Navigate to the project directory:
   ```cd kapenguria_boys_db
   
- Run Docker to set up the PostgreSQL server container:
   ```cd postgres_setup docker-compose up -d
   
- Execute the SQL script in PostgreSQL by navigating to the pgAdmin GUI at localhost:5050.
  
- Use DBT to model the data in the PostgreSQL database:
  ```cd analytics/kape_boys dbt run
- Set up Metabase to visualize the data and create the dashboard.
  
**Usage**

Once the setup is complete, you can use the following resources:
PostgreSQL Database: Access the database to query and manage the school data.
Metabase Dashboard: Visualize analyses and insights from the school data.

**Dashboard Link**

 You can access the "School Insights Hub" dashboard through the following link: 
  http://localhost:3000/public/dashboard/b089b371-ac53-4d0e-8fe9-79059de31ca8

**License**

This project is licensed under the MIT License - see the LICENSE.md file for details.

